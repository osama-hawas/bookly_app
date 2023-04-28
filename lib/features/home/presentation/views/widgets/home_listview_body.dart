import 'package:bookly_app/constants/assets.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeListViewBody extends StatelessWidget {
  const HomeListViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        GoRouter.of(context).push(AppRoutes.detailsScreen);
      }),
      child: Container(
        width: 110,
        height: double.infinity,
        alignment: AlignmentDirectional.topStart,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: NetworkImage(
              AssetsLink.testImage,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
