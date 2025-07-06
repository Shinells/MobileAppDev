import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'screens/transfer_screen.dart';
import 'screens/splash_screen.dart';
import 'screens/cards_screen.dart';
import 'screens/help_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/notifications_screen.dart';
import 'screens/more_screen.dart';
import 'screens/login_screen.dart';
import 'screens/bills_payment_screen.dart';
import 'screens/accounts_balances_screen.dart';
import 'screens/transaction_history_screen.dart';

void main() {
  runApp(BankingApp());
}

class BankingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Bank App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Montserrat',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (context) => SplashScreen(),
        AppRoutes.cards: (context) => CardsScreen(),
        AppRoutes.help: (context) => HelpScreen(),
        AppRoutes.dashboard: (context) => DashboardScreen(),
        AppRoutes.transfer: (context) => TransferScreen(),
        AppRoutes.notifications: (context) => NotificationsScreen(),
        AppRoutes.more: (context) => MoreScreen(),
        AppRoutes.login: (context) => LoginScreen(),
        AppRoutes.bills: (context) => BillsPaymentScreen(),
        AppRoutes.accounts: (context) => AccountsAndBalancesScreen(),
        AppRoutes.history: (context) => TransactionHistoryScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
