import 'package:flutter/material.dart';

class MonthlyBar extends StatelessWidget {
  const MonthlyBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        // BarItem(
        //   score: 80,
        //   title: 'Aug',
        // ),
        // BarItem(
        //   score: 90,
        //   title: 'Aug',
        //   isEven: true,
        // ),
        // BarItem(
        //   score: 80,
        //   title: 'Aug',
        // ),
        // BarItem(
        //   score: 70,
        //   title: 'Aug',
        //   isEven: true,
        // ),
        // BarItem(
        //   score: 80,
        //   title: 'Aug',
        // ),
        // BarItem(
        //   score: 40,
        //   title: 'Aug',
        //   isEven: true,
        // ),
        BarItem(
          score: 40,
        ),
        BarItem(
          score: 60,
        ),
        BarItem(
          score: 55,
        ),
        BarItem(
          score: 80,
        ),
        BarItem(
          score: 20,
          title: 'Current',
          isLast: true,
        )
      ],
    );
  }
}

class BarItem extends StatelessWidget {
  final double score;
  final bool isEven;
  final bool isLast;
  final String? title;
  const BarItem({
    super.key,
    required this.score,
    this.title,
    this.isEven = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Bar(
            score: score,
            isEven: isEven,
            isLast: isLast,
          ),
          // render title here if exist
          // if (title != null) Text(title!)
          title != null ? Text(title!) : const SizedBox(height: 20)
        ],
      ),
    );
  }
}

class Bar extends StatelessWidget {
  static const barHeight = 100.0;
  final bool isEven;
  final double score;
  final bool isLast;
  const Bar({
    super.key,
    required this.score,
    this.isEven = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: barHeight,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: barHeight,
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Container(
            height: score,
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            decoration: BoxDecoration(
              color: isLast
                  ? Colors.yellow[700]
                  : Colors.black.withAlpha(
                      isEven ? 100 : 170,
                    ),
              borderRadius: BorderRadius.circular(8),
            ),
          )
        ],
      ),
    );
  }
}
