import 'package:flutter/material.dart';
import 'package:futsal_flutter/Model/Dashboard.dart';
import 'package:futsal_flutter/Model/Profile.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isNotificationsEnabled = true;
  int _selectedThemeIndex = 0;
  List<String> _themeOptions = ['Light', 'Dark', 'System'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Notifications',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text('Enable notifications'),
                ),
                Switch(
                  value: _isNotificationsEnabled,
                  onChanged: (value) {
                    setState(() {
                      _isNotificationsEnabled = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Appearance',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Theme',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _themeOptions.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_themeOptions[index]),
                  leading: Radio(
                    value: index,
                    groupValue: _selectedThemeIndex,
                    onChanged: (value) {
                      setState(() {
                        _selectedThemeIndex = value as int;
                      });
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        elevation: 8.0, // Add elevation to give it a shadow effect
        selectedItemColor: Colors.blue, // Change the selected item color
        unselectedItemColor: Colors.grey, // Change the unselected item color
        onTap: (int index) { // Add onTap event to navigate to respective pages
          switch(index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FutsalBookingDashboard()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
              break;
            case 2:

              break;
          }
        },
      ),
    );
  }
}
