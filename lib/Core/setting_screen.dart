import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:training_task/Style/app_colors.dart';
import 'package:training_task/Themes/theme_provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingScreen> {
  bool isDayNightModeEnabled = false;
  bool isNotificationEnabled = true;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        automaticallyImplyLeading: false,
        title: Text('Settings', style: TextStyle(color: Colors.white)),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Icon(Icons.photo_camera, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // List Tiles for Settings Options
            _buildToggleTile(
              title: 'Day / Night Mode',
              value: themeProvider.themeMode == ThemeMode.dark,
              onChanged: (bool value) {
                themeProvider.toggleTheme(value);
                setState(() {
                  isDayNightModeEnabled = value;
                });
              },
            ),
            _buildDivider(),
            _buildActionTile(title: 'Clear Cache', icon: Icons.delete_outline),
            _buildDivider(),
            _buildToggleTile(
              title: 'Notification',
              value: isNotificationEnabled,
              onChanged: (bool value) {
                setState(() {
                  isNotificationEnabled = value;
                });
              },
            ),
            _buildDivider(),
            _buildNavigationTile(title: 'Privacy Policy'),
            _buildDivider(),
            _buildNavigationTile(title: 'Terms and Conditions'),
            // Version and Footer
            Padding(
              padding: EdgeInsets.only(left: 16.w, top: 16.h, bottom: 4.h),
              child: Text(
                'Version',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Text(
                'v1.0.1',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            SizedBox(height: 50.h),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Made with ❤ from SKM TechSoft',
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildToggleTile({
    required String title,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return ListTile(
      title: Text(title),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
        activeColor: Colors.red,
      ),
      onTap: () {
        onChanged(!value);
      },
    );
  }

  Widget _buildActionTile({required String title, required IconData icon}) {
    return ListTile(
      title: Text(title),
      trailing: Icon(icon, color: Colors.black54),
      onTap: () {
        // Handle "Clear Cache" action
      },
    );
  }

  Widget _buildNavigationTile({required String title}) {
    return const ListTile(
      title: Text('Privacy Policy'),
      trailing: Icon(Icons.chevron_right, color: Colors.black54),
      // Add onTap functionality here
    );
  }

  Widget _buildDivider() {
    return const Divider(height: 1, color: Colors.grey);
  }
}
