import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_el.dart' deferred as app_localizations_el;
import 'app_localizations_en.dart' deferred as app_localizations_en;

/// Callers can lookup localized strings with an instance of EssLocalizations
/// returned by `EssLocalizations.of(context)`.
///
/// Applications need to include `EssLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'common/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: EssLocalizations.localizationsDelegates,
///   supportedLocales: EssLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the EssLocalizations.supportedLocales
/// property.
abstract class EssLocalizations {
  EssLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static EssLocalizations of(BuildContext context) {
    return Localizations.of<EssLocalizations>(context, EssLocalizations)!;
  }

  static const LocalizationsDelegate<EssLocalizations> delegate = _EssLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('el'),
    Locale('en')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'ess'**
  String get appName;

  /// Documentation comments value description.
  ///
  /// In en, this message translates to:
  /// **'Value'**
  String get key;

  /// No description provided for @anotherKey.
  ///
  /// In en, this message translates to:
  /// **'anotherValue'**
  String get anotherKey;

  /// Value with parameter description.
  ///
  /// In en, this message translates to:
  /// **'Value with {parameter}'**
  String keyWithParameter(String parameter);

  /// Key with a value that can be zero, singular, or plural.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, zero{You have no new messages} one{You have 1 new message} other{You have {count} new messages}}'**
  String keyWithPlural(num count);

  /// Parameters of double and date types with all available parameters for the specific format.
  ///
  /// In en, this message translates to:
  /// **'Your balance is {amount} on {date}.\nThis adds a new line.'**
  String keyWithDoubleAndDateTypes(double amount, DateTime date);

  /// Selects a value from available enum types or default (other).
  ///
  /// In en, this message translates to:
  /// **'{sex, select, male{His birthday} female{Her birthday} other{His/Her birthday}}'**
  String keyWithSelect(String sex);
}

class _EssLocalizationsDelegate extends LocalizationsDelegate<EssLocalizations> {
  const _EssLocalizationsDelegate();

  @override
  Future<EssLocalizations> load(Locale locale) {
    return lookupEssLocalizations(locale);
  }

  @override
  bool isSupported(Locale locale) => <String>['el', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_EssLocalizationsDelegate old) => false;
}

Future<EssLocalizations> lookupEssLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'el': return app_localizations_el.loadLibrary().then((dynamic _) => app_localizations_el.EssLocalizationsEl());
    case 'en': return app_localizations_en.loadLibrary().then((dynamic _) => app_localizations_en.EssLocalizationsEn());
  }

  throw FlutterError(
    'EssLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
