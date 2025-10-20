import 'package:fleetride/core/colors/color.dart';
import 'package:flutter/material.dart';

class ConfirmBoxWidget extends StatelessWidget {
  final Color? bgColor;
  final Widget child;
  final String image;
  final bool modar;
  final bool status;
  final String title;
  final String message;
  final Function(BuildContext) onTap;

  const ConfirmBoxWidget({
    super.key,
    required this.message,
    required this.image,
    this.bgColor,
    required this.child,
    required this.modar,
    required this.title,
    required this.onTap,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Visibility(
          visible: modar,
          replacement: SizedBox.shrink(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            color: bgColor ?? FleetrideColors.black1.withOpacity(0.4),
            child: Align(
              alignment: Alignment.topLeft, // Changed alignment to top left
              child: AlertDialog(
                backgroundColor: FleetrideColors.white,
                elevation: 0.0,
                shape:const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10),
                  ),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(image,width:70,height:70),
                          const SizedBox(height:10),
                          Text(
                            title,
                             textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 10),
                           Text(
                            textAlign: TextAlign.center,
                          message,
                            style: TextStyle(fontSize: 16),
                          ),
                        
                        const SizedBox(height: 10),

                        InkWell(
                          onTap: (){
                            debugPrint("^^^^^^^^^^^");
                              onTap(context);
                          },
                          child:Container(
                            alignment: Alignment.center,
                          width: 150,
                          height:40,
                          color:FleetrideColors.black2,
                          child: const Text("Close",style: TextStyle(color:Colors.white),),
                          )
                        )
                         
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
