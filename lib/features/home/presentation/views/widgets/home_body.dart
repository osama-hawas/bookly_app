import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home_app_bar.dart';
import 'home_bestseller_listview.dart';
import 'home_listview.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const HomeAppBar(),
        const HomeListView(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          padding: const EdgeInsetsDirectional.only(start: 8),
          child: const Text(
            'Best Seller',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
          ),
        ),
        const HomeBestSellerListview(),
      ]),
    );
  }
}
