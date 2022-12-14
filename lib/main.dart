import 'package:flutter/material.dart';
import 'package:teaminterval_test/application/login/login_bloc.dart';
import 'package:teaminterval_test/application/search/search_bloc.dart';
import 'package:teaminterval_test/core/di/injectable.dart';
import 'package:teaminterval_test/presentation/login/login.dart';

import 'application/product/product_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// todo :
// Create a user login screen with inputs user name and password.
// On clicking login button if username and password are same go to the Home Screen else show error
// Password view hide option
// message using SnackBar widget.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<ProductBloc>()),
        BlocProvider(create: (ctx) => getIt<SearchBloc>()),
        BlocProvider(create: (ctx) => LoginBloc()),
      ],
      // providers: [
      //   BlocProvider(create: (ctx) => getIt<ProductBloc>()),
      // ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Team interval Test',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LoginPage(),
      ),
    );
  }
}
