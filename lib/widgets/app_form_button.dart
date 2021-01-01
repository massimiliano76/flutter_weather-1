import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppFormButton extends StatelessWidget {
  final Function onTap;
  final String text;
  final Color color;
  final Color disabledColor;
  final Color textColor;
  final bool textButton;
  final Widget icon;

  AppFormButton({
    Key key,
    this.onTap,
    this.text,
    this.color,
    this.disabledColor,
    this.textColor,
    this.textButton = false,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) =>
      FlatButton(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        color: (color == null) ? Colors.deepPurple[400] : color,
        disabledTextColor: Colors.white.withOpacity(0.3),
        disabledColor: (disabledColor == null)
            ? textButton
                ? Colors.white.withOpacity(0.5)
                : Colors.deepPurple[400].withOpacity(0.5)
            : disabledColor,
        textColor: (textColor == null) ? Colors.white : textColor,
        child: (icon == null)
            ? (text == null)
                ? Container()
                : Text(text)
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                        right: (text == null) ? 0.0 : 5.0,
                      ),
                      child: icon),
                  (text == null) ? Container() : Text(text),
                ],
              ),
        onPressed: onTap,
      );
}
