import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fleetride/core/appbar/font.dart';
import 'package:fleetride/core/colors/color.dart';
import 'package:fleetride/core/router/app_routes.dart';
import 'package:fleetride/gen/assets.gen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "title": "Our Experience",
      "subtitle": "Rent the car of your dreams with home delivery",
      "image": Assets.images.range3.path,
    },
    {
      "title": "Find Your Dream Car",
      "subtitle": "Rent and take Fleetride cars anywhere in the world",
      "image": Assets.images.range1.path,
    },
    {
      "title": "Premium Car Rental",
      "subtitle":
          "Fleetride cars available everywhere for one to several day trips",
      "image": Assets.images.range1.path,
    },
  ];

  void _goToPage(int index) {
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: onboardingData.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                final item = onboardingData[index];
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 800),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(item["image"]!),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withValues(alpha: 0.55),
                        BlendMode.darken,
                      ),
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Glass blur background for text
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.white.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: Colors.white.withValues(alpha: 0.3),
                                ),
                              ),
                              child: Column(
                                children: [
                                  AnimatedOpacity(
                                    opacity: 1,
                                    duration:
                                        const Duration(milliseconds: 600),
                                    child: Text(
                                      item["title"]!,
                                      style:
                                          FontFamilys.titleStyle.copyWith(
                                        fontSize: 26,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  AnimatedOpacity(
                                    opacity: 1,
                                    duration:
                                        const Duration(milliseconds: 800),
                                    child: Text(
                                      item["subtitle"]!,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white
                                            .withValues(alpha: 0.7),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),

                        // Dot Indicators
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            onboardingData.length,
                            (dotIndex) => AnimatedContainer(
                              duration:
                                  const Duration(milliseconds: 400),
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 5),
                              width:
                                  _currentPage == dotIndex ? 16 : 8,
                              height: 8,
                              decoration: BoxDecoration(
                                color: _currentPage == dotIndex
                                    ? FleetrideColors.yellow2
                                    : Colors.white.withValues(alpha: 0.3),
                                borderRadius:
                                    BorderRadius.circular(20),
                                boxShadow: _currentPage == dotIndex
                                    ? [
                                        BoxShadow(
                                          color: FleetrideColors
                                              .yellow2
                                              .withValues(alpha: 0.6),
                                          blurRadius: 6,
                                          spreadRadius: 1,
                                        )
                                      ]
                                    : [],
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 40),

                        // Next or Get Started Button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  FleetrideColors.buttonColor,
                              foregroundColor: Colors.white,
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(14),
                              ),
                              elevation: 8,
                              shadowColor: FleetrideColors
                                  .buttonColor
                                  .withValues(alpha: 0.6),
                            ),
                            onPressed: () {
                              if (_currentPage ==
                                  onboardingData.length - 1) {
                                AuthEmailSignInRoute().go(context);
                              } else {
                                _goToPage(_currentPage + 1);
                              }
                            },
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.center,
                              children: [
                                Text(
                                  _currentPage ==
                                          onboardingData.length - 1
                                      ? "Get Started"
                                      : "Next",
                                  style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Skip Button
                        if (_currentPage < onboardingData.length - 1)
                         
                           SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:Colors.transparent,
                              foregroundColor: Colors.white,
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(14),
                              ),
                              elevation: 8,
                              shadowColor: FleetrideColors
                                  .buttonColor
                                  .withValues(alpha: 0.6),
                            ),
                            onPressed: () {
                              _goToPage(onboardingData.length - 1);
                            },
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.center,
                              children: [
                                Text("Skip",
                                  style: const TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const Icon(
                                  Icons.arrow_circle_up,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ],
                            ),
                          ),
                        ),

                        
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
