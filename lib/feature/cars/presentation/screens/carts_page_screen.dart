
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:fleetride/core/appbar/appbar.dart';
import 'package:fleetride/core/colors/color.dart';
import 'package:fleetride/core/widget/text_field/search_icon.dart';
import 'package:fleetride/feature/landing_page/presentation/utils/car_widget.dart';
import 'package:fleetride/feature/landing_page/presentation/utils/cars.dart';
import 'package:fleetride/feature/landing_page/presentation/utils/footer_widget.dart';

class CarScreen extends StatefulWidget{
  const CarScreen({super.key});
  @override
  CarsScreenState createState()=> CarsScreenState();
}
class CarsScreenState extends State<CarScreen>{
      int _selectedIndex = 0;

 

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
    context.push(routes[index]); 
  }

  @override
  Widget build(BuildContext context) {
    return  AnnotatedRegion<SystemUiOverlayStyle>(
      value:const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
                  backgroundColor: Colors.white,

        appBar:const FleetrideAppBar(title: "All Cars",shouldPop: true,),
        body:SingleChildScrollView(
          child:   Column(
            children: [
               Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: fleetrideSearchField(
                                 controller: TextEditingController(),
                                 hintText: "Search Here...",
                                       
                                       ),
               ), 
                   
              Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),

                color: Colors.grey[200],
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)

                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 14.0, bottom: 10, right: 10, left: 10),
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 6,
                            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 3,
                              mainAxisSpacing: 10,
                              childAspectRatio: 0.9
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              final item = carsService[index];
                              return CarWidget(car: item,width:MediaQuery.of(context).size.width);
                            },
                          ),
                        ),
                      ),
                    ),
            ],
          ),
             
        )
        ,         bottomNavigationBar:  FooterWidget(_selectedIndex,_onItemTapped)
,
      ));
  
  }
  
}