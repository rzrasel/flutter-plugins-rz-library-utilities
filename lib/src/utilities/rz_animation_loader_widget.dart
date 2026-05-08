import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rz_theme_set_1/rz_theme_set_1.dart';

class RzAnimationLoaderWidget extends StatelessWidget {
  const RzAnimationLoaderWidget({
    super.key,
    required this.text,
    required this.animation,
    this.showAction = false,
    this.actionText,
    this.onActionPressed,
    this.width,
    this.height,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          //Lottie.asset(animation, width: width, height: height ?? MediaQuery.of(context).size.height * 0.5,),
          SizedBox(height: RzTheme.size.defaultSpaceGet,),
          Text(
            text,
            style: style ?? Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: RzTheme.size.defaultSpaceGet,),
          showAction
              ? SizedBox(
            width: 250,
            child: OutlinedButton(
                onPressed: onActionPressed,
                child: Text(
                  actionText!,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
            ),
          ) : SizedBox(),
        ],
      ),
    );
  }
}
