import 'package:flutter/material.dart';

class PhotoWidget extends StatelessWidget {
  String assetLocation;
  PhotoWidget({super.key, required this.assetLocation});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.7),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ClipOval(child: Image.asset(assetLocation, fit: BoxFit.cover)),
    );
  }
}
