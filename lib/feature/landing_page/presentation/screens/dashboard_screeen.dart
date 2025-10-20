import 'dart:async';

import 'package:fleetride/feature/landing_page/presentation/utils/location_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:fleetride/core/appbar/font.dart';
import 'package:fleetride/core/colors/color.dart';
import 'package:fleetride/core/router/app_routes.dart';
import 'package:fleetride/feature/cars/domain/model/cars_details_model.dart';
import 'package:fleetride/feature/cars/presentation/bloc/cars_bloc.dart';
import 'package:fleetride/feature/landing_page/presentation/utils/car_widget.dart';
import 'package:fleetride/feature/landing_page/presentation/utils/cars.dart';
import 'package:fleetride/feature/landing_page/presentation/utils/footer_widget.dart';
import 'package:fleetride/gen/assets.gen.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final double horizontalPadding = 16.0;

  final List<String> imagePaths = [
    Assets.images.image1526487017D4nHpYcQEqJIECHp7VuoM7UR9XJw8GdGB0wdshls.path,
    Assets.images.ferrariLogo98555.path,
    Assets.images.cadillacLogo.path,
    Assets.images.logoRollsRoyce3840.path,
    Assets.images.carLogosMercedesBenz.path,
    Assets.images.carLogosPorsche.path,
  ];
PageController _pageController = PageController(viewportFraction: 0.85);
int _currentPage = 0;
late final Timer _autoScrollTimer;
  

  
  String? pickupLocation;
  String? dropoffLocation;
  DateTime? dateTime;

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
    context.push(routes[index]);
  }

  Future<void> _selectLocation(bool isPickup) async {
    final result = await showModalBottomSheet<String>(
      context: context,
      builder: (_) => LocationPicker(),
    );
    if (result != null) {
      setState(() {
        if (isPickup) {
          pickupLocation = result;
          dropoffLocation = null;
          dateTime = null;
        } else {
          dropoffLocation = result;
          dateTime = null;
        }
      });
    }
  }

  Future<void> _selectDateTime() async {
    final now = DateTime.now();
    final selected = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now,
      lastDate: now.add(const Duration(days: 365)),
    );

    if (selected != null) {
      final time = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (time != null) {
        setState(() {
          dateTime = DateTime(
            selected.year,
            selected.month,
            selected.day,
            time.hour,
            time.minute,
          );
        });
      }
    }
  }

  @override
void initState() {
  super.initState();

  _autoScrollTimer = Timer.periodic(const Duration(seconds: 2), (Timer timer) {
    if (_pageController.hasClients) {
      if (_currentPage < ads.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  });
}

@override
void dispose() {
  _autoScrollTimer.cancel();
  _pageController.dispose();
  super.dispose();
}

@override
Widget build(BuildContext context) {
  final models = context.select((CarsBloc b) => b.state.visible);

  return AnnotatedRegion<SystemUiOverlayStyle>(
    value: const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      statusBarColor: Colors.transparent,
    ),
    child: Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        titleSpacing: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(Assets.images.logo.path),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Jack William",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Welcome back 👋",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: horizontalPadding),
            child: ClipOval(
              child: Container(
                color: FleetrideColors.white2,
                child: IconButton(
                  icon: const Icon(Icons.notifications_rounded, color: Colors.black),
                  onPressed: () => context.push("/landing/notification"),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Book your ride",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 24),

              // === STEP 1: Location Tiles ===
              _selectionTile(
                label: "Pickup Location",
                value: pickupLocation,
                icon: Icons.location_on,
                onTap: () => _selectLocation(true),
              ),
              const SizedBox(height: 12),

              if (pickupLocation != null)
                _selectionTile(
                  label: "Dropoff Location",
                  value: dropoffLocation,
                  icon: Icons.location_on_outlined,
                  onTap: () => _selectLocation(false),
                ),

              if (pickupLocation != null && dropoffLocation != null) ...[
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () => context.push("/cars"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: FleetrideColors.buttonColor,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    icon: const Icon(Icons.search, color: Colors.white),
                    label: const Text(
                      "Find Available Ride",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
  const SizedBox(height: 20),
              // === Available Cars CTA ===
              InkWell(
                onTap: () => const AvailableScreenRoute().push(context),
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: FleetrideColors.grey8,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Available Cars",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              "Browse our selection of available vehicles for your journey.",
                              style: TextStyle(fontSize: 14, color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Image.asset(
                        Assets.images.car.path,
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),

           
              const SizedBox(height: 12),
              SizedBox(
                height: 90,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: carsRendering.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 16),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        CarsRoute().push(context);
                      },
                      child: Container(
                        width: 80,
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: FleetrideColors.grey8,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.03),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              carsRendering[index].icon,
                              height: 30,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(height: 6),
                            Text(
                              carsRendering[index].name,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 30),

           // === Promotions / Ads Section ===
const Text(
  "Promotions",
  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
),
const SizedBox(height: 12),
SizedBox(
  height: 140,
  child: PageView.builder(
    controller: _pageController,
    padEnds: false, 
    itemCount: ads.length,
    itemBuilder: (context, index) {
      final ad = ads[index];
      return Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(ad.image),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2),
                BlendMode.darken,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  ad.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  ad.description,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  ),
),

 ],
          ),
        ),
      ),
      bottomNavigationBar: FooterWidget(_selectedIndex, _onItemTapped),
    ),
  );
}


  Widget _selectionTile({
    required String label,
    required IconData icon,
    required VoidCallback onTap,
    String? value,
  }) {
    final textColor = value != null ? Colors.black : Colors.grey;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: FleetrideColors.scaffoldBackgroundColor.withValues(alpha: 0.4),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xFFCCCCCC)),
        ),
        child: Row(
          children: [
            Icon(icon, color: textColor),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                value ?? label,
                style: TextStyle(color: textColor, fontSize: 16),
              ),
            ),
            Icon(Icons.keyboard_arrow_right, color: textColor),
          ],
        ),
      ),
    );
  }
}


