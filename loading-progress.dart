import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class CustomLoadingProgress extends StatelessWidget {
  Color? color;
  CustomLoadingProgress({super.key,this.color});

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.fourRotatingDots(color:color ?? Colors.white, size: 30);
  }
}
