import 'package:go_router/go_router.dart';
import 'package:reciperealm/Features/auth/presentation/view/sign_in_view.dart';

abstract class AppRouter{
  static final router = GoRouter(
    routes: [
      GoRoute(path:'/',
      builder: (context, state) => const SigninView() ,
      ),
    ],
    );
}