import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:fleetride/core/appbar/appbar.dart';
import 'package:fleetride/core/colors/color.dart';
import 'package:fleetride/core/router/app_routes.dart';
import 'package:fleetride/feature/landing_page/presentation/utils/cars.dart';
import 'package:fleetride/feature/landing_page/presentation/utils/footer_widget.dart';
import 'package:fleetride/gen/assets.gen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 3; // default: Profile tab

 

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
        appBar: const FleetrideAppBar(title: "Profile", shouldPop: true),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
Center(
  child: Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // shadow color
              blurRadius: 10, // soften the shadow
              spreadRadius: 2, // extend shadow
              offset: Offset(0, 6), // move shadow downward
            ),
          ],
        ),
        child: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(
            "assets/images/profile.png", // ✅ replace with your image
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: CircleAvatar(
          radius: 16,
          backgroundColor: FleetrideColors.buttonColor,
          child: const Icon(
            Icons.camera_alt,
            size: 16,
            color: Colors.white,
          ),
        ),
      )
    ],
  ),
),


              const SizedBox(height: 10),

         Container(
          width: MediaQuery.of(context).size.width,
  margin: const EdgeInsets.symmetric(horizontal: 16),
  padding: const EdgeInsets.all(16),
  
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: const [
      Text(
        "Jack William",
        style: TextStyle(
          fontSize: 18,
          color: FleetrideColors.black1,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 4),
      Text(
        "jack.william@email.com", // ✅ optional subtitle
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
      ),
    ],
  ),
),

Padding(
  padding: const EdgeInsets.all(15.0),
  child: Container(
    width:MediaQuery.of(context).size.width,
  
  decoration: BoxDecoration(
      color: Colors.white, 
      borderRadius: BorderRadius.circular(100), 
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.12), 
          blurRadius: 1, 
          spreadRadius: 1, 
          offset: const Offset(0, 5),
        ),
      ],
    ),
  ),
),

              const SizedBox(height: 20),

              Column(
                children: [
                  _buildProfileAction(Assets.svgs.check, "Booking"),
                  _buildProfileAction(Assets.svgs.card, "Wallet"),
                  _buildProfileAction(Assets.svgs.love, "Wish List"),
                  _buildProfileAction(Assets.svgs.comment, "FAQs"),
                                    _buildProfileAction(Assets.svgs.earphone, "Help & Support"),

                  _buildProfileAction(Assets.svgs.gear, "Settings"),

                  _buildProfileAction(Assets.svgs.security, "Privacy Policy"),
                  _buildProfileAction(Assets.svgs.signout, "Logout",
                      isLogout: true), 
                      SizedBox(height: 30,)
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: FooterWidget(_selectedIndex, _onItemTapped),
      ),
    );
  }

  Widget _buildProfileAction(String icon, String title,
      {bool isLogout = false}) {
    return InkWell(
                                   onTap: () => context.push("/landing/profile/about") ,

      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey, width: 0.2),
          ),
        ),
        child: Row(
          children: [
            WebsafeSvg.asset(icon,
                // color: isLogout ? Colors.red : FleetrideColors.buttonColor,
                width: 22),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: isLogout ? Colors.red : Colors.black,
                ),
              ),
            ),
            const Icon(Icons.arrow_forward_ios,
                size: 16, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
