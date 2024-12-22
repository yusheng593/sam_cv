import 'package:flutter/material.dart';
import 'package:sam_cv/constants/app_colors.dart';
import 'package:sam_cv/data/experience.dart';

import 'package:intl/intl.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key, required this.experience});

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    final DateFormat dateFormat = DateFormat('yyyy-MM');
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Column(
          children: [
            Column(
              children: [
                Text(
                  '${experience.companyName}\n${experience.position}',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.textColor, fontSize: 16),
                ),
                Text(
                  '${dateFormat.format(experience.startDate)} - ${experience.endDate == null ? 'Present' : dateFormat.format(experience.endDate ?? DateTime.now())}',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: AppColors.subtextColor, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Container(
              width: 1,
              height: 50,
              color: AppColors.textColor,
            ),
          ],
        ),
      ),
    );
  }
}
