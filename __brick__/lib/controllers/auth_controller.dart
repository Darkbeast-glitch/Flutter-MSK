import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/auth_provider.dart';

class AuthController {
  final WidgetRef ref;

  AuthController(this.ref);

  void login(String username, String password) {
    // Implement login logic here, then update state using authProvider.
    ref.read(authProvider.notifier).state = true;
  }

  void logout() {
    ref.read(authProvider.notifier).state = false;
  }
}
