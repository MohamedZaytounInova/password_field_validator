import 'package:flutter/material.dart';

@immutable
class ValidatorItemWidget extends StatelessWidget {
  final String text;
  final int conditionValue;
  final Color color;
  final bool value;
  final Widget? checked;
  final Widget? unChecked;

  const ValidatorItemWidget(
      this.text, this.conditionValue, this.color, this.value,
      {Key? key, this.checked, this.unChecked})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        children: [
          Container(
            child: value
                ? checked ??
                    Icon(
                      Icons.check_circle,
                      color: color,
                    )
                : unChecked ??
                    Icon(
                      Icons.question_mark,
                      color: color,
                    ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Text('$text'),
          ),
        ],
      ),
    );
  }
}
