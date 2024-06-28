import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/Auth/Create%20Account/cubit/createaccount_cubit.dart';
import 'package:belahododfinal/Features/Auth/Login/cubit/login_cubit.dart';
import 'package:belahododfinal/Features/Auth/splashscreen.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Base%20Cubit/base_cubit.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Book%20Cubit/book_cubit.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Game%20Cubit/game_cubit.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Quraan%20Cubit/quraan_cubit.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Stationery%20Cubit/stationery_cubit.dart';
import 'package:belahododfinal/Features/User/cart/Manager/Add%20To%20Cart%20Cubit/addtocart_cubit.dart';
import 'package:belahododfinal/Features/User/cart/Manager/Cart%20Items%20Cubit/cartitems_cubit.dart';
import 'package:belahododfinal/Features/User/cart/Manager/Delete%20Item%20From%20Cart%20Cubit/deleteitemfromcart_cubit.dart';
import 'package:belahododfinal/Features/User/cart/Manager/Quantitiy%20Update%20Cubit/quantitiyupdate_cubit.dart';
import 'package:belahododfinal/Features/User/favorite/Manager/Add%20To%20Favorites%20Cubit/addtofavorite_cubit.dart';
import 'package:belahododfinal/Features/User/favorite/Manager/Get%20Favorites%20Cubit/getfavorites_cubit.dart';
import 'package:belahododfinal/Features/User/homepage/HomeScreen/cubit/section_cubit.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Get%20SubSections%20Cubit/getsubsections_cubit.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/Products%20Of%20SubSections/Get%20Products%20of%20SubSection%20Cubit/getproductsofsubsection_cubit.dart';
import 'package:belahododfinal/Features/User/news/Manager/Details%20of%20Offer%20Cubit/detailsofoffer_cubit.dart';
import 'package:belahododfinal/Features/User/news/Manager/Get%20All%20Offers%20Cubit/getalloffers_cubit.dart';
import 'package:belahododfinal/Features/User/note/cubit/get_notifications_cubit.dart';
import 'package:belahododfinal/Features/User/payment/Address/Send%20Order%20Cubit/send_order_cubit.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/Manager/On%20Arrival%20Cubit/on_arrival_cubit.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/Manager/Transfer%20Cubit/transfer_cubit.dart';
import 'package:belahododfinal/Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/Get%20Cities%20Cubit/get_cities_cubit.dart';
import 'package:belahododfinal/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Features/User/Orders/Order Details/Order Details Cubit/order_details_cubit.dart';
import 'Features/User/Orders/main orders/Get Orders Cubit/get_orders_cubit.dart';

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
        BlocProvider(
          create: (context) => getIt<AddtocartCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<CartitemsCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<DeleteitemfromcartCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<QuantitiyupdateCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<GetsubsectionsCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<GetfavoritesCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<AddtofavoriteCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<GetproductsofsubsectionCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<GetalloffersCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<DetailsofofferCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<SendOrderCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<GetCitiesCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<GetOrdersCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<OrderDetailsCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<GetNotificationsCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<TransferCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<OnArrivalCubit>(),
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
