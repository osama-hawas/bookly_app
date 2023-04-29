import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/routes.dart';
import 'home_bestseller_item.dart';

class HomeBestSellerListview extends StatelessWidget {
  const HomeBestSellerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 500,
        alignment: AlignmentDirectional.topStart,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: List.generate(
            10,
            (index) => GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRoutes.detailsScreen);
              },
              child: HomeBestsellerItem(),
            ),
          ),
        ));
  }
}
