import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../constants/assets.dart';

class DetailsListView extends StatelessWidget {
  const DetailsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: double.infinity,
      alignment: AlignmentDirectional.topStart,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(
            AssetsLink.testImage,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
