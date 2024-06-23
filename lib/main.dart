import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/Auth/Create%20Account/cubit/createaccount_cubit.dart';
import 'package:belahododfinal/Features/Auth/Create%20Account/presentation/signup.dart';
import 'package:belahododfinal/Features/Auth/Login/cubit/login_cubit.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Base%20Cubit/base_cubit.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Book%20Cubit/book_cubit.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Game%20Cubit/game_cubit.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Quraan%20Cubit/quraan_cubit.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Stationery%20Cubit/stationery_cubit.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/cubit/section_cubit.dart';
import 'package:belahododfinal/Features/User/navbar.dart';
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
        BlocProvider(
          create: (context) => getIt<SectionCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<BaseCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<BookCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<GameCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<QuraanCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<StationeryCubit>(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: colorCustom,
          useMaterial3: true,
        ),
        home: const Signup(),
      ),
    );
  }
}
