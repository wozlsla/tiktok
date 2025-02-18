import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:tiktok/features/authentication/email_screen.dart';
import 'package:tiktok/features/authentication/login_screen.dart';
import 'package:tiktok/features/authentication/sign_up_screen.dart';
import 'package:tiktok/features/authentication/username_screen.dart';
import 'package:tiktok/features/users/user_profile_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: SignUpScreen.routeURL,
      name: SignUpScreen.routeName,
      builder: (context, state) => SignUpScreen(),
      // nasted
      routes: [
        GoRoute(
          path: UsernameScreen.routeURL,
          name: UsernameScreen.routeName,
          builder: (context, state) => UsernameScreen(),
          routes: [
            GoRoute(
              path: EmailScreen.routeURL,
              name: EmailScreen.routeName,
              builder: (context, state) {
                final args = state.extra as EmailScreenArgs?;
                if (args == null) {
                  return const EmailScreen(username: "");
                }
                return EmailScreen(username: args.username);
              },
            ),
          ],
        ),
      ],
    ),
    // // signup url 이 "/" 인데, "/login"(/ 내부) 이기때문에 error
/*     GoRoute(
      path: LoginScreen.routeName,
      builder: (context, state) => LoginScreen(),
    ), */
    /*  GoRoute(
      name: "username_screen", // NamedRoute
      path: UsernameScreen.routeName,
      pageBuilder: (context, state) => CustomTransitionPage(
        child: UsernameScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: ScaleTransition(
              scale: animation,
              child: child,
            ),
          );
        },
      ),
    ), */
    GoRoute(
      path: "/users/:username",
      builder: (context, state) {
        // print(state.params);
        final username = state.params["username"];
        final tab = state.queryParams["show"];
        return UserProfileScreen(username: username!, tab: tab!);
      },
    ),
  ],
);
