import 'package:flutter/material.dart';
import 'package:ppp/utils/app_colors.dart';
import 'package:ppp/widgets/HorizontalCircleMenu.dart';
import 'package:ppp/widgets/HorizontalMenuList.dart';
import 'package:ppp/widgets/box_widget.dart';
import 'package:ppp/widgets/custom_heading.dart';

// ignore: must_be_immutable
class Hometab extends StatelessWidget {
  // const Hometab({super.key});

  List<Map<String, dynamic>> ticketItems = [
  {"icon": Icons.movie, "label": "Movies"},
  {"icon": Icons.train, "label": "Trains"},
  {"icon": Icons.directions_bus, "label": "Bus"},
  {"icon": Icons.flight, "label": "Flights"},
  {"icon": Icons.shopping_cart, "label": "Shopping"},
];
List<Map<String, dynamic>> moreServices = [
  {"icon": Icons.phone_android, "label": "Mobile"},
  {"icon": Icons.wifi, "label": "Internet"},
  {"icon": Icons.tv, "label": "TV"},
  {"icon": Icons.lightbulb, "label": "Electricity"},
  {"icon": Icons.local_gas_station, "label": "Gas"},
];

List<Map<String, dynamic>> RecentTransaction = [
  {"image": "assets/home/img1.png", "label": "Hania"},
  {"image": "assets/home/img2.png", "label": "Ayesha"},
  {"image": "assets/home/img3.png", "label": "Shayan"},
  {"image": "assets/home/img4.png", "label": "Vi"},
  {"image": "assets/home/img5.png", "label": "KSEB"},
];

  Hometab({super.key});


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: AppColors.bgColor,
        child: Column(
          children: [
            // ── Money Transfer Section ──
            CustomHeadings(
              headingtext: "Money Transfer",
              is_icon_show: true,
            ), // CustomHeadings
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2.8,
                children: [
                  BoxWidget(
                    text: "Scan QR Code",
                    icon: Icons.qr_code_scanner,
                    maincolor: Color(0xFF5B2E62),
                    secondarycolor: Color(0xFF4d3473),
                    isSelected: true,
                  ), // BoxWidget
                  BoxWidget(
                    text: "Send to Contact",
                    icon: Icons.person_add_alt_1,
                    maincolor: Color(0xFF2E624C),
                    secondarycolor: Color(0xFF277360),
                  ), // BoxWidget
                  BoxWidget(
                    text: "Send To Bank",
                    icon: Icons.account_balance,
                    maincolor: Color(0xFF5E622E),
                    secondarycolor: Color(0xFF617a27),
                  ), // BoxWidget
                  BoxWidget(
                    text: "Self Transfer",
                    icon: Icons.swap_horiz,
                    maincolor: Color(0xFF622E3A),
                    secondarycolor: Color(0xFF73274e),
                  ), // BoxWidget
                ],
              ), // GridView
            ), // Padding

            SizedBox(height: 16),

            // ── Recharge & Bill Payments Section ──
            CustomHeadings(
              headingtext: "Recharge & Bill Payments",
              is_icon_show: true,
            ), // CustomHeadings
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2.8,
                children: [
                  BoxWidget(
                    text: "Mobile Recharge",
                    icon: Icons.smartphone,
                    maincolor: Color(0xFF32652A),
                    secondarycolor: Color(0xFF33734a),
                  ), // BoxWidget
                  BoxWidget(
                    text: "Electricity Bill",
                    icon: Icons.bolt,
                    maincolor: Color(0xFF652A5F),
                    secondarycolor: Color(0xFF7c375a),
                  ), // BoxWidget
                  BoxWidget(
                    text: "DTH Recharge",
                    icon: Icons.live_tv,
                    maincolor: Color(0xFF652A2A),
                    secondarycolor: Color(0xFF614a2d),
                  ), // BoxWidget
                  BoxWidget(
                    text: "Postpaid Bill",
                    icon: Icons.receipt_long,
                    maincolor: Color(0xFF2A4065),
                    secondarycolor: Color(0xFF2A4065),
                  ), // BoxWidget
                ],
              ), // GridView
            ), // Padding

            SizedBox(height: 20),

            // Ticket Booking
            CustomHeadings(headingtext: "Ticket Booking", is_icon_show: false),
            HorizontalMenuList(items: ticketItems),

            // More Services
            CustomHeadings(headingtext: "More Services"),
            HorizontalMenuList(items: moreServices),

            CustomHeadings(headingtext: "Recent Transactions"),
            Horizontalcirclemenu(items: RecentTransaction)
          ],
        ),
      ),
    ); // SingleChildScrollView
  }
}
