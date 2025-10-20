import 'package:fleetride/core/appbar/appbar.dart';
import 'package:fleetride/core/widget/text_field/search_input.dart';
import 'package:fleetride/feature/cars/presentation/screens/widget/car_widget.dart';
import 'package:fleetride/feature/landing_page/presentation/utils/car_widget.dart';
import 'package:fleetride/feature/landing_page/presentation/utils/cars.dart';
import 'package:fleetride/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AvailableScreen extends StatefulWidget {
  const AvailableScreen({super.key});
  @override
  AvailableScreenState createState() => AvailableScreenState();
}

class AvailableScreenState extends State<AvailableScreen> {
  bool status = false;
  final PageController _pageController = PageController();
  int _currentPage = 0;
  int count = 0;

  @override
  void initState() {
    super.initState();
  setState(() {
    status=false;
    _currentPage=0;
  }); 
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

            appBar: const FleetrideAppBar(
              title: "Available Cars",
              shouldPop: true,
            ),
            body: SingleChildScrollView(
              
            )));
  }
}