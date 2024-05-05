import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tickets_test_app/common/theme/app_fonts.dart';
import 'package:tickets_test_app/features/search_sheet/domain/button_data.dart';

class ButtonItem extends StatelessWidget {
  const ButtonItem({
    super.key,
    required this.buttonData,
    required this.onTap,
  });

  final ButtonData buttonData;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: buttonData.color,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(12),
              child: buttonData.svg.svg(),
            ),
            SizedBox(height: 8.h),
            Text(
              buttonData.title,
              style: AppFonts.regular14,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
