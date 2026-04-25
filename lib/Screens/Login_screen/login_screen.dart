import 'package:flutter/material.dart';
import 'package:ppp/Screens/Dashboard_Screen/dashboard_screen.dart';
import 'package:ppp/utils/app_colors.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              bottom: 200,
              child: Image.asset(
                "assets/login/Group815.png",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                height: 600,
              ),
            ),
            Positioned(
              top: 60,
              left: 60,
              child: Image.asset("assets/login/image25.png"),
            ),
            Positioned(
              top: 230,
              left: 110,
              child: Image.asset("assets/login/Group832.png"),
            ),

            Positioned(
              left: 30,
              top: 30,
              child: Text(
                "LOGIN WITH YOUR \nMOBILE PHONE \nNUMBER ",
                style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),

            Positioned(
              top: 500,
              left: 40,
              child: Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Mobile Number",
                    border: InputBorder.none,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(top: 8, left: 10),
                      child: Text(
                        "+92",
                        style: TextStyle(
                          color: AppColors.secondryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 550,
              left: 40,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardScreen()));
                },
                child: Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                    color: AppColors.secondryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Verify",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
