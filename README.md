Ethiopian Date Picker
A highly customizable and localized Ethiopian date picker for Flutter applications, designed for easy date selection and integration.

✨ Features
Ethiopian Calendar Support: Select dates using the Ethiopian calendar system.

Gregorian Conversion: Automatically converts the selected Ethiopian date to its Gregorian equivalent (DateTime object) upon selection.

Intuitive Navigation:

Effortless month-by-month navigation.

Quick year selection via a dropdown grid.

Date Range Constraints: Define firstDay and lastDay to limit selectable dates, visually graying out unavailable days and restricting navigation.

Clear Visual Feedback:

The actively selected date is prominently highlighted with a circular green background.

firstDay and lastDay are styled differently for easy identification.

Out-of-range dates are grayed out and non-interactive.

Comprehensive Localization:

Supports multiple Ethiopian languages and English for month names, day abbreviations (e.g., S, M, T), dialog titles, and action button texts.

Currently includes: English (US), Amharic (AM), Oromiffa (OR), Tigrinya (TI), Sidama (SI - placeholders), Somali (SO - placeholders).

Defaults to English if no localization is specified.

🚀 Installation
Add this to your pubspec.yaml file:

dependencies:
  ethiopian_date_picker: ^0.0.1 # Use the latest version

Then, run flutter pub get to fetch the package.

📦 Usage
To use the date picker, simply call showEthiopianDatePicker from your BuildContext.

import 'package:flutter/material.dart';
import 'package:ethiopian_date_picker/ethiopian_date_picker.dart'; // Adjust import based on your package structure
import 'package:ethiopian_date_picker/src/localization_data.dart'; // For localization enum

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ethiopian Date Picker Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime? _selectedDate;

  Future<void> _pickDate() async {
    final DateTime? picked = await showEthiopianDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(), // Optional: provide an initial date
      firstDate: DateTime(2023, 1, 1), // Optional: Gregorian start date for range
      lastDate: DateTime(2025, 12, 31), // Optional: Gregorian end date for range
      localization: EthiopianDatePickerLocalization.AM, // Optional: Change to AM for Amharic
      // localization: EthiopianDatePickerLocalization.OR, // Or OR for Oromiffa
      // localization: EthiopianDatePickerLocalization.US, // Default is US (English)
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Selected Gregorian Date: ${_selectedDate?.toIso8601String().split('T').first}")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ethiopian Date Picker Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _selectedDate == null
                  ? 'No date selected'
                  : 'Selected Date (Gregorian): ${_selectedDate!.toIso8601String().split('T').first}',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _pickDate,
              child: const Text('Open Ethiopian Date Picker'),
            ),
          ],
        ),
      ),
    );
  }
}

Localization Support
The localization parameter in showEthiopianDatePicker allows you to specify the language for the picker's UI elements.

Available localizations (from EthiopianDatePickerLocalization enum):

EthiopianDatePickerLocalization.US (English - Default)

EthiopianDatePickerLocalization.AM (Amharic)

EthiopianDatePickerLocalization.OR (Oromiffa)

EthiopianDatePickerLocalization.TI (Tigrinya)

EthiopianDatePickerLocalization.SI (Sidama - Note: Please provide accurate translations in localization_data.dart)

EthiopianDatePickerLocalization.SO (Somali - Note: Please provide accurate translations in localization_data.dart)

💡 How it Works (Key Insight)
When a date is selected in the Ethiopian calendar within the picker, the package internally uses CalendarConverter.toGregorian to convert that Ethiopian date into its equivalent Gregorian DateTime object. This Gregorian DateTime value is what is ultimately returned by the showEthiopianDatePicker function. This ensures easy compatibility with standard Flutter and Dart date handling.

🤝 Contributing
Contributions are welcome! If you find a bug or have a feature request, please open an issue on the GitHub issue tracker.

📄 License
This project is licensed under the MIT License.