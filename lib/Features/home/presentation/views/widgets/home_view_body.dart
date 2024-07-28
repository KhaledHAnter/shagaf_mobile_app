import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shagaf_mobile_app/Core/utils/assets.dart';
import 'package:shagaf_mobile_app/constants.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: kGreenPrimaryColor,
              image: DecorationImage(
                image: AssetImage(Assets.imagesSplashBackground),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Center(
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width / 4,
                child: AspectRatio(
                    aspectRatio: 95 / 160,
                    child: Image.asset(Assets.imagesLogoP2)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
