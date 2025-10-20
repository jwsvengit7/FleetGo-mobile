import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:fleetride/core/buttons/fleetridebuttons.dart';
import 'package:fleetride/core/colors/color.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
                      
                              child: FleetrideButtons(
                                      context: context,
                                      onTap: () => context.go('/auth'),
                                      text: "Get Started",
                                      textColor: FleetrideColors.white,
                                      color: FleetrideColors.buttonColor)
                                  .normal(),
                            );
    
  
  }
}
