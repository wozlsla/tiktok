import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tiktok/features/authentication/repos/authentication_repo.dart';

/* Expose noting
  계정을 만들 때 loading 화면을 보여주고, 계정 생성을 trigger 하기만 할 것 */
class SignupViewModel extends AsyncNotifier<void> {
  late final AuthenticationRepository _authRepo;

  @override
  FutureOr<void> build() {
    _authRepo = ref.read(authRepo);
  }

  // create account
  Future<void> signUp() async {
    state = AsyncValue.loading();
    final form = ref.read(signUpForm);

    // await _authRepo.signUp(form["email"], form["password"]);
    // state = AsyncValue.data(null);

    state = await AsyncValue.guard(
      () async => await _authRepo.signUp(
        form["email"],
        form["password"],
      ),
    );
  }
}

final signUpForm = StateProvider((ref) => {});

final signUpProvider = AsyncNotifierProvider<SignupViewModel, void>(
  () => SignupViewModel(),
);
