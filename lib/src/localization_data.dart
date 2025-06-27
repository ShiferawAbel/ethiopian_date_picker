// lib/src/localization_data.dart

enum EthiopianDatePickerLocalization {
  US, // English
  AM, // Amharic
  OR, // Oromiffa (Changed from ZA as ZA is South Africa)
  TI, // Tigrinya (Changed from IN as IN is India)
  SI, // Sidama (Changed from AU as AU is Australia)
  SO, // Somali (Changed from GB as GB is Great Britain)
}

class CalendarLocalizations {
  final EthiopianDatePickerLocalization localization;

  CalendarLocalizations(this.localization);

  static const Map<EthiopianDatePickerLocalization, List<String>> _months = {
    EthiopianDatePickerLocalization.US: [
      'Meskerem',
      'Tikimt',
      'Hidar',
      'Tahsas',
      'Tir',
      'Yekatit',
      'Megabit',
      'Miyazya',
      'Ginbot',
      'Sene',
      'Hamle',
      'Nehase',
      'Pagumen'
    ],
    EthiopianDatePickerLocalization.AM: [
      'መስከረም',
      'ጥቅምት',
      'ህዳር',
      'ታህሳስ',
      'ጥር',
      'የካቲት',
      'መጋቢት',
      'ሚያዝያ',
      'ግንቦት',
      'ሰኔ',
      'ሐምሌ',
      'ነሐሴ',
      'ጳጉሜን'
    ],
    EthiopianDatePickerLocalization.OR: [
      'Fulbaana',
      'Onkoloolessa',
      'Sadaasa',
      'Muddee',
      'Amajjii',
      'Guraandhala',
      'Bitootessa',
      'Ebla',
      'Caamsaa',
      'Waxabajjii',
      'Adoolessa',
      'Hagayya',
      'Qaammee'
    ],
    EthiopianDatePickerLocalization.TI: [
      'መስከረም',
      'ጥቅምቲ',
      'ሕዳር',
      'ታሕሳስ',
      'ጥሪ',
      'የካቲት',
      'መጋቢት',
      'ሚያዝያ',
      'ግንቦት',
      'ሰኔ',
      'ሓምለ',
      'ነሓሰ',
      'ጳጉሜን'
    ],
    EthiopianDatePickerLocalization.SI: [
      'Meskerem',
      'Tikimt',
      'Hidar',
      'Tahsas',
      'Tir',
      'Yekatit',
      'Megabit',
      'Miyazya',
      'Ginbot',
      'Sene',
      'Hamle',
      'Nehase',
      'Pagumen'
    ], // Placeholder, please provide actual Sidama month names
    EthiopianDatePickerLocalization.SO: [
      'Meskerem',
      'Tikimt',
      'Hidar',
      'Tahsas',
      'Tir',
      'Yekatit',
      'Megabit',
      'Miyazya',
      'Ginbot',
      'Sene',
      'Hamle',
      'Nehase',
      'Pagumen'
    ], // Placeholder, please provide actual Somali month names
  };

  static const Map<EthiopianDatePickerLocalization, List<String>> _dayNames = {
    EthiopianDatePickerLocalization.US: ['S', 'M', 'T', 'W', 'T', 'F', 'S'],
    EthiopianDatePickerLocalization.AM: [
      'እ',
      'ሰ',
      'ማ',
      'ረ',
      'ሐ',
      'ዓ',
      'ቅ'
    ], // እሁድ, ሰኞ, ማክሰኞ, ረቡዕ, ሐሙስ, ዓርብ, ቅዳሜ
    EthiopianDatePickerLocalization.OR: [
      'Dil',
      'San',
      'Wal',
      'Rab',
      'Kam',
      'Jim',
      'Sanb'
    ], // Dilbata, Sanbata, Waldeeya, Roobii, Kamisa, Jimaata, Sanbata Xiqqaa (approx)
    EthiopianDatePickerLocalization.TI: [
      'ሰ',
      'ሰ',
      'ማ',
      'ረ',
      'ሓ',
      'ዓ',
      'ቀ'
    ], // ሰንበተ, ሰኑይ, ሰሉስ, ረቡዕ, ሓሙስ, ዓርቢ, ቀዳም (approx)
    EthiopianDatePickerLocalization.SI: [
      'S',
      'M',
      'T',
      'W',
      'T',
      'F',
      'S'
    ], // Placeholder, please provide actual Sidama day names
    EthiopianDatePickerLocalization.SO: [
      'A',
      'Is',
      'Sl',
      'Ar',
      'Kha',
      'Jum',
      'Sab'
    ], // Axad, Isniin, Talaado, Arbaco, Khamiis, Jimco, Sabti (approx)
  };

  static const Map<EthiopianDatePickerLocalization, Map<String, String>>
      _texts = {
    EthiopianDatePickerLocalization.US: {
      'selectDate': 'Select date',
      'ok': 'Ok',
      'cancel': 'Cancel',
      'noDateSelected': 'No date selected',
    },
    EthiopianDatePickerLocalization.AM: {
      'selectDate': 'ቀን ይምረጡ',
      'ok': 'እሺ',
      'cancel': 'ይቅር',
      'noDateSelected': 'ቀን አልተመረጠም',
    },
    EthiopianDatePickerLocalization.OR: {
      'selectDate': 'Guyyaa Filadhu',
      'ok': 'Tole',
      'cancel': 'Haa Gufatu',
      'noDateSelected': 'Guyyaa hin filatamne',
    },
    EthiopianDatePickerLocalization.TI: {
      'selectDate': 'ዕለት ምረፅ',
      'ok': 'ሕራይ',
      'cancel': 'ኣይፋሉ',
      'noDateSelected': 'ዕለት ኣይተመረፀን',
    },
    EthiopianDatePickerLocalization.SI: {
      'selectDate': 'Saahimaano',
      'ok': 'Ayyo',
      'cancel': 'Hinna',
      'noDateSelected': 'Saahimano Miti',
    }, // Placeholder
    EthiopianDatePickerLocalization.SO: {
      'selectDate': 'Dooro Taariikhda',
      'ok': 'Haa',
      'cancel': 'Jooji',
      'noDateSelected': 'Ma jirto taariikh la doortay',
    }, // Placeholder
  };

  List<String> get months {
    return _months[localization] ??
        _months[EthiopianDatePickerLocalization.US]!;
  }

  List<String> get dayNames {
    return _dayNames[localization] ??
        _dayNames[EthiopianDatePickerLocalization.US]!;
  }

  String getText(String key) {
    return _texts[localization]?[key] ??
        _texts[EthiopianDatePickerLocalization.US]![key]!;
  }
}
