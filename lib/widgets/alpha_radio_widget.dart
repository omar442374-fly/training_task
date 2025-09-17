import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:training_task/Style/app_asset.dart';
import 'package:training_task/Style/app_colors.dart';
import 'package:training_task/Style/app_styles.dart';

class AlphaRadioWidget extends StatelessWidget {
  double? width, height;
  AlphaRadioWidget({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 330.w,
        height: 100.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: Color.fromARGB(255, 255, 242, 242),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image.network(
                  "https://static.vecteezy.com/system/resources/previews/019/878/133/non_2x/qkr-letter-logo-design-on-white-background-qkr-creative-circle-letter-logo-concept-qkr-letter-design-vector.jpg",
                  width: 110.w,
                  height: 100.h,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Alpha Radio",
                      style: AppStyles.primarystyle.copyWith(fontSize: 20),
                    ),
                    Text(
                      "The Best Radio For Music",
                      style: AppStyles.primarystyle.copyWith(
                        color: Colors.grey,
                        fontSize: 16,
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
