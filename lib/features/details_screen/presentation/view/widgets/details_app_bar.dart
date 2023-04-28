import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

class DetailsScreenAppBar extends StatelessWidget {
  const DetailsScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      height: 70,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            padding: EdgeInsets.zero,
            icon: const Icon(
              Icons.close,
              size: 32,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
