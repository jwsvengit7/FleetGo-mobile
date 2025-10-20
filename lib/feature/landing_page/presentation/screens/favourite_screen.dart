import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:fleetride/core/appbar/appbar.dart';
import 'package:fleetride/core/colors/color.dart';
import 'package:fleetride/core/router/app_routes.dart';
import 'package:fleetride/core/widget/text_field/search_icon.dart';
import 'package:fleetride/feature/landing_page/presentation/utils/car_widget.dart';
import 'package:fleetride/feature/landing_page/presentation/utils/cars.dart';
import 'package:fleetride/feature/landing_page/presentation/utils/footer_widget.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});
  @override
  FavouriteScreenState createState() => FavouriteScreenState();
}

class FavouriteScreenState extends State<FavouriteScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
    context.push(routes[index]);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: const FleetrideAppBar(title: "Favourite", shouldPop: true),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: fleetrideSearchField(
                  controller: TextEditingController(),
                  hintText: "Search Here...",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 4.0,
                  bottom: 10,
                  right: 15,
                  left: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(),
                    Text(
                      "Favorite",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.favorite, color: FleetrideColors.red2),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),

                color: FleetrideColors.white,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  decoration: BoxDecoration(
                    color: FleetrideColors.blackColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 14.0,
                      bottom: 10,
                      right: 10,
                      left: 10,
                    ),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 3,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.9,
                          ),
                      itemBuilder: (BuildContext context, int index) {
                        final item = carsService[index];
                        return CarWidget(
                          car: item,
                          width: MediaQuery.of(context).size.width,
                          onTap: () => CarDetailsRoute(item.name).push(context),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: FooterWidget(_selectedIndex, _onItemTapped),
      ),
    );
  }
}
