import 'package:flutter/material.dart';

class ExpandableTextView extends StatefulWidget {
  final String text;
  final TextStyle textStyle;
  final TextStyle moreTextStyle;
  final Color backColor;
  final int maxLines;

  const ExpandableTextView({
    super.key,
    required this.text,
    required this.textStyle,
    required this.moreTextStyle,
    required this.maxLines,
    required this.backColor,
  });

  @override
  State<ExpandableTextView> createState() => _ExpandableTextViewState();
}

class _ExpandableTextViewState extends State<ExpandableTextView> {
  bool _isExpanded = false;

  overViewExpand() {
    setState(() {
      _isExpanded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final TextPainter textPainter = TextPainter(
          text: TextSpan(text: widget.text),
          maxLines: widget.maxLines,
          textDirection: TextDirection.ltr,
        )..layout(maxWidth: constraints.maxWidth - 50);

        final bool isTextOverflowing = textPainter.didExceedMaxLines;

        return Stack(
          clipBehavior: Clip.none,
          children: [
            Text(
              widget.text,
              style: widget.textStyle,
              maxLines: _isExpanded ? null : widget.maxLines,
            ),
            Visibility(
              visible: isTextOverflowing,
              child: Positioned(
                right: 0,
                bottom: 0,
                child: Row(
                  children: [
                    Container(
                      width: 10,
                      height: 20,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            widget.backColor.withOpacity(0.9),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                    ),
                    Visibility(
                      visible: !_isExpanded,
                      child: ColoredBox(
                        color: widget.backColor,
                        child: GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: () {
                            setState(() {
                              _isExpanded = !_isExpanded;
                            });
                          },
                          child: Text(
                            ' ...더보기',
                            style: widget.moreTextStyle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
