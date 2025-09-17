import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:training_task/Routing/app_routes.dart';
import 'package:training_task/Style/app_asset.dart';
import 'package:training_task/Style/app_colors.dart';
import 'package:training_task/Style/app_styles.dart';
import 'package:training_task/widgets/photo_widget.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  bool isPlaying = false;
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _audioPlayer = AudioPlayer();
  }

  void _playMusic() async {
    await _audioPlayer.play(AssetSource(AppAsset.sound1));
  }

  void _pauseMusic() async {
    await _audioPlayer.pause();
  }

  void _stopMusic() async {
    await _audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Choice",
          style: AppStyles.primarystyle.copyWith(
            color: AppColors.whiteColor,
            fontSize: 16,
          ),
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => GoRouter.of(context).pop(),
          icon: Icon(Icons.list, color: AppColors.whiteColor),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 18.h),
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
          ],
        ),
              child: ClipOval(
                child: Image.asset(AppAsset.logo, fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 80.h),
            Text(
              "Choices",
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(fontSize: 30),
            ),
            SizedBox(height: 18.h),
            IconButton(
              onPressed: () {
                _playMusic();
              },
              icon: Icon(
                Icons.play_circle_fill_outlined,
                size: 80,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 18.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.facebook_outlined,
                    size: 60,
                    color: Colors.blueAccent,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.squareXTwitter, size: 40),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.squareInstagram,
                    size: 40,
                    color: Colors.pinkAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
