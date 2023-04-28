import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'home_listview_body.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      alignment: Alignment.center,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => HomeListViewBody(),
      ),
    );
  }
}
