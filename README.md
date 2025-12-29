# 📦 EasyUPIPayment

A simple and lightweight Flutter widget to trigger UPI payments using installed UPI apps like **Paytm, Google Pay, PhonePe**, etc.
 
🔹 This project is currently a simple Flutter app 

🔹 Designed in a library-style structure for future package conversion

---

## ✨ Features
* ✅ Simple Pay Now button
* ✅ Opens installed UPI apps using intent
* ✅ Auto-fills amount, UPI ID & note
* ✅ Clean folder structure
* ✅ Beginner friendly
* ✅ Android 11+ compatible
---

## ✨ Preview
![screen-20251229-1335262](https://github.com/user-attachments/assets/0d1074ca-4cd8-4ac1-936e-f4ee79b3f5e3)

---

## ✨ Installation
Add this to your package's pubspec.yaml file:
```
dependencies:
  flutter_easy_upi_payment:
    path: ../flutter_easy_upi_payment  # For local development
```
from git:
```
dependencies:
  flutter_easy_upi_payment:
    git:
      url: https://github.com/yourusername/flutter_easy_upi_payment.git  # Your github path
``` 
Then run:
```
flutter pub get
```
---

## 📂 Project Structure
```
lib/
├── flutter_easy_upi_payment.dart
│
├── easy_upi_payment/
│   ├── models/
│   │   └── upi_payment_data.dart
│   │
│   ├── services/
│   │   └── upi_service.dart
│   │
│   ├── utils/
│   │   └── upi_helper.dart
│   │
│   └── widgets/
│       └── easy_upi_button.dart
│
test/
└── flutter_easy_upi_payment_test.dart
```

##### 🧩 Why this structure?
* models → keeps data clean & reusable
* services → handles business logic (payment intent)
* utils → helper methods (URL generation)
* widgets → UI components
* flutter_easy_upi_payment.dart → single export point (package-style)
---
## ⚠️ Android Configuration (IMPORTANT)
For Android 11+ devices, add this inside

android/app/src/main/AndroidManifest.xml
```
<queries>
    <intent>
        <action android:name="android.intent.action.VIEW" />
        <data android:scheme="upi" />
    </intent>
</queries>
```
---
## 🚀 Usage Example
##### 1️⃣ Import package
```
import 'package:flutter_easy_upi_payment/flutter_easy_upi_payment.dart';
```

##### 2️⃣ Use EasyUpiButton
```
EasyUpiButton(
  paymentData: UpiPaymentData(
    upiId: "yourupi@paytm",
    name: "Vishal",
    amount: 50.0,
    note: "Test Payment",
  ),
)
```
---
## 📜 License
MIT License
```
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED **"AS IS"**, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
---
