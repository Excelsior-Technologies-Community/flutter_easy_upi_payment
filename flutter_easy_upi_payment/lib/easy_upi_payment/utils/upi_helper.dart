class UpiHelper {
  static String generateUpiUrl({
    required String upiId,
    required String name,
    required double amount,
    String note = '',
  }) {
    return "upi://pay"
        "?pa=$upiId"
        "&pn=$name"
        "&am=$amount"
        "&cu=INR"
        "&tn=$note";
  }
}
