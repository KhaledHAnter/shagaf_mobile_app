import 'package:shagaf_mobile_app/Core/utils/assets.dart';

class OnboardingModel {
  final String title, description, image;

  OnboardingModel(
      {required this.title, required this.description, required this.image});
}

final List<OnboardingModel> onboardingData = [
  OnboardingModel(
    title: "Your favorite place to work",
    description:
        "In Shaghaf Co-working space,we provide a place that makes you more productive, enjoyable and comfortableA place made up of different parts",
    image: Assets.imagesOnboard1,
  ),
  OnboardingModel(
    title: "Delightful open air",
    description:
        "You can choose a game to play from the many games we have , sit at a comfortable base, or take pictures in the different places that have been specially made to take beautiful pictures.",
    image: Assets.imagesOnboard2,
  ),
  OnboardingModel(
    title: "Choose your favorite room",
    description:
        "You can find the right room for your current mood, as we have many rooms that meet all needs, You can move between funny room, training room and meeting room",
    image: Assets.imagesOnboard3,
  ),
];
