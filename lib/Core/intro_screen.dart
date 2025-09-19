import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:training_task/Routing/app_routes.dart';
import 'package:training_task/Style/app_asset.dart';
import 'package:training_task/Style/app_colors.dart';
import 'package:training_task/widgets/photo_widget.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  late CarouselSliderController carouselController;
  double currentindex = 0;
  List imageSlider = [
    PhotoWidget(assetLocation: AppAsset.intro1),
    PhotoWidget(assetLocation: AppAsset.intro2),
    PhotoWidget(assetLocation: AppAsset.intro3),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    carouselController = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 18.h),
          SafeArea(
            child: CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                height: 400,
                aspectRatio: 16 / 9,
                viewportFraction: 0.9,
                initialPage: 0,
                enableInfiniteScroll: false,
                reverse: false,
                enlargeCenterPage: true,
                enlargeFactor: 0.4,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentindex = index.toDouble();
                  });
                },
              ),
              items: imageSlider.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return item;
                  },
                );
              }).toList(),
            ),
          ),
          SizedBox(height: 20.h),
          Text("Lorem ipsum", style: Theme.of(context).textTheme.titleLarge),
          SizedBox(height: 28.h),
          DotsIndicator(
            dotsCount: 3,
            position: currentindex,
            decorator: DotsDecorator(
              color: AppColors.mainColor,
              activeColor: AppColors.mainColor,
              size: Size.square(9.0),
              activeSize: Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 34),
              InkWell(
                onTap: () {
                  GoRouter.of(context).pushNamed(AppRoutes.radioChoice);
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  if (currentindex <= 2) {
                    setState(() {
                      currentindex += 1;
                      carouselController.animateToPage(currentindex.toInt());
                    });
                    if (currentindex > 2) {
                      GoRouter.of(context).pushNamed(AppRoutes.radioChoice);
                      currentindex = 2;
                      carouselController.animateToPage(currentindex.toInt());
                    }
                  }
                },
                icon: Icon(
                  Icons.arrow_circle_right_outlined,
                  size: 48,
                  color: AppColors.mainColor,
                ),
              ),
              SizedBox(width: 34.w),
            ],
          ),
          SizedBox(height: 30.h),
        ],
      ),
    );
  }
}
