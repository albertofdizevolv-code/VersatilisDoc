import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class AppVersatilisAuthUser {
  AppVersatilisAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<AppVersatilisAuthUser> appVersatilisAuthUserSubject =
    BehaviorSubject.seeded(AppVersatilisAuthUser(loggedIn: false));
Stream<AppVersatilisAuthUser> appVersatilisAuthUserStream() =>
    appVersatilisAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
