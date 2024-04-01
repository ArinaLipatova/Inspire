import 'package:flutter/material.dart';
import 'package:inspire_ver/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:inspire_ver/presentation/set_pomodoro_timer_container_screen/set_pomodoro_timer_container_screen.dart';
import 'package:inspire_ver/presentation/get_quote_screen/get_quote_screen.dart';
import 'package:inspire_ver/presentation/home_screen/home_screen.dart';
import 'package:inspire_ver/presentation/special_thoughts_two_screen/special_thoughts_two_screen.dart';
import 'package:inspire_ver/presentation/special_thoughts_one_screen/special_thoughts_one_screen.dart';
import 'package:inspire_ver/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingScreen = '/onboarding_screen';

  static const String setPomodoroTimerContainerScreen =
      '/set_pomodoro_timer_container_screen';

  static const String getQuoteScreen = '/get_quote_screen';

  static const String homeScreen = '/home_screen';

  static const String specialThoughtsTwoScreen = '/special_thoughts_two_screen';

  static const String specialThoughtsOneScreen = '/special_thoughts_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        onboardingScreen: OnboardingScreen.builder,
        setPomodoroTimerContainerScreen: SetPomodoroTimerContainerScreen.builder,
        getQuoteScreen: GetQuoteScreen.builder,
        // getQuoteScreen: () => GetQuoteScreen.builder,

        homeScreen: HomeScreen.builder,
        specialThoughtsTwoScreen: SpecialThoughtsTwoScreen.builder,
        specialThoughtsOneScreen: SpecialThoughtsOneScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: OnboardingScreen.builder
      };
}
