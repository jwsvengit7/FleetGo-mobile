import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fleetride/core/appbar/appbar.dart';
import 'package:fleetride/core/colors/color.dart';
import 'package:fleetride/gen/assets.gen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class BookingListScreen extends StatefulWidget {
  const BookingListScreen({super.key});

  @override
  BookingListScreenState createState() => BookingListScreenState();
}

class BookingListScreenState extends State<BookingListScreen> {
  int selectedTab = 0; // 0 = Upcoming, 1 = Completed, 2 = Cancelled

  final List<String> tabs = ["Upcoming", "Completed", "Cancelled"];

  final List<Booking> notifications = [
    Booking(
      icon: Assets.svgs.booking,
      title: "The Event Hub",
      description: "Your ride has been booked and confirmed.",
      date: "July 2025",
      time: "09:45 AM",
      status: "Upcoming",
    ),
    Booking(
      icon: Assets.svgs.booking,
      title: "The Event Hub",
      description: "Your payment of ₦15,000 has been processed.",
      date: "July 2025",
      time: "10:20 PM",
      status: "Completed",
    ),
    Booking(
      icon: Assets.svgs.booking,
      title: "The Event Hub",
      description: "Your driver is on the way to your location.",
      date: "March 2025",
      time: "04:15 PM",
      status: "Cancelled",
    ),
        Booking(
      icon: Assets.svgs.booking,
      title: "The Event Hub",
      description: "Your ride has been booked and confirmed.",
      date: "July 2025",
      time: "09:45 AM",
      status: "Upcoming",
    ),
    Booking(
      icon: Assets.svgs.booking,
      title: "The Event Hub",
      description: "Your payment of ₦15,000 has been processed.",
      date: "July 2025",
      time: "10:20 PM",
      status: "Completed",
    ),
    Booking(
      icon: Assets.svgs.booking,
      title: "The Event Hub",
      description: "Your driver is on the way to your location.",
      date: "March 2025",
      time: "04:15 PM",
      status: "Cancelled",
    ),
        Booking(
      icon: Assets.svgs.booking,
      title: "The Event Hub",
      description: "Your ride has been booked and confirmed.",
      date: "July 2025",
      time: "09:45 AM",
      status: "Completed",
    ),
    Booking(
      icon: Assets.svgs.booking,
      title: "The Event Hub",
      description: "Your payment of ₦15,000 has been processed.",
      date: "July 2025",
      time: "10:20 PM",
      status: "Completed",
    ),
    Booking(
      icon: Assets.svgs.booking,
      title: "The Event Hub",
      description: "Your driver is on the way to your location.",
      date: "March 2025",
      time: "04:15 PM",
      status: "Completed",
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
        appBar: const FleetrideAppBar(title: "Bookings", shouldPop: true),
        body: Column(
          children: [
            // 🔹 Tabs Row
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(tabs.length, (index) {
                  final isSelected = selectedTab == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() => selectedTab = index);
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          tabs[index],
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight:
                                isSelected ? FontWeight.bold : FontWeight.w500,
                            color: isSelected
                                ? FleetrideColors.black1
                                : Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 4),
                        if (isSelected)
                          Container(
                            height: 3,
                            width: 80,
                            color: FleetrideColors.black1,
                          ),
                                
                               const SizedBox(height: 4),

                      ],
                    ),
                  );
                }),
              ),
            ),
            const Divider(height: 1),

            // 🔹 Bookings List
            selectedTab ==0 ? Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
  width: MediaQuery.of(context).size.width,
  height: 400,
  decoration: BoxDecoration(
    color: Colors.white, // background color
    borderRadius: BorderRadius.circular(8.0),
    border: Border.all(
      color: FleetrideColors.black1,
      width: 1.0, // border width
    ),
    boxShadow: [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 4,
        offset: Offset(0, 2), // shadow position
      ),
    ],
  ),
  child: SizedBox(child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(Assets.images.car2.path),
          Column(
            children: [
              Text("Posecah",style: TextStyle(fontWeight: FontWeight.bold),),
              Text("718 34"),
            ],
          ),
            Row(
            children: [
              Text("150/",style: TextStyle(fontWeight: FontWeight.bold),),
              Text("per day"),
            ],
          )

        ],
      ),
      Divider()
    ],
  )),
),

            ):
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  final item = notifications[index];
                  final bool showHeader = index == 0 ||
                      item.date != notifications[index - 1].date;

                  // filter by selected tab
                  if (item.status.toLowerCase() !=
                      tabs[selectedTab].toLowerCase()) {
                    return const SizedBox.shrink();
                  }

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (showHeader) _DateHeader(date: item.date),
                      _BookingTile(item: item),
                      const Divider(height: 1, color: FleetrideColors.grey7),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Booking {
  final String icon;
  final String title;
  final String description;
  final String date;
  final String time;
  final String status;

  Booking({
    required this.icon,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.status,
  });
}

class _BookingTile extends StatelessWidget {
  final Booking item;

  const _BookingTile({required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipOval(
              child: Container(
                decoration: const BoxDecoration(color: FleetrideColors.grey8),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: WebsafeSvg.asset(item.icon, width: 20),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: FleetrideColors.black1,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item.time,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black54,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              item.status,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DateHeader extends StatelessWidget {
  final String date;

  const _DateHeader({required this.date});

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
        children: [
          Text(
            date,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
