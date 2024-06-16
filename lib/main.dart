import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/Auth/Create%20Account/cubit/createaccount_cubit.dart';
import 'package:belahododfinal/Features/Auth/Login/cubit/login_cubit.dart';
import 'package:belahododfinal/Features/Auth/splashscreen.dart';
import 'package:belahododfinal/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesUtils().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: const Color.fromRGBO(65, 121, 185, 1),
      100: const Color.fromRGBO(65, 121, 185, .2),
      200: const Color.fromRGBO(65, 121, 185, .3),
      300: const Color.fromRGBO(65, 121, 185, .4),
      400: const Color.fromRGBO(65, 121, 185, .5),
      500: const Color.fromRGBO(65, 121, 185, .6),
      600: const Color.fromRGBO(65, 121, 185, .7),
      700: const Color.fromRGBO(65, 121, 185, .8),
      800: const Color.fromRGBO(65, 121, 185, .9),
      900: const Color.fromRGBO(65, 121, 185, 1),
    };

    MaterialColor colorCustom = MaterialColor(0xFF880E4F, color);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.white,
      ),
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<CreateaccountCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<LoginCubit>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: colorCustom,
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
