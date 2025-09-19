import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:training_task/Style/app_asset.dart';
import 'package:training_task/Style/app_colors.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        centerTitle: true,
        title: Text('About', style: TextStyle(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero section with an image
            Container(
              color: AppColors.mainColor,
              padding:  EdgeInsets.symmetric(vertical: 24.w),
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        AppAsset.logo,
                        width: 50.w,
                        height: 50.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                     SizedBox(height: 8.h),
                     Text(
                      'Alpha Radio',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.r,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     Text(
                      'The Best Radio For Music',
                      style: TextStyle(color: Colors.white70, fontSize: 16.r),
                    ),
                  ],
                ),
              ),
            ),
             SizedBox(height: 16.h),
            // Information list tiles
            _buildListTile(
              leadingIcon: Icons.business,
              title: 'Company',
              subtitle: 'Skm TechSoft',
            ),
            _buildDivider(),
            _buildListTile(
              leadingIcon: Icons.email,
              title: 'Email',
              subtitle: 'info@skmtechsoft.com',
            ),
            _buildDivider(),
            _buildListTile(
              leadingIcon: Icons.language,
              title: 'Website',
              subtitle: 'SkmTechSoft.com',
            ),
            _buildDivider(),
            _buildListTile(
              leadingIcon: Icons.star,
              title: 'Rate the app',
              subtitle: 'Show your love to us',
            ),
            _buildDivider(),
            _buildListTile(
              leadingIcon: Icons.share,
              title: 'Share',
              subtitle: 'Share with your friends',
            ),
          ],
        ),
      ),
    );
  }

  static Widget _buildListTile({
    required IconData leadingIcon,
    required String title,
    required String subtitle,
  }) {
    return ListTile(
      leading: Icon(leadingIcon, color: Colors.black54),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }

  static Widget _buildDivider() {
    return const Divider(height: 1, color: Colors.grey);
  }
}
