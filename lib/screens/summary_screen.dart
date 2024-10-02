import 'package:flutter/material.dart';
import 'package:submission_pemula/components/summary_card.dart';
import 'package:submission_pemula/components/transaction_card.dart';
import 'package:submission_pemula/data/transaction.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SummaryCard(), // Assuming you have this widget defined elsewhere
            const SizedBox(height: 16), // Spacing between sections
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Transaction History',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Transaction List
            ListView.builder(
              physics:
                  const NeverScrollableScrollPhysics(), // Prevent inner scrolling
              shrinkWrap: true,
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return TransactionCard(transaction: transactions[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
