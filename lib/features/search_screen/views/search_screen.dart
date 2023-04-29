import 'package:bookly_app/features/search_screen/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

import '../../home/presentation/views/widgets/home_bestseller_item.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          SearchTextField(onChanged: (value) {}),
          Container(
            alignment: AlignmentDirectional.topStart,
            margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: const Text(
              'Search Result :',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              // height: 500,
              alignment: AlignmentDirectional.topStart,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    10,
                    (index) => HomeBestsellerItem(),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
