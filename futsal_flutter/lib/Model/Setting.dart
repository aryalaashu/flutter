import 'package:flutter/material.dart';

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
    );
  }
}
