import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  const ExpandableTextWidget({
    super.key,
    required this.text,
    this.cutText = 200,
    required this.textStyle,
    required this.readMoreTextStyle,
  });

  final String text;
  final int cutText;
  final TextStyle textStyle;
  final TextStyle readMoreTextStyle;

  @override
  State<ExpandableTextWidget> createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  String firstHalf = '';
  String secondHalf = '';
  bool isExpanded = false;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > widget.cutText) {
      firstHalf = widget.text.substring(0, widget.cutText);
      secondHalf = widget.text.substring(widget.cutText, widget.text.length);
    } else {
      firstHalf = widget.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return secondHalf.isEmpty
        ? Text(
            firstHalf,
            style: widget.textStyle,
          )
        : GestureDetector(
            onTap: () => setState(() => isExpanded = !isExpanded),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isExpanded ? (firstHalf + secondHalf) : ('$firstHalf . . .'),
                  style: widget.textStyle,
                ),
                Text(
                  isExpanded ? 'Show less' : 'Read more',
                  style: widget.readMoreTextStyle,
                ),
              ],
            ),
          );
  }
}
