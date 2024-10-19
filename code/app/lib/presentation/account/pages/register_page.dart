import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rate_limiter/rate_limiter.dart';
import 'package:wisdom_well/applications/auth/auth_bloc.dart';
import 'package:wisdom_well/core/constants/strings.dart';
import 'package:wisdom_well/core/services/database_provider.dart';
import 'package:wisdom_well/core/services/service_locator.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final dbProvider = sl<DatabaseProvider>();
  final _formKey = GlobalKey<FormState>();
  final _nameKey = GlobalKey<FormFieldState>();
  late final Debounce _debouncedUsernameCheck;

  bool? _isUsernameAvailable;

  @override
  void initState() {
    super.initState();
    _debouncedUsernameCheck = Debounce(
      _updateUsernameAvailability,
      Duration(milliseconds: 500),
    );
    _nameController.addListener(_usernameListener);
  }

  _usernameListener() {
    setState(() {
      _isUsernameAvailable = null;
    });
    _debouncedUsernameCheck();
  }

  @override
  void dispose() {
    _nameController.removeListener(_usernameListener);
    _debouncedUsernameCheck.cancel();
    super.dispose();
  }

  void _register() {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<AuthBloc>(_formKey.currentContext!).add(
        AuthEvent.signUp(
          username: _nameController.text,
          email: _emailController.text,
          password: _passwordController.text,
        ),
      );
    }
  }

  Future<void> _updateUsernameAvailability() async {
    if (_nameKey.currentState!.validate()) {
      _isUsernameAvailable =
          await dbProvider.isUsernameAvailable(_nameController.text);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Register on wisdom_well',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  key: _nameKey,
                  controller: _nameController,
                  onChanged: (value) => _isUsernameAvailable = null,
                  validator: (value) => value == null ||
                          value.trim().isEmpty ||
                          value.trim().length < 4
                      ? 'Please enter username of length 4 or more'
                      : null,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  forceErrorText:
                      _isUsernameAvailable == false ? 'Username taken' : null,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    helperText: _isUsernameAvailable == true
                        ? 'Username available'
                        : 'Checking username availability...',
                    helperStyle: TextStyle(
                      color: _isUsernameAvailable == true
                          ? Colors.green
                          : Colors.grey,
                    ),
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _emailController,
                  validator: (value) => value == null ||
                          value.isEmpty ||
                          !emailRegEx.hasMatch(value)
                      ? "Please enter a valid email"
                      : null,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _passwordController,
                  validator: (value) => value == null ||
                          value.isEmpty ||
                          !passwordRegEx.hasMatch(value)
                      ? 'Please enter a password with at least 1 upper case 1 lower case 1 number and 1 special character'
                      : null,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    errorMaxLines: 100,
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _isUsernameAvailable == true ? _register : null,
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 15,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text('Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
