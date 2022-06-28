import 'package:internship_tasks_06/config/constants/assets_const.dart';

class OnBoardingPageModel {
  final String imageAsset;
  final String title;
  final String description;
  OnBoardingPageModel({
    required this.imageAsset,
    required this.title,
    required this.description,
  });
}

final List<OnBoardingPageModel> onBoardingData = [
  OnBoardingPageModel(
    imageAsset: AppAssets.onBoardingAsset1,
    title: 'Title is here to write',
    description:
        'description description description description description description',
  ),
  OnBoardingPageModel(
    imageAsset: AppAssets.onBoardingAsset2,
    title: 'Title is here to write',
    description:
        'description description description description description description',
  ),
  OnBoardingPageModel(
    imageAsset: AppAssets.onBoardingAsset3,
    title: 'Title is here to write',
    description:
        'description description description description description description',
  ),
];
