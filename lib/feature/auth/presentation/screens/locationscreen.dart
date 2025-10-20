import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fleetride/core/appbar/appbar.dart';
import 'package:fleetride/core/buttons/fleetridebuttons.dart';
import 'package:fleetride/core/colors/color.dart';
import 'package:fleetride/core/router/app_routes.dart';
import 'package:fleetride/feature/landing_page/presentation/screens/landing_page_screen.dart';

class LocationScreen extends StatefulWidget {
  final String? token;
  const LocationScreen({super.key, this.token});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  // Simple data model for mock cities placed by percentage inside the panel
  final List<_MockCity> _cities = const [
    // dx, dy are 0..1 within the image panel
    _MockCity(name: 'Lagos', dx: 0.28, dy: 0.35),
    _MockCity(name: 'Abuja', dx: 0.66, dy: 0.22),
    _MockCity(name: 'Port Harcourt', dx: 0.42, dy: 0.62),
    _MockCity(name: 'Kano', dx: 0.78, dy: 0.18),
  ];

  _MockCity? _selected;

  void _selectBySearch(String query) {
    final q = query.trim().toLowerCase();
    if (q.isEmpty) return;
    final hit = _cities.firstWhere(
      (c) => c.name.toLowerCase().contains(q),
      orElse: () => _cities.first,
    );
    setState(() => _selected = hit);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: FleetrideColors.white,
      appBar: FleetrideAppBar(shouldPop: true, title: "Choose Your Location"),

      body: Column(
        children: [
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search here…',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              onSubmitted: _selectBySearch,
            ),
          ),
          const SizedBox(height: 12),

          // Mock satellite “map” panel
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: AspectRatio(
              aspectRatio: 4 / 3, // adjust to fit your screenshot shape
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  children: [
                    // Background satellite mock
                    Positioned.fill(
                      child: Image.asset(
                        'assets/images/mock_satellite.png',
                        fit: BoxFit.cover,
                      ),
                    ),

                    // Pins
                    _CityMarkers(
                      cities: _cities,
                      selected: _selected,
                      onTap: (c) => setState(() => _selected = c),
                    ),

                    // Small footer like a map attribution (optional)
                    const Positioned(
                      left: 0,
                      right: 0,
                      bottom: 6,
                      child: Center(
                        child: Text(
                          'Mock map • not real geodata', // edit or remove later
                          style: TextStyle(fontSize: 10, color: Colors.white70),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          // “Use my current location” – mocked: pick Lagos by default
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {
                setState(
                  () =>
                      _selected = _cities.firstWhere((c) => c.name == 'Lagos'),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 1.5),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const Icon(Icons.my_location),
                    const SizedBox(width: 12),
                    Text(
                      'Use My Current Location',
                      style: theme.textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SizedBox(height: 16),

          if (_selected != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Selected: ${_selected!.name}',
                style: theme.textTheme.bodyMedium,
              ),
            ),

          // Spacer(),
          SizedBox(height: 120),

          // Actions
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              child: FleetrideButtons(
                context: context,
                onTap: () => LandingPageRoute().go(context),
                text: "Continue",
                textColor: FleetrideColors.white,
                color: FleetrideColors.buttonColor,
              ).normal(),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              child: FleetrideButtons(
                context: context,
                onTap: () => LandingPageRoute().go(context),
                text: "Skip",
                textColor: FleetrideColors.black1,
                color: FleetrideColors.grey8,
              ).normal(),
            ),
          ),
        ],
      ),
    );
  }
}

/// Simple data for mock cities positioned by percentage offsets
class _MockCity {
  final String name;
  final double dx; // 0..1 from left
  final double dy; // 0..1 from top
  const _MockCity({required this.name, required this.dx, required this.dy});
}

/// Places city markers by percentage offsets and handles tap selection.
class _CityMarkers extends StatelessWidget {
  final List<_MockCity> cities;
  final _MockCity? selected;
  final ValueChanged<_MockCity> onTap;

  const _CityMarkers({
    required this.cities,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            for (final c in cities)
              Positioned(
                left: c.dx * constraints.maxWidth - 12, // center the icon
                top: c.dy * constraints.maxHeight - 32,
                child: GestureDetector(
                  onTap: () => onTap(c),
                  child: Column(
                    children: [
                      Icon(
                        Icons.location_pin,
                        size: 32,
                        color: c == selected ? Colors.purple : Colors.lightBlue,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 2),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.92),
                          borderRadius: BorderRadius.circular(6),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 3,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Text(
                          c.name,
                          style: const TextStyle(fontSize: 11),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
