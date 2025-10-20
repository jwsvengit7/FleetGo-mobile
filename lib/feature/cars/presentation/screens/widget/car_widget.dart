
import 'package:flutter/material.dart';
import 'package:fleetride/core/colors/color.dart';
import 'package:fleetride/gen/assets.gen.dart';

class CarViewProduct extends StatelessWidget {
  final int i;
  const CarViewProduct({super.key, required this.i});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: i == 0
              ? const Color.fromARGB(255, 65, 64, 64)
              : FleetrideColors.grey8,
        ),
        width: 100,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(Assets.images.car.path, width: 40, height: 50),
            Text("Sedan",
                style: TextStyle(
                  fontSize: 12,
                    color: i == 0
                        ? FleetrideColors.white
                        : FleetrideColors.black1))
          ],
        ),
      ),
    );
  }
}