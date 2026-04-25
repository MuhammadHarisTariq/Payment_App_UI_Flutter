import 'package:flutter/material.dart';
import 'package:ppp/Screens/Notification_Screen/NotificationsScreen.dart';
import 'package:ppp/Screens/Profile_screen/profile_screen.dart';
import 'package:ppp/utils/app_colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final PreferredSizeWidget? bottom;

  const CustomAppbar({super.key, this.bottom});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.bgColor,
      elevation: 1,

      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfileScreen()),
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/profile_pic.png"),
          ),
        ),
      ),

      centerTitle: true,

      title: Container(
        height: 40,
        width: 215,
        decoration: BoxDecoration(
          color: AppColors.bgColorLight,
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Search users, ID's etc",
            hintStyle: TextStyle(color: AppColors.TextColor),
            contentPadding: EdgeInsets.only(left: 15, top: 2),
            border: InputBorder.none,
            suffixIcon: CircleAvatar(
              backgroundColor: Color(0xFF343645),
              child: Icon(Icons.search, color: AppColors.TextColor),
            ),
          ),
        ),
      ),

      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationsScreen()),
            );
          },
          icon: Icon(Icons.notifications),
        ),
      ],

      // ✅ THIS IS THE KEY LINE
      bottom: bottom,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0));
}
