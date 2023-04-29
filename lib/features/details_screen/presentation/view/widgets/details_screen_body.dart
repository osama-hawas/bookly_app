import 'package:bookly_app/constants/assets.dart';
import 'package:bookly_app/features/details_screen/presentation/view/widgets/details_app_bar.dart';
import 'package:flutter/material.dart';

import 'details_list_view.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const DetailsScreenAppBar(),
            Container(
              width: 162,
              height: 243,
              alignment: AlignmentDirectional.center,
              margin: const EdgeInsets.symmetric(horizontal: 105, vertical: 34),
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
            const Text(
              'The Jungle Book',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 4, bottom: 14),
              child: Text(
                'Rudyard Kipling',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.star,
                  size: 14,
                  color: Colors.amber,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  '4.8',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 9,
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
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    // width: 150,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 16),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(16),
                          bottomStart: Radius.circular(16),
                        ),
                        color: Colors.white),
                    child: const FittedBox(
                      fit: BoxFit.fill,
                      child: Text(
                        '19.99€',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    // width: 150,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 16),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(16),
                          bottomEnd: Radius.circular(16),
                        ),
                        color: Color(0xffEF8262)),
                    child: const FittedBox(
                      fit: BoxFit.fill,
                      child: Text(
                        'Free preview',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 30),
                  child: Text(
                    'You can also like',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Spacer(),
              ],
            ),
            Container(
              height: 160,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              alignment: Alignment.center,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) => const DetailsListView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
