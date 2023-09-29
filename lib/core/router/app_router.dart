import 'package:go_router/go_router.dart';
import 'package:reciperealm/Features/auth/presentation/view/reset_password.dart';
import 'package:reciperealm/Features/auth/presentation/view/sign_in_view.dart';
import '../../Features/auth/presentation/view/sign_up_view.dart';

abstract class AppRouter{
  static const sSignUpView = '/signUpView';
  static const sResetPassword = '/resetPasswordView';
  static final router = GoRouter(
    routes: [
      GoRoute(path:'/',
      builder: (context, state) => const SigninView() ,
      ),
      GoRoute(path: sSignUpView,
      builder: (context, state) => const SignUpView(),
      ),
      GoRoute(path: sResetPassword,
      builder: (context, state) => const ResetPasswordView(),
      ),
    ],
    );
}