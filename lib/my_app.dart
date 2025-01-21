import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/bloc_providers.dart';
import 'core/router/app_router.dart';
import 'core/themes/app_themes.dart';
import 'di/service_locator.dart';
import 'generated/l10n.dart';
import 'services/preferences/preferences_service.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.initalLanguageCode});

  final String initalLanguageCode;

  static void setLocale(BuildContext context, Locale newLocale) {
    final _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.locale = newLocale;
    getIt<PreferencesService>().saveCurrentLanguage(newLocale.languageCode);
  }

  static Locale getLocale(BuildContext context) {
    final _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    return state?.locale ?? const Locale('en');
  }

  static void setTheme(BuildContext context, ThemeMode themeMode) {
    final _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.theme = themeMode;
  }

  static ThemeMode getTheme(BuildContext context) {
    final _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    return state?.theme ?? ThemeMode.system;
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  var _themeMode = ThemeMode.light;
  final _appRouter = AppRouter();

  set locale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  Locale get locale => _locale ?? Locale(widget.initalLanguageCode);

  set theme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  ThemeMode get theme => _themeMode;

  @override
  void initState() {
    super.initState();
    _locale = Locale(widget.initalLanguageCode);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: provideBlocProviders(
          child: MaterialApp.router(
            themeMode: _themeMode,
            theme: lightTheme,
            darkTheme: darkTheme,
            debugShowCheckedModeBanner: false,
            locale: _locale,
            routerConfig: _appRouter.config(includePrefixMatches: false),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
          ),
        ),
      ),
    );
  }
}
