import 'package:e_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CurvedEdgesWidget(
              child: Container(
                color: MyColors.primary,
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  height: 400,
                  child: Stack(
                    children: [
                      Positioned(
                          top: -100,
                          right: -200,
                          child: CircularContainer(
                              color: MyColors.textWhite.withOpacity(0.1))),
                      Positioned(
                          top: 100,
                          right: -250,
                          child: CircularContainer(
                              color: MyColors.textWhite.withOpacity(0.1))),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
