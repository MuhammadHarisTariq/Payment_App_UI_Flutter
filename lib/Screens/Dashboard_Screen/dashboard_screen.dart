import 'package:flutter/material.dart';
import 'package:ppp/Screens/Dashboard_Screen/Tabs/BalanceTab.dart';
import 'package:ppp/Screens/Dashboard_Screen/Tabs/HomeTab.dart';
import 'package:ppp/Screens/Dashboard_Screen/Tabs/OffersTab.dart';
import 'package:ppp/Screens/Dashboard_Screen/Tabs/RewardsTab.dart';
import 'package:ppp/utils/app_colors.dart';
import 'package:ppp/widgets/custom_appbar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        appBar: CustomAppbar(
          bottom: const TabBar(
            tabs: [
              Tab(text: "Home"),
              Tab(text: "Balance"),
              Tab(text: "Offers"),
              Tab(text: "Rewards"),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            Hometab(),
            const BalanceTab(),
            const OffersTab(),
            const RewardsTab(),
          ],
        ),
      ),
    );
  }
}