import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddTransactionScreen extends StatefulWidget {
  const AddTransactionScreen({super.key});

  @override
  State<AddTransactionScreen> createState() => _AddTransactionScreenState();
}

class _AddTransactionScreenState extends State<AddTransactionScreen> {
  final _formKey = GlobalKey<FormState>();
  String title = '';
  String labelId = '';
  double amount = 0.0;
  String currency = 'IDR';
  String notes = '';
  String imageSrc = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Transaction'),
        backgroundColor: Colors.yellow[700],
      ),
      backgroundColor: Colors.yellow[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Title',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) => setState(() => title = value),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a title';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Label ID',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) => setState(() => labelId = value),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Amount',
                    border: const OutlineInputBorder(),
                    prefixText: currency,
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: (value) =>
                      setState(() => amount = double.tryParse(value) ?? 0),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an amount';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Notes',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                  onChanged: (value) => setState(() => notes = value),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print(
                          'Transaction Added: $title, $labelId, $amount, $currency, $notes, $imageSrc');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow[700]),
                  child: const Text('Add Transaction'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
