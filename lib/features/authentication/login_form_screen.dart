import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/features/authentication/view_models/login_vm.dart';
import 'package:tiktok/features/authentication/widgets/form_button.dart';

class LoginFormScreen extends ConsumerStatefulWidget {
  const LoginFormScreen({super.key});

  @override
  ConsumerState<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends ConsumerState<LoginFormScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Map<String, String> formData = {};

  void _onSubmitTap() {
    if (_formKey.currentState != null) {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();

        ref.read(loginProvider.notifier).login(
              formData["email"]!,
              formData["password"]!,
              context,
            );
        // context.goNamed(InterestsScreen.routeName);
      }
    }
  }

  void _onScaffoldTap() {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onScaffoldTap,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Log in"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.size36,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Gaps.v28,
                TextFormField(
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: "Email",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "Plase write your email";
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    if (newValue != null) {
                      formData["email"] = newValue;
                    }
                  },
                ),
                Gaps.v16,
                TextFormField(
                  autocorrect: false,
                  decoration: InputDecoration(
                    hintText: "Password",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "Plase write your password";
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    if (newValue != null) {
                      formData["password"] = newValue;
                    }
                  },
                ),
                Gaps.v28,
                GestureDetector(
                  onTap: _onSubmitTap,
                  child: FormButton(
                    disabled: ref.watch(loginProvider).isLoading,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
