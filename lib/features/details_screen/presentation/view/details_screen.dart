import 'package:bookly_app/features/details_screen/presentation/view/widgets/details_screen_body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Scaffold(
      body: DetailsScreenBody(),
      ),
    );
  }
}
