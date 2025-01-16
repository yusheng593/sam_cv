import 'package:flutter/material.dart';
import 'package:sam_cv/constants/app_colors.dart';
import 'package:sam_cv/constants/app_string.dart';
import 'package:sam_cv/constants/constants.dart';
import 'package:sam_cv/data/experience.dart';
import 'package:sam_cv/screens/projects_screen.dart';
import 'package:sam_cv/widgets/experience_widget.dart';
import 'package:sam_cv/widgets/introduction_widget.dart';
import 'package:sam_cv/widgets/personal_info_widget.dart';

class ResumeScreen extends StatelessWidget {
  const ResumeScreen({super.key});

  static const List<String> projects = [
    'flutter_netflix.png',
    'monkey_ao.png',
    'explorer.png',
    'note_apper.png',
  ];

  static var kSubtitleTextStyle = TextStyle(
    color: AppColors.textColor,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = MediaQuery.of(context).size.width > 600;
    return isLargeScreen
        ? const Row(
            children: [
              Expanded(
                flex: 1,
                child: PersonalInfoWidget(),
              ),
              Expanded(flex: 1, child: ProjectsScreen(viewportFraction: 0.5))
            ],
          )
        : SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(Constants.kDefaultPadding * 2),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                        top: Constants.kDefaultPadding * 2,
                        bottom: Constants.kDefaultPadding),
                    child: IntroductionWidget(),
                  ),
                  Text(
                    AppString.introduce,
                    style: kSubtitleTextStyle,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: Constants.kDefaultPadding,
                        bottom: Constants.kDefaultPadding),
                    child: Divider(),
                  ),
                  ...experience.map(
                    (e) => ExperienceWidget(experience: e),
                  ),
                  Center(
                    child: Text(
                      AppString.trainingCenter,
                      style:
                          TextStyle(color: AppColors.textColor, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
