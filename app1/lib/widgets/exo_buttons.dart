import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ExoButtons extends StatefulWidget {
  const ExoButtons({super.key});

  @override
  State<ExoButtons> createState() => _ExoButtonsState();
}

class _ExoButtonsState extends State<ExoButtons> {
  bool isRed = true;
  bool isIcon = true;
  bool isCheck = false;

  @override
  void initState() {
    super.initState();
  }

  void ChangeColor() {
    setState(() {
      isRed = !isRed;
    });
  }

  void ChangeIcon() {
    setState(() {
      isIcon = !isIcon;
    });
  }

  void ChangeText() {
    setState(() {
      isCheck = !isCheck;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ChangeColor();
        ChangeIcon();
        ChangeText();
      },
      child: Container(
          width: 300,
          height: 600,
          decoration: BoxDecoration(
            color: isRed
                ? Colors.red.withOpacity(0.3)
                : Colors.green.withOpacity(0.3),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isIcon
                  ? Icon(
                      Icons.highlight_off_outlined,
                      color: Colors.red,
                      size: 70,
                    )
                  : Icon(
                      Icons.check_circle_outline_outlined,
                      color: Colors.green,
                      size: 70,
                    ),
              isCheck
                  ? const Text('Valider',
                      style: TextStyle(fontSize: 30, color: Colors.green))
                  : const Text('Refuser',
                      style: TextStyle(fontSize: 30, color: Colors.red)),
            ],
          )),
    );
  }
}
