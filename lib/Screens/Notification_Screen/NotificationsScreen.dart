import 'package:flutter/material.dart';
import 'package:ppp/Screens/RecieveMoney_Screen/recieveMoney_screen.dart';
import 'package:ppp/utils/app_colors.dart';
import 'package:ppp/widgets/notification_card_widget.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          children: [
            // ── Header ──
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Notifications",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ), // TextStyle
                  ), // Text
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.TextColor,
                        width: 1.5,
                      ), // Border.all
                    ), // BoxDecoration
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.close,
                        color: AppColors.TextColor,
                        size: 16,
                      ),
                    ), // Icon
                  ), // Container
                ],
              ), // Row
            ), // Padding
            // ── Notification Cards ──
            NotificationCard(
              title: "Recharge Completed",
              description:
                  "Your last recharge on 9647229989 of 199 rs has been successfully completed.",
              time: "May 20  -  12:32 Pm",
            ), // NotificationCard
            NotificationCard(
              title: "Money Recived",
              description:
                  "Your account ***21445 has been recieved an amount of Rs 1000 using upi transaction.",
              time: "May 20  -  12:45 Pm",
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReceiveMoneyScreen()),
              ),
            ), // NotificationCard
            NotificationCard(
              title: "Offer Unlocked",
              description:
                  "You have an unlocked offer avilable go to offer section or tap to view the offer.",
              time: "May 20  -  2:45 Pm",
            ), // NotificationCard
            // ── Recent Notifications ──
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Notifications",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ), // TextStyle
                  ), // Text
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AppColors.TextColor,
                        width: 1.5,
                      ), // Border.all
                    ), // BoxDecoration
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: AppColors.TextColor,
                      size: 18,
                    ), // Icon
                  ), // Container
                ],
              ), // Row
            ), // Padding
          ],
        ),
      ),
    ); // Scaffold
  }
}
