import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sam_cv/constants/app_colors.dart';

class CopyTextWidget extends StatelessWidget {
  const CopyTextWidget(
      {super.key,
      required this.title,
      required this.copyText,
      required this.message});

  final String title;
  final String copyText;
  final String message;

  Future<void> copyToClipboard(
      BuildContext context, String text, String message) async {
    await Clipboard.setData(ClipboardData(text: text));
    if (!context.mounted) return;
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 1),
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(5),
      onTap: () => copyToClipboard(context, copyText, message),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.copy,
              color: AppColors.textColor,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
