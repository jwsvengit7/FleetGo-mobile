import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fleetride/core/colors/color.dart';
import 'package:fleetride/gen/assets.gen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class FooterWidget extends StatelessWidget {
  final int _selectedIndex;
  final ValueChanged<int>? _onItemTapped;
  const FooterWidget(this._selectedIndex,this._onItemTapped, {super.key});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          backgroundColor: FleetrideColors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: FleetrideColors.buttonColor,
        unselectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed, 
        items:  [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: WebsafeSvg.asset(Assets.svgs.home,width: 23),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: WebsafeSvg.asset(Assets.svgs.move,width: 23),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: WebsafeSvg.asset(Assets.svgs.third,width: 21),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: WebsafeSvg.asset(Assets.svgs.profile,width: 21),
            ),
            label: "",
          ),
        ],
      );
  }
}
