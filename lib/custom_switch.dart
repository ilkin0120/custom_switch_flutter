import 'package:flutter/material.dart';

/// A custom switch widget that supports animations and configurable styles.
class CustomSwitch extends StatelessWidget {
  /// Current value of the switch.
  final bool value;

  /// Determines whether the switch is enabled.
  final bool isEnabled;

  /// Callback function to thumb toggle events.
  final Function(bool) onToggle;

  /// Background color when the switch is disabled.
  final Color backgroundDisableColor;

  /// Background color when the switch is enabled and on.
  final Color backgroundOnColor;

  /// Background color when the switch is enabled and off.
  final Color backgroundOffColor;

  /// Optional border for the switch background.
  final Border? backgroundBorder;

  /// Border radius of the switch background.
  final double radius;

  /// Width of the switch.
  final double width;

  /// Height of the switch.
  final double height;

  /// Animation duration for the switch toggle.
  final Duration thumbAnimationDuration;

  /// Thumb color when the switch is disabled.
  final Color thumbDisableColor;

  /// Thumb color when the switch is enabled.
  final Color thumbColor;

  /// Optional border for the thumb.
  final Border? thumbBorder;

  /// Size of the thumb inside the switch.
  final double thumbSize;

  /// Border radius for the thumb.
  final double thumbRadius;

  const CustomSwitch({
    super.key,
    required this.value,
    required this.onToggle,
    this.isEnabled = true,
    this.thumbAnimationDuration = const Duration(milliseconds: 300),
    this.backgroundDisableColor = const Color(0xFFF1F1F1),
    this.backgroundOnColor = const Color(0xFF0D6BE9),
    this.backgroundOffColor = const Color(0xFFE2E2E2),
    this.backgroundBorder,
    this.width = 42,
    this.radius = 50,
    this.height = 24,
    this.thumbColor = Colors.white,
    this.thumbDisableColor = Colors.white,
    this.thumbSize = 18,
    this.thumbRadius = 100,
    this.thumbBorder,
  });

  /// Determines the background color based on the switch state and whether it's enabled.
  Color _getBackgroundColor() {
    if (isEnabled) {
      return value ? backgroundOnColor : backgroundOffColor;
    }
    return backgroundDisableColor;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: AnimatedContainer(
          duration: thumbAnimationDuration,
          curve: Curves.decelerate,
          width: width,
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(radius),
              color: _getBackgroundColor(),
              border: backgroundBorder),
          child: AnimatedAlign(
            duration: thumbAnimationDuration,
            alignment: value ? Alignment.centerRight : Alignment.centerLeft,
            curve: Curves.decelerate,
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                width: thumbSize,
                height: thumbSize,
                decoration: BoxDecoration(
                  color: isEnabled ? thumbColor : thumbDisableColor,
                  border: thumbBorder,
                  borderRadius: BorderRadius.circular(thumbRadius),
                ),
              ),
            ),
          ),
        ),
        onTap: () {
          if (isEnabled) {
            onToggle(!value);
          }
        });
  }
}
