import 'package:flutter/material.dart';
import '../models/upi_payment_data.dart';
import '../services/upi_service.dart';
import '../utils/upi_helper.dart';

class EasyUpiButton extends StatelessWidget {
  final UpiPaymentData paymentData;
  final String title;

  const EasyUpiButton({
    super.key,
    required this.paymentData,
    this.title = "Pay Now",
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        try {
          final upiUrl = UpiHelper.generateUpiUrl(
            upiId: paymentData.upiId,
            name: paymentData.name,
            amount: paymentData.amount,
            note: paymentData.note,
          );

          await UpiService.pay(upiUrl);
        } catch (e) {
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("No UPI app found on this device"),
              ),
            );
          }
        }
      },
      child: Text(title),
    );
  }
}
