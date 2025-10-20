import 'package:fleetride/core/colors/color.dart';
import 'package:fleetride/feature/landing_page/presentation/utils/cars.dart';
import 'package:fleetride/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarWidget extends StatefulWidget {
  final Car car;
  final String? status;
  final double width;
  final VoidCallback? onTap;

  const CarWidget({
    super.key,
    required this.car,
    this.status,
    required this.width,
    this.onTap,
  });

  @override
  CarWidgetState createState() => CarWidgetState();
}

class CarWidgetState extends State<CarWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return InkWell(
          onTap: widget.onTap,
          child: Container(
            width: constraints.maxWidth,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: FleetrideColors.blackColor.withOpacity(0.1),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.08),
                  blurRadius: 6,
                  spreadRadius: 1,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0.w),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        child: Text(
                          "Porsche",
                          style: TextStyle(color: FleetrideColors.deepBlue, fontSize: 13),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: FleetrideColors.yellow2, size: 15),
                          Text(
                            "4.5",
                            style: TextStyle(
                              color: FleetrideColors.deepBlue,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.car.name,
                        style: const TextStyle(color: FleetrideColors.deepBlue, fontSize: 13),
                      ),
                      const SizedBox(),
                    ],
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        child: Image.asset(
                          Assets.images.bus.path,
                          width: 150,
                          height: 100,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Price",
                            style: TextStyle(fontSize: 12, color: FleetrideColors.deepBlue),
                          ),
                          Row(
                            children: [
                              Text(
                                widget.car.price.toString(),
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: FleetrideColors.deepBlue,
                                ),
                              ),
                              const SizedBox(width: 4),
                              const Text(
                                "per/hour",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: FleetrideColors.deepBlue,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(onPressed: null, icon: Icon(Icons.arrow_outward_outlined,color: Colors.amber,size: 30,)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
