class UpiPaymentData {
  final String upiId;
  final String name;
  final double amount;
  final String note;

  UpiPaymentData({
    required this.upiId,
    required this.name,
    required this.amount,
    this.note = '',
  });
}
