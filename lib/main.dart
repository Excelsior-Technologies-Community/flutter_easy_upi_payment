import 'package:flutter/material.dart';
import 'easy_upi_payment/easy_upi_payment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Easy UPI Payment')),
        body: Center(
          child: EasyUpiButton(
            paymentData: UpiPaymentData(
              upiId: 'test@upi',
              name: 'Test',
              amount: 50.0,
              note: 'Demo Payment',
            ),
          ),
        ),
      ),
    );
  }
}
