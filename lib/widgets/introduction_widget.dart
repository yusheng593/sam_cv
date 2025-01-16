import 'package:flutter/material.dart';
import 'package:sam_cv/constants/app_colors.dart';
import 'package:sam_cv/constants/app_string.dart';
import 'package:sam_cv/widgets/copy_text_widget.dart';

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({super.key});

  static var kSubtitleTextStyle = TextStyle(
    color: AppColors.textColor,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          width: width * 0.3,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(AppString.imgAvatar),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppString.myName,
              style: TextStyle(
                color: AppColors.textColor,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.phone_iphone,
                  color: AppColors.textColor,
                ),
                Text(
                  AppString.jobTitle,
                  style: kSubtitleTextStyle,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.code,
                  color: AppColors.textColor,
                ),
                Text(
                  AppString.flutter,
                  style: TextStyle(
                    color: AppColors.flutterColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  AppString.uiKit,
                  style: TextStyle(
                    color: AppColors.uiKitColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: AppColors.textColor,
                ),
                Text(
                  AppString.city,
                  style: kSubtitleTextStyle,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.email_outlined,
                      color: AppColors.textColor,
                    ),
                    SelectableText(
                      AppString.email,
                      style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                CopyTextWidget(
                  copyText: AppString.email,
                  message: '複製信箱成功',
                  title: '複製信箱',
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
