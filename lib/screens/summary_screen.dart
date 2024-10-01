import 'package:flutter/material.dart';
import 'package:submission_pemula/components/summary_card.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SummaryCard(),
            Container(),
          ],
        ),
      ),
    );
  }
}
