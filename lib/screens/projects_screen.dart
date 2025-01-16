import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sam_cv/constants/app_colors.dart';
import 'package:sam_cv/constants/app_string.dart';
import 'package:sam_cv/widgets/copy_text_widget.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key, required this.viewportFraction});

  static const List<String> projects = [
    'flutter_netflix.png',
    'monkey_ao.png',
    'explorer.png',
    'note_apper.png',
  ];

  final double viewportFraction;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider.builder(
          itemCount: projects.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/${projects[index]}'),
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: height * 0.7,
            enlargeCenterPage: true, // 突出顯示當前項目
            enableInfiniteScroll: false,
            viewportFraction: viewportFraction, // 控制每個項目的寬度占比
            scrollPhysics: const BouncingScrollPhysics(), // 增加彈性滾動效果
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.code,
                color: AppColors.textColor,
              ),
              SelectableText(
                AppString.github,
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        CopyTextWidget(
          copyText: AppString.github,
          message: 'Github 網址，複製成功',
          title: '複製 github 網址',
        ),
      ],
    );
  }
}
