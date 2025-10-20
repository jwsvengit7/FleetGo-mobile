import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fleetride/core/appbar/appbar.dart';
import 'package:fleetride/core/colors/color.dart';
import 'package:fleetride/gen/assets.gen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  NotificationScreenState createState() => NotificationScreenState();
}

class NotificationScreenState extends State<NotificationScreen> {
  final List<_NotificationItem> notifications = [
    _NotificationItem(
      icon: Assets.images.logo.path,
      title: "Ride Booked Successfully",
      description: "Your ride has been booked and confirmed.",
      date: "TODAY",
      time: "09:45 AM",
    ),
    _NotificationItem(
      icon: Assets.images.logo.path,
      title: "Payment Successful",
      description: "Your payment of ₦15,000 has been processed.",
      date: "TODAY",
      time: "10:20 AM",
    ),
    _NotificationItem(
      icon: Assets.images.logo.path,
      title: "Driver Assigned",
      description: "Your driver is on the way to your location.",
      date: "YESTERDAY",
      time: "04:15 PM",
    ),
    _NotificationItem(
      icon: Assets.images.logo.path,
      title: "Trip Completed",
      description: "Hope you enjoyed your ride. Please rate your driver.",
      date: "YESTERDAY",
      time: "05:50 PM",
    ),
    _NotificationItem(
      icon: Assets.images.logo.path,
      title: "Promo Alert!",
      description: "Get 20% off your next booking this weekend.",
      date: "YESTERDAY",
      time: "07:10 PM",
    ),
  ];

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
        appBar: const FleetrideAppBar(title: "Notifications", shouldPop: true),
        body: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            final item = notifications[index];
            final bool showHeader = index == 0 ||
                item.date != notifications[index - 1].date;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (showHeader) _DateHeader(date: item.date, time: item.time),
                _NotificationTile(item: item),
                const Divider(height: 1, color: Colors.grey),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _NotificationItem {
  final String icon;
  final String title;
  final String description;
  final String date; 
  final String time;

  _NotificationItem({
    required this.icon,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
  });
}

class _NotificationTile extends StatelessWidget {
  final _NotificationItem item;

  const _NotificationTile({required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(item.icon, width: 50)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: FleetrideColors.deepBlue,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item.description,
                    style: const TextStyle(
                      fontSize: 13,
                      color: FleetrideColors.deepBlue,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}

class _DateHeader extends StatelessWidget {
  final String date;
  final String time;

  const _DateHeader({required this.date, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8, top: 16),
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 251, 248, 248),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            date,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: FleetrideColors.deepBlue,
            ),
          ),
          Text(
            time,
            style: const TextStyle(
              fontSize: 12,
              color: FleetrideColors.deepBlue,
            ),
          ),
        ],
      ),
    );
  }
}
