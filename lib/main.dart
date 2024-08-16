import 'theme/app_theme.dart';
import 'routes/route_constants.dart';
import 'routes/router.dart' as router;
import 'package:flutter/material.dart';

void main() {
  runApp(const SwiftShop());
}

class SwiftShop extends StatelessWidget {
  const SwiftShop({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Swift Shop",
      theme: AppTheme.lightTheme(context),
      themeMode: ThemeMode.light,
      onGenerateRoute: router.generateRoute,
      initialRoute: onbordingScreenRoute,
    );
  }
}
