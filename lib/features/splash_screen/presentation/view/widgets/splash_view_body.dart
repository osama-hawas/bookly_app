import 'package:animate_do/animate_do.dart';
import 'package:bookly_app/constants/assets.dart';
import 'package:flutter/cupertino.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment.center,
      padding:const EdgeInsets.symmetric(horizontal: 16),
      child: SpinPerfect(
        duration:const Duration(seconds: 1),
        child: ElasticIn(
            duration:const Duration(seconds: 3),
            child: Image.asset(AssetsLink.logo)),
      ),
    );
  }
}
