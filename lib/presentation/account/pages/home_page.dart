import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wisdom_well/applications/auth/auth_bloc.dart';
import 'package:wisdom_well/core/routes/auto_router.gr.dart';
import 'package:wisdom_well/core/services/service_locator.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AuthBloc>()..add(AuthEvent.checkStatus()),
      child: BlocConsumer<AuthBloc, AuthState>(
        listenWhen: (previous, current) => current is AuthError,
        listener: (context, state) =>
            ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:
                Text((state as AuthError).failure.getErrorMessage() ?? "Something went wrong"),
          ),
        ),
        builder: (context, AuthState state) => switch (state) {
          Authenticated() => AutoTabsRouter.pageView(
              homeIndex: 0,
              routes: [
                ListTressRoute(),
                ProfileRoute(userModel: state.user),
              ],
              builder: (context, child, _) {
                final tabsRouter = AutoTabsRouter.of(context);
                return Scaffold(
                  body: child,
                  bottomNavigationBar: BottomNavigationBar(
                    onTap: tabsRouter.setActiveIndex,
                    currentIndex: tabsRouter.activeIndex,
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.group),
                        label: 'Groups',
                      ),
                    ],
                  ),
                );
              },
            ),
          Unauthenticated() || AuthError() => AutoTabsRouter.pageView(
              routes: [LoginRoute(), RegisterRoute()],
              builder: (context, child, pageController) {
                final tabsRouter = AutoTabsRouter.of(context);
                return Scaffold(
                  body: Column(
                    children: [
                      Expanded(child: child),
                      FilledButton(
                        onPressed: () => tabsRouter
                            .setActiveIndex((tabsRouter.activeIndex + 1) % 2),
                        child: Text(tabsRouter.activeIndex.isEven
                            ? "Don't have an account? Register"
                            : 'Already have an account? Login'),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                );
              },
            ),
          AuthLoading() => Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        },
      ),
    );
  }
}
