import 'dart:ui';

import 'package:bookly_app/constants/assets.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

class HomeBestsellerItem extends StatelessWidget {
  const HomeBestsellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.detailsScreen);
      },
      child: Container(
        color: Colors.transparent,
        alignment: AlignmentDirectional.topStart,
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 70,
              height: 105,
              alignment: AlignmentDirectional.topStart,
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
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsetsDirectional.only(start: 30, top: 8, end: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Harry Potter and the Goblet of Fire',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'J.K. Rowling',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          '19.99 €',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(
                          flex: 4,
                        ),
                        Icon(
                          Icons.star,
                          size: 18,
                          color: Colors.amber,
                        ),
                        Text(
                          '4.8',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '(4545)',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
