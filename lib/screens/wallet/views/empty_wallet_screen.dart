import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'components/wallet_balance_card.dart';

class EmptyWalletScreen extends StatelessWidget {
  const EmptyWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: WalletBalanceCard(
                balance: 384.90,
                onTabChargeBalance: () {},
              ),
            ),
            Spacer(flex: 2),
            Image.asset(
              Theme.of(context).brightness == Brightness.light
                  ? "assets/Illustration/EmptyState_lightTheme.png"
                  : "assets/Illustration/EmptyState_darkTheme.png",
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            Spacer(),
            Text(
              "Empty wallet history",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5, vertical: defaultPadding),
              child: Text(
                "Customer network effects freemium. Advisor android paradigm shift product management. Customer disruptive crowdsource",
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
