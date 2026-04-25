import 'package:flutter/material.dart';
import 'package:ppp/utils/app_colors.dart';
import 'package:ppp/widgets/BankAccountCard_widget.dart';

class BalanceTab extends StatelessWidget {
  const BalanceTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        
        color: AppColors.bgColor,
        child: Column(
          children: [
            // ── Portfolio Header ──
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: BoxDecoration(
                color: AppColors.bgColorLight,
                borderRadius: BorderRadius.circular(16),
              ), // BoxDecoration
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                          Icons.arrow_back_ios_new,
                          color: AppColors.TextColor,
                          size: 14,
                        ), // Icon
                      ), // Container
                      Column(
                        children: [
                          Text(
                            "Portfolio Value",
                            style: TextStyle(
                              color: AppColors.TextColor,
                              fontSize: 13,
                            ), // TextStyle
                          ), // Text
                          SizedBox(height: 4),
                          Text(
                            "\$54,375",
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ), // TextStyle
                          ), // Text
                          SizedBox(height: 4),
                          Text(
                            "In 3 Accounts",
                            style: TextStyle(
                              color: AppColors.TextColor,
                              fontSize: 12,
                            ), // TextStyle
                          ), // Text
                        ],
                      ), // Column
                      Icon(
                        Icons.bar_chart,
                        color: AppColors.TextColor,
                        size: 24,
                      ), // Icon
                    ],
                  ), // Row

                  SizedBox(height: 20),

                  // ── Bank Cards Grid ──
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1.5,
                    children: [
                      BankAccountCard(
                        bankName: "Federel Bank",
                        accountNumber: "1142524899652",
                        balance: "16,456.05",
                        color: Color(0xFF5B2D8E),
                      ), // BankAccountCard
                      BankAccountCard(
                        bankName: "States Bank",
                        accountNumber: "1142524899652",
                        balance: "2045.05",
                        color: Color(0xFF3D2A6E),
                      ), // BankAccountCard
                    ],
                  ), // GridView

                  SizedBox(height: 10),

                  // ── Third Bank Card ──
                  Row(
                    children: [
                      Expanded(
                        child: BankAccountCard(
                          bankName: "Best Bank",
                          accountNumber: "1142521547852",
                          balance: "35873.5",
                          color: Color(0xFF1E7A4E),
                        ), // BankAccountCard
                      ), // Expanded
                      SizedBox(width: 10),
                      Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: AppColors.TextColor,
                            width: 1.5,
                          ), // Border.all
                        ), // BoxDecoration
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.TextColor,
                          size: 14,
                        ), // Icon
                      ), // Container
                    ],
                  ), // Row

                  SizedBox(height: 16),

                  // ── Add / Manage Button ──
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.bgColor,
                        padding: EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ), // RoundedRectangleBorder
                      ), // ElevatedButton.styleFrom
                      child: Text(
                        "Add / Manage Accounts",
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 14,
                        ), // TextStyle
                      ), // Text
                    ), // ElevatedButton
                  ), // SizedBox
                  
                ],
              ),
            ), // Container
           
          ],
        ),
      ),
    ); // SingleChildScrollView
  }
}