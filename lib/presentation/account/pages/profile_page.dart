import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wisdom_well/applications/auth/auth_bloc.dart';
import 'package:wisdom_well/core/data/models/user_model.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  final UserModel userModel;
  const ProfilePage({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Name: ${userModel.username}\nEmail: ${userModel.email}",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context).add(AuthEvent.signOut());
                },
                style: ButtonStyle(
                  foregroundColor: WidgetStatePropertyAll(Colors.red),
                ),
                child: Text("Logout"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
