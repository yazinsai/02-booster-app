import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DottedProgressBar extends StatelessWidget {
  final num progress;
  final LinearGradient gradient;

  const DottedProgressBar({Key key, this.progress, this.gradient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final singleDotWidth = 12 + 4; // right padding
        final maxDots = constraints.maxWidth / singleDotWidth;
        final numDots = (progress * maxDots).floor();

        final List<Widget> dots = [];
        for (int i = 0; i < numDots; i++) {
          final double pc = i / maxDots;

          dots.add(Padding(
            padding: EdgeInsets.only(right: 4),
            child: SvgPicture.asset(
              "./assets/dot.svg",
              width: 12,
              color: Color.lerp(gradient.colors[0], gradient.colors[1], pc),
            ),
          ));
        }

        return Container(
          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 4),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: dots,
          ),
        );
      },
    );
  }
}
