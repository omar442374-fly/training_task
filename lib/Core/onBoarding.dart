import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:training_task/Routing/app_routes.dart';
import 'package:training_task/Style/app_asset.dart';
import 'package:training_task/Style/app_colors.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  void initState() {
    super.initState();
    // Navigate after 3 seconds
    Timer(const Duration(seconds: 2), () {
      GoRouter.of(context).pushNamed(AppRoutes.introPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: InkWell(
        onTap: () => GoRouter.of(context).pushNamed(AppRoutes.introPage),
        child: Center(
          child: Container(
            child: Image.asset(AppAsset.logo, width: 200, height: 200),
          ),
        ),
      ),
    );
  }
}
