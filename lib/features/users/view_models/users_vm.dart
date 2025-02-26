import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tiktok/features/users/models/user_profile_model.dart';

class UsersViewModel extends AsyncNotifier<UserProfileModel> {
  @override
  FutureOr<UserProfileModel> build() {
    return UserProfileModel.empty(); // for test
  }

  Future<void> createAccount(UserCredential credential) async {
    if (credential.user == null) {
      throw Exception("Account does not exist.");
    }
    state = AsyncValue.data(
      UserProfileModel(
        uid: credential.user!.uid,
        email: credential.user!.email ?? "anon",
        name: credential.user!.displayName ?? "anon",
        bio: "undefined",
        link: "undefined",
      ),
    );
  }
}

final usersProvider = AsyncNotifierProvider(
  () => UsersViewModel(),
);
