import 'package:flutter/material.dart';
import '../screens/cards_screen.dart';
import '../screens/help_screen.dart';
import '../screens/notifications_screen.dart';
import '../screens/more_screen.dart';
import '../routes/app_routes.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeContent(), // Home
    CardsScreen(), // Cards
    HelpScreen(), // Help
    NotificationsScreen(), // Notifications
    MoreScreen(), // More
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _selectedIndex == 0,
      onPopInvoked: (didPop) {
        if (!didPop && _selectedIndex != 0) {
          setState(() {
            _selectedIndex = 0;
          });
        }
      },
      child: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: "Cards",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help_outline),
              label: "Help",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: "More",
            ),
          ],
        ),
      ),
    );
  }
}

// This will preserve route logic while nesting inside the tab
class NavigatorPage extends StatelessWidget {
  final String routeName;
  const NavigatorPage({required this.routeName});

  @override
  Widget build(BuildContext context) {
    Future.microtask(() => Navigator.pushNamed(context, routeName));
    return Center(child: CircularProgressIndicator());
  }
}

// Original home screen content
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildHeader(context),
          _buildAccountCard(),
          _buildQuickTransactionGrid(context),
          _buildGetStartedSection(),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 50, 16, 20),
      color: Color(0xFF014e80),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20,
            child: Icon(Icons.person, color: Colors.blue),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              'Shinell Naa Ayeley Aryee',
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(width: 8),
          Image.asset('assets/images/ghana_flag.png', height: 24),
        ],
      ),
    );
  }

  Widget _buildAccountCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF0073b1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Xpress Account",
                  style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600)),
              Icon(Icons.settings, color: Colors.white70),
            ],
          ),
          SizedBox(height: 4),
          Text("1441004980753", style: TextStyle(color: Colors.white70, fontSize: 13)),
          SizedBox(height: 16),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.white),
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            ),
            child: Text("Show my balance"),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickTransactionGrid(BuildContext context) {
    final items = [
      {"title": "Airtime/Data", "icon": Icons.smartphone, "route": null},
      {"title": "Transfer", "icon": Icons.sync_alt, "route": AppRoutes.transfer},
      {"title": "Pay Bill", "icon": Icons.receipt_long, "route": null},
      {"title": "Xpress Cash", "icon": Icons.flash_on, "route": null},
      {"title": "EcobankPay", "icon": Icons.qr_code, "route": null},
      {"title": "Split Payments", "icon": Icons.call_split, "route": null},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 3.5,
        children: items.map((item) {
          return GestureDetector(
            onTap: () {
              if (item['route'] != null) {
                Navigator.pushNamed(context, item['route'] as String);
              }
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
              ),
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Icon(item['icon'] as IconData, color: Color(0xFF014e80)),
                  SizedBox(width: 10),
                  Flexible(
                    child: Text(item['title'] as String, style: TextStyle(fontSize: 13)),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildGetStartedSection() {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "GET STARTED",
            style: TextStyle(
              color: Color(0xFF014e80),
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          SizedBox(height: 10),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.yellow.shade100,
                child: Icon(Icons.group_add, color: Colors.orange),
              ),
              title: Text("Invite friends."),
              subtitle: Text("Sign up a friend"),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // TODO: Invite logic
              },
            ),
          ),
        ],
     ),
);
}
}