import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:nexora_ai/features/splash/presentation/splash_screen.dart';
import 'package:nexora_ai/features/onboarding/presentation/onboarding_screen.dart';
import 'package:nexora_ai/features/auth/presentation/login_screen.dart';
import 'package:nexora_ai/features/workspace/presentation/workspace_screen.dart';

import 'app_routes.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.splash,
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRoutes.onboarding,
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.workspace,
      builder: (context, state) => const WorkspaceScreen(),
    ),
  ],
);