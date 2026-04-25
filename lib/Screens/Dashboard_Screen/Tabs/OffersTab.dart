import 'package:flutter/material.dart';
import 'package:ppp/utils/app_colors.dart';
import 'package:ppp/widgets/OfferCard_widget.dart';

class OffersTab extends StatelessWidget {
  const OffersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: AppColors.bgColor,
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            OfferCard(
              title: "Mobile Recharge Offer",
              subtitle: "Use Code FIRST20",
              description:
                  "Get 20% Instant cashback upto Rs 50 on your first mobile recharge. T&C apply",
              imagepath: "assets/offer/offer1.png", // add your asset path here
            ), // OfferCard
            OfferCard(
              title: "DTH Recharge Offer",
              subtitle: "Use Code FIRSDTHT20",
              description:
                  "Get 20% Instant cashback upto Rs 50 on your first DTH recharge. T&C apply",
              imagepath: "assets/offer/offer2.png", // add your asset path here
            ), // OfferCard
            OfferCard(
              title: "Flipcart Shopping Offer",
              subtitle: "",
              description:
                  "Shop on Flipcart using our payment system to get upto 50% cashback. T&C apply",
              imagepath: "assets/offer/offer3.png", // add your asset path here
            ), // OfferCard
            OfferCard(
              title: "Money Transfer Offer",
              subtitle: "",
              description:
                  "Get a scratch card with assured casbok and coupons on Money Transfer of Rs 500 or more. T&C apply",
              imagepath: "assets/offer/offer4.png", // add your asset path here
            ), // OfferCard
              OfferCard(
              title: "Rs 50 Off on Flights",
              subtitle: "",
              description: "Get instant discount on flat 50 Rs on Flight ticket booking. T&C apply",
              imagepath: "assets/offer/offer5.png", // add your asset path here
              showButton: true,
            ), // O
          
            SizedBox(height: 20),
          ],
        ),
      ),
    ); // SingleChildScrollView
  }
}