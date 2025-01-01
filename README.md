
![](https://github.com/ilkin0120/custom_switch_flutter/blob/main/example_files/test.gif?raw=true)

<h2 align="center"> A Custom Flutter Switch Widget 🚀 </h2>

<p align="center">
Customizable and animated switch widget for Flutter with support for various styles 🤤
   <br>
   <span style="font-size: 0.9em"> Show some ❤️ and <a href="https://github.com/ilkin0120/custom_switch_flutter/">star the repo</a> to support the project! </span>
</p>

<br>

## Getting Started
Follow these steps to use this widget

```bash
git clone https://github.com/ilkin0120/custom_switch_flutter.git
```

### Move and import the file

Move the `custom_switch.dart` file to your desired folder in your project and import it as follows:

```dart
import 'path/custom_switch.dart';
```

### Easy to use
Simple example of using `CustomSwitch`<br>
Put this code in your project and learn how it works 😊

```dart
CustomSwitch(
  value: true, // Current state of the switch
  isEnabled: true, // Allows interaction when true
  onToggle: (bool value) {
    print('Switch toggled to: \$value');
  },
)
```

### Customization
`CustomSwitch` supports three states:
- **Disabled**: The switch is not interactive (`isEnabled: false`).
- **On**: The switch is active (`value: true`).
- **Off**: The switch is inactive (`value: false`).

**CustomSwitch** provides several parameters to customize its behavior and appearance:

- `value`: Initial state of the switch (on/off).
- `onToggle`: Callback when the switch is toggled.
- `isEnabled`: Enables or disables interaction with the switch.
- `backgroundOnColor`, `backgroundOffColor`, `backgroundDisableColor`: Colors for different states.
- `thumbColor`, `thumbDisableColor`: Thumb colors for enabled/disabled states.
- `width`, `height`: Dimensions of the switch.
- `thumbSize`: Size of the thumb.
- `radius`, `thumbRadius`: Border radius of the switch and thumb.
- `backgroundBorder`, `thumbBorder`: Borders for the switch background and thumb.

### Fully Customize
Customize the widget to match your app's design:

```dart
CustomSwitch(
  width: 48,
  height: 24,
  thumbRadius: 23,
  thumbColor: Colors.white,
  backgroundOnColor: const Color(0xFF44AA8C),
  backgroundOffColor: const Color(0xFF575757),
  radius: 30,
  thumbSize: 18,
  value: first,
  isEnabled: true,
  onToggle: (value) {
    setState(() {
      first = value;
  });
})
```
