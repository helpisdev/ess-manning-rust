import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

/// The translations for English (`en`).
class EssLocalizationsEn extends EssLocalizations {
  EssLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'ess';

  @override
  String get key => 'Value';

  @override
  String get anotherKey => 'anotherValue';

  @override
  String keyWithParameter(String parameter) {
    return 'Value with $parameter';
  }

  @override
  String keyWithPlural(num count) {
    return intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'You have $count new messages',
    );
  }

  @override
  String keyWithDoubleAndDateTypes(double amount, DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMd(localeName);
    final String dateString = dateDateFormat.format(date);

    final intl.NumberFormat amountNumberFormat = intl.NumberFormat.currency(
      locale: localeName,
      decimalDigits: 2,
      name: 'USD',
      symbol: '\$',
      customPattern: '¤#0.00'
    );
    final String amountString = amountNumberFormat.format(amount);

    return 'Your balance is $amountString on $dateString.\nThis adds a new line.';
  }

  @override
  String keyWithSelect(String sex) {
    return intl.Intl.select(
      sex,
      {
        'male': 'His birthday',
        'female': 'Her birthday',
        'other': 'His/Her birthday'
      },
      desc: 'Selects a value from available enum types or default (other).'
    );
  }
}
