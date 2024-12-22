import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sam_cv/screens/resume_screen.dart';
import 'package:sam_cv/screens/projects_screen.dart';

import 'constants/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const ResumeScreen(),
    const ProjectsScreen(
      viewportFraction: 0.6,
    ),
  ];

  final List<Widget> _navBarItem = [
    Icon(
      Icons.person,
      color: AppColors.scaffoldBackgroundColor,
    ),
    Icon(
      Icons.dashboard,
      color: AppColors.scaffoldBackgroundColor,
    ),
  ];

  void _onNavigationTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = MediaQuery.of(context).size.width > 600;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        bottomNavigationBar: isLargeScreen
            ? null
            : CurvedNavigationBar(
                onTap: _onNavigationTap,
                items: _navBarItem,
                animationDuration: const Duration(milliseconds: 300),
                buttonBackgroundColor: AppColors.textColor,
                backgroundColor: AppColors.scaffoldBackgroundColor,
                color: AppColors.subtextColor,
                index: _selectedIndex,
              ),
        body: SafeArea(
          child:
              isLargeScreen ? const ResumeScreen() : _screens[_selectedIndex],
        ),
      ),
    );
  }
}
              // ? Row(
              //     children: [
              //       SafeArea(
              //         child: NavigationRail(
              //           backgroundColor: AppColors.subtextColor,
              //           destinations: [
              //             NavigationRailDestination(
              //               icon: Icon(
              //                 Icons.person,
              //                 color: AppColors.textColor,
              //               ),
              //               selectedIcon: Icon(
              //                 Icons.person,
              //                 color: AppColors.scaffoldBackgroundColor,
              //               ),
              //               label: const Text('Resume'),
              //             ),
              //             NavigationRailDestination(
              //               icon: Icon(
              //                 Icons.dashboard,
              //                 color: AppColors.textColor,
              //               ),
              //               selectedIcon: Icon(
              //                 Icons.dashboard,
              //                 color: AppColors.scaffoldBackgroundColor,
              //               ),
              //               label: const Text('Projects'),
              //             )
              //           ],
              //           selectedIndex: _selectedIndex,
              //           onDestinationSelected: _onNavigationTap,
              //           labelType: NavigationRailLabelType.all,
              //           selectedIconTheme:
              //               const IconThemeData(color: Colors.blue),
              //           selectedLabelTextStyle: TextStyle(
              //             color: AppColors.scaffoldBackgroundColor, // 选中文本的颜色
              //           ),
              //           unselectedIconTheme:
              //               const IconThemeData(color: Colors.grey),
              //           unselectedLabelTextStyle: TextStyle(
              //             color: AppColors.textColor, // 选中文本的颜色
              //           ),
              //         ),
              //       ),
              //       Expanded(child: _screens[_selectedIndex])
              //     ],
              //   )