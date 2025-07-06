import 'package:flutter/material.dart';

class TransferScreen extends StatelessWidget {
  final List<Map<String, dynamic>> transferOptions = [
    {
      "title": "Ecobank Domestic",
      "icon": Icons.sync_alt,
      "color": Color(0xFF0073b1),
    },
    {
      "title": "Other Local Banks",
      "icon": Icons.account_balance,
      "color": Color(0xFF2ecc71),
    },
    {
      "title": "Mobile Money",
      "icon": Icons.mobile_screen_share,
      "color": Color(0xFF3498db),
    },
    {
      "title": "Standing order",
      "icon": Icons.calendar_today,
      "color": Color(0xFF9b59b6),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              // Header with Back + Title + TabBar
              Container(
                color: Color(0xFF014e80),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Icon(Icons.arrow_back, color: Colors.white),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              'Transfer',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 24), // Balance the back icon
                      ],
                    ),
                    SizedBox(height: 16),

                    // Capsule-style TabBar
                    Container(
                      height: 44,
                      decoration: BoxDecoration(
                        color: Color(0xFF006a9c),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TabBar(
                        indicator: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        indicatorPadding: EdgeInsets.all(-3),
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.white,
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                        unselectedLabelStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        tabs: [
                          Tab(text: 'Transfer'),
                          Tab(text: 'Request'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // TabBar Content
              Expanded(
                child: TabBarView(
                  children: [
                    // TRANSFER TAB
                    ListView.builder(
                      padding: EdgeInsets.all(16),
                      itemCount: transferOptions.length,
                      itemBuilder: (context, index) {
                        final option = transferOptions[index];
                        return Card(
                          elevation: 0,
                          margin: EdgeInsets.symmetric(vertical: 6),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: option['color'].withOpacity(0.1),
                              child: Icon(
                                option['icon'],
                                color: option['color'],
                              ),
                            ),
                            title: Text(option['title']),
                            trailing: Icon(Icons.arrow_forward_ios, size: 16),
                            onTap: () {
                              // TODO: Implement navigation to each form
                            },
                          ),
                        );
                      },
                    ),

                    // REQUEST TAB
                    Center(
                      child: Text(
                        'Request Feature Coming Soon',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
