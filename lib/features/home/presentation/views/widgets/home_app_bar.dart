import 'package:bookly_app/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      height: 70,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Image.asset(AssetsLink.logo),
          ),
          Spacer(),
          Icon(
            Icons.search,
            size: 32,
          ),
        ],
      ),
    );
  }
}
