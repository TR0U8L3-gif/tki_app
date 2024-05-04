import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
export 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations_en.dart';
import 'package:tki_app/core/common/providers/language_provider.dart';
export 'package:flutter_gen/gen_l10n/app_localizations_en.dart';

extension L10nExtension on BuildContext {
  Locale get locale => Localizations.localeOf(this);
  String get languageTag => locale.languageCode;
  AppLocalizations get l10n =>
      AppLocalizations.of(this) ?? AppLocalizationsEn();

  void changeLanguage(String newLanguageCode) {
    read<LanguageProvider>().changeLanguage(newLanguageCode);
  }
}
