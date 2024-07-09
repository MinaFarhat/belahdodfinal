import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Game%20Cubit/game_cubit.dart';
import 'package:belahododfinal/Features/User/Details/presentation/Bottom%20Part/bottom_part_game.dart';
import 'package:belahododfinal/Features/User/Details/presentation/Top%20Part/top_part_game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class DetailsGame extends StatefulWidget {
  DetailsGame({
    required this.productID,
    super.key,
  });
  int productID;

  @override
  State<DetailsGame> createState() => _DetailsGameState();
}

class _DetailsGameState extends State<DetailsGame> {
  List<String> locations = [
    "دار الحافظ(دمشق)",
    "العلماء الصغار(دمشق)",
  ];

  @override
  void initState() {
    context.read<GameCubit>().gameDetails(widget.productID);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: SharedPreferencesUtils().getisDark() == true
            ? Colors.grey.shade900
            : Colors.white,
        body: BlocConsumer<GameCubit, GameState>(
          listener: (context, state) {
            state.whenOrNull(
              error: (networkExceptions) {
                Fluttertoast.showToast(
                  msg: NetworkExceptions.getErrorMessage(
                    networkExceptions,
                  ),
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.red,
                );
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return Center(
                  child: CircularProgressIndicator(
                    color: SharedPreferencesUtils().getisDark() == false
                        ? ColorConstant.mainColor
                        : Colors.white,
                  ),
                );
              },
              initial: () {
                return Center(
                  child: CircularProgressIndicator(
                    color: SharedPreferencesUtils().getisDark() == false
                        ? ColorConstant.mainColor
                        : Colors.white,
                  ),
                );
              },
              loading: () {
                return Center(
                  child: CircularProgressIndicator(
                    color: SharedPreferencesUtils().getisDark() == false
                        ? ColorConstant.mainColor
                        : Colors.white,
                  ),
                );
              },
              success: (gameentity) {
                return ListView(
                  children: [
                    TopPartGame(
                      photos: gameentity.images,
                      productId: widget.productID,
                      barcode: gameentity.barcode,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    BottomPartGame(
                      productId: widget.productID,
                      title: gameentity.title,
                      subTitle: gameentity.subTitle,
                      age: gameentity.age,
                      price: gameentity.price,
                      publisher: gameentity.publisher,
                      gameObjectives: gameentity.gameObjectives,
                      materials: gameentity.materials,
                      section: "الألعاب والوسائل التعليمية",
                      numofplayers: 5,
                      amountwhofavorite: 500,
                      amountwhorates: 500,
                      locations: locations,
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
