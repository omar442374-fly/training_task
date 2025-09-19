import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_task/Style/app_styles.dart';

class CountryWidget extends StatelessWidget {
  String primaryText;
  String secondaryText;
  String countryFlag;
  VoidCallback onTap;
  CountryWidget({
    super.key,
    required this.primaryText,
    required this.secondaryText,
    required this.countryFlag,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(8.w),
        child: Container(
          height: 70.h,
          width: 330.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.15),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                ClipOval(
                  child: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child: Image.network(
                      countryFlag,
                      width: 50.w,
                      height: 35.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        primaryText,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        secondaryText,
                        style: AppStyles.primarystyle.copyWith(
                          color: Colors.grey,
                          fontSize: 12.r,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
