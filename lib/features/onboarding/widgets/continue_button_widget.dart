import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/util/app_colors.dart';
import '../../custom_widgets/custom_button.dart';

class ContinueButtonView extends StatefulWidget {
  final VoidCallback? onContinuePressed;
  final Widget child;
  final String? title;
  final IconData? rightIcon;

  const ContinueButtonView({
    super.key,
    required this.child,
    this.onContinuePressed,
    this.title,
    this.rightIcon,
  });

  @override
  State<ContinueButtonView> createState() => _ContinueButtonViewState();
}

class _ContinueButtonViewState extends State<ContinueButtonView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                widget.child,
                // const SizedBox(height: 16),

              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: CustomTextIconButton(
            onPressed: widget.onContinuePressed,
            text: widget.title ?? "Continue",
            rightIcon: widget.rightIcon,
            textSize: 20.w,
            textColor: AppColors.whiteColor,
            // isEnable: widget.onContinuePressed != null,
          ),
        ),

      ],
    );
  }
}
