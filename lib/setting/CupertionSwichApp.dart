import 'package:flutter/cupertino.dart';


class CupertinoSwitchExample extends StatefulWidget {
  const CupertinoSwitchExample({super.key});

  @override
  State<CupertinoSwitchExample> createState() => _CupertinoSwitchExampleState();
}

class _CupertinoSwitchExampleState extends State<CupertinoSwitchExample> {
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            // This bool value toggles the switch.
            value: switchValue,
            activeColor: CupertinoColors.destructiveRed,
            onChanged: (bool? value) {
              // This is called when the user toggles the switch.
              setState(() {
                switchValue = value ?? false;
              });
            },
          ),
        ),
      ),
    );
  }
}
