// lib/feature/cars/presentation/screens/car_details_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:fleetride/core/appbar/appbar.dart';
import 'package:fleetride/core/buttons/fleetridebuttons.dart';
import 'package:fleetride/core/colors/color.dart';

import '../../domain/model/cars_details_model.dart';
import '../bloc/cars_bloc.dart';
import '../../../auth/presentation/bloc/authentication_bloc.dart';
import 'package:fleetride/core/router/app_routes.dart';

class CarDetailsScreen extends StatefulWidget {
  final String carName; // routed as /cars/:name
  const CarDetailsScreen({super.key, required this.carName});

  @override
  State<CarDetailsScreen> createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  final _page = PageController();

  @override
  Widget build(BuildContext context) {
    // Read the selected car from Bloc by name
    final CarsDetailsModel car = context.select(
      (CarsBloc b) => b.state.all.firstWhere((c) => c.name == widget.carName),
    );

    // Auth check
    final bool isAuthed = context.select(
      (AuthenticationBloc b) => b.state.isAuthenticated,
    );

    // Prepare data
    final String title = '${car.brand}\n${car.name}';
    final List<String> heroImages = car.image; // header pager
    final List<String> galleryImages = (car.gallery.isNotEmpty)
        ? car.gallery
        : car.image; // gallery tab
    const double rating = 4.5;
    final int pricePerDay = car.price.round();

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: FleetrideColors.black1,
        appBar: FleetrideAppBar(
          shouldPop: true,
          color: const Color(0xFF3A3A3A),
          title: '',
          noIcon: true,
        ),
        body: Column(
          children: [
            _Header(
              title: title,
              images: heroImages,
              controller: _page,
              isFavorite: car.isFavorite,
              rating: rating,
              onFavorite: () => context.read<CarsBloc>().add(
                CarsEvent.toggleFavorite(car.name),
              ),
            ),

            _CarInfoStrip(
              passengers: 2,
              fuel: 'Fuel',
              seats: '2 seats',
              transmission: 'Manual',
              doors: '2 Doors',
              location: 'Port Harcourt',
            ),

            const _Tabs(),

            Expanded(
              child: TabBarView(
                children: [
                  _AboutTab(description: car.description),
                  _GalleryTab(urls: galleryImages), // ← uses car.gallery
                  const _ReviewTab(),
                ],
              ),
            ),

            _PriceAndCTA(
              pricePerDay: pricePerDay,
              onBook: () {
                if (!isAuthed) {
                  context.push('/auth/signin');
                  return;
                }
                context.push('/booking/${Uri.encodeComponent(car.name)}');
              },
            ),
          ],
        ),
      ),
    );
  }
}

/// HEADER: gradient, brand/name (top-left), heart (top-right), pager + dots, rating row
class _Header extends StatefulWidget {
  final String title; // "Porsche\n718 Cayman"
  final List<String> images;
  final PageController controller;
  final bool isFavorite;
  final double rating;
  final VoidCallback onFavorite;

  const _Header({
    required this.title,
    required this.images,
    required this.controller,
    required this.isFavorite,
    required this.rating,
    required this.onFavorite,
  });

  @override
  State<_Header> createState() => _HeaderState();
}

class _HeaderState extends State<_Header> {
  int _index = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      if (widget.controller.hasClients) {
        widget.controller.jumpToPage(0);
      }
    });

    widget.controller.addListener(() {
      final p = widget.controller.page ?? 0;
      final newIdx = p.round();
      if (newIdx != _index && mounted) setState(() => _index = newIdx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF3A3A3A), Color(0xFF1B1B1B)],
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
      ),
      padding: const EdgeInsets.fromLTRB(15, 6, 12, 6),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  widget.title,
                  style: const TextStyle(
                    color: Colors.white,
                    height: 1.3,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              IconButton(
                onPressed: widget.onFavorite,
                icon: Icon(
                  widget.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
            ],
          ),

          const SizedBox(height: 6),

          // shorter hero: make the height smaller by using a larger aspect ratio
          AspectRatio(
            aspectRatio: 16 / 6, // was 16/7 → this is a bit shorter
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: PageView.builder(
                controller: widget.controller,
                itemCount: widget.images.length,
                itemBuilder: (_, i) => Center(
                  // shrink the car without adding any background
                  child: FractionallySizedBox(
                    widthFactor: 0.88, // 0.85–0.92 looks nice
                    child: _SmartImage(widget.images[i]), // uses BoxFit.contain
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 8),

          Row(
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 18),
              const SizedBox(width: 6),
              Text(
                widget.rating.toStringAsFixed(1),
                style: const TextStyle(color: Colors.white70),
              ),
              const Spacer(),
              _Dots(
                count: widget.images.length,
                index: _index,
                onDotTap: (i) => widget.controller.animateToPage(
                  i,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Dots extends StatelessWidget {
  final int count;
  final int index;
  final void Function(int i)? onDotTap;
  const _Dots({required this.count, required this.index, this.onDotTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(count, (i) {
        final wide = i == index;
        final dot = AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          margin: const EdgeInsets.symmetric(horizontal: 3),
          width: wide ? 16 : 6,
          height: 6,
          decoration: BoxDecoration(
            color: wide ? Colors.white : Colors.white24,
            borderRadius: BorderRadius.circular(3),
          ),
        );
        return onDotTap == null
            ? dot
            : GestureDetector(onTap: () => onDotTap!(i), child: dot);
      }),
    );
  }
}

/// Small helper that accepts either a network URL or an asset path
class _SmartImage extends StatelessWidget {
  final String src;
  const _SmartImage(this.src);

  @override
  Widget build(BuildContext context) {
    final isNet = src.startsWith('http');
    final Widget placeholder = Container(
      color: Colors.white10,
      alignment: Alignment.center,
      child: const Icon(Icons.directions_car, color: Colors.white54),
    );

    return isNet
        ? Image.network(
            src,
            fit: BoxFit.contain,
            errorBuilder: (_, err, __) {
              // ignore: avoid_print
              print('NETWORK IMAGE ERROR for $src -> $err');
              return placeholder;
            },
          )
        : Image.asset(
            src,
            fit: BoxFit.contain,
            errorBuilder: (_, err, __) {
              // ignore: avoid_print
              print('ASSET IMAGE ERROR for $src -> $err');
              return placeholder;
            },
          );
  }
}

/// CAR INFO STRIP (icons + texts)
class _CarInfoStrip extends StatelessWidget {
  final int passengers;
  final String fuel;
  final String seats;
  final String transmission;
  final String doors;
  final String location;
  const _CarInfoStrip({
    required this.passengers,
    required this.fuel,
    required this.seats,
    required this.transmission,
    required this.doors,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    Widget item(IconData icon, String text) => Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: Colors.white70),
        const SizedBox(width: 6),
        Text(text, style: const TextStyle(color: Colors.white70, fontSize: 12)),
      ],
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.white12)),
        color: FleetrideColors.black1,
      ),
      child: Wrap(
        spacing: 18,
        runSpacing: 10,
        children: [
          item(Icons.people_alt, '$passengers Passengers'),
          item(Icons.local_gas_station, fuel),
          item(Icons.event_seat, seats),
          item(Icons.settings, transmission),
          item(Icons.door_front_door_outlined, doors),
          item(Icons.place_outlined, location),
        ],
      ),
    );
  }
}

/// TABS
class _Tabs extends StatelessWidget {
  const _Tabs();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: FleetrideColors.black1,
      child: const TabBar(
        indicatorColor: Colors.white,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white54,
        tabs: [
          Tab(text: 'About'),
          Tab(text: 'Gallery'),
          Tab(text: 'Review'),
        ],
      ),
    );
  }
}

/// ABOUT TAB
class _AboutTab extends StatelessWidget {
  final String description;
  const _AboutTab({required this.description});
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      children: [
        const Text(
          'Overview',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: const TextStyle(color: Colors.white70, height: 1.5),
        ),
      ],
    );
  }
}

/// GALLERY TAB (compact, shows up to 6 images in a 3x2 grid)
//// GALLERY TAB (with side padding + rectangular tiles)
class _GalleryTab extends StatelessWidget {
  final List<String> urls;
  const _GalleryTab({required this.urls});

  @override
  Widget build(BuildContext context) {
    final items = urls.length > 6 ? urls.sublist(0, 6) : urls;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ), // left & right spacing
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 3 across
          crossAxisSpacing: 12, // space between columns
          mainAxisSpacing: 12, // space between rows
          childAspectRatio: 0.9, // makes tiles slightly taller (rectangular)
        ),
        itemBuilder: (_, i) => ClipRRect(
          borderRadius: BorderRadius.circular(12), // rounded edges
          child: Image.asset(
            items[i],
            fit: BoxFit.cover, // crop to fill evenly
          ),
        ),
      ),
    );
  }
}

/// REVIEW TAB
class _ReviewTab extends StatelessWidget {
  const _ReviewTab();

  Widget bar(String label, double value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          SizedBox(
            width: 130,
            child: Text(label, style: const TextStyle(color: Colors.white70)),
          ),
          Expanded(
            child: Container(
              height: 8,
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(4),
              ),
              child: FractionallySizedBox(
                widthFactor: (value / 5).clamp(0, 1),
                alignment: Alignment.centerLeft,
                child: Container(
                  decoration: BoxDecoration(
                    color: FleetrideColors.yellow2,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            value.toStringAsFixed(1),
            style: const TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      children: [
        Row(
          children: const [
            Icon(Icons.star, color: Colors.amber),
            SizedBox(width: 6),
            Text('4.5', style: TextStyle(color: Colors.white)),
          ],
        ),
        const SizedBox(height: 16),
        bar('Cleanliness', 5.0),
        bar('Maintaince', 5.0),
        bar('Communication', 4.9),
        bar('Convenience', 5.0),
        bar('Listing Accuracy', 5.0),
      ],
    );
  }
}

/// PRICE + CTA
class _PriceAndCTA extends StatelessWidget {
  final int pricePerDay;
  final VoidCallback onBook;
  const _PriceAndCTA({required this.pricePerDay, required this.onBook});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: FleetrideColors.black1,
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 22),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Price', style: TextStyle(color: Colors.white54)),
            ],
          ),
          const SizedBox(width: 8),
          Text(
            '\$$pricePerDay/day',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 20,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 170,
            child: FleetrideButtons(
              context: context,
              text: 'Book Now',
              color: FleetrideColors.buttonColor,
              textColor: FleetrideColors.white,
              onTap: onBook,
            ).normal(),
          ),
        ],
      ),
    );
  }
}
