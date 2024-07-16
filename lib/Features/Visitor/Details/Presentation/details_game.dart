import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/Details/Manager/Game%20Cubit/game_cubit.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/Bottom%20Part/bottom_part_game.dart';
import 'package:belahododfinal/Features/Visitor/Details/Presentation/Top%20Part/top_part_game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class DetailsGameVisitor extends StatefulWidget {
  DetailsGameVisitor({
    required this.productID,
    super.key,
  });
  int productID;

  @override
  State<DetailsGameVisitor> createState() => _DetailsGameVisitorState();
}

class _DetailsGameVisitorState extends State<DetailsGameVisitor> {
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
        backgroundColor: Colors.white,
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
                    color: ColorConstant.mainColor,
                  ),
                );
              },
              initial: () {
                return Center(
                  child: CircularProgressIndicator(
                    color: ColorConstant.mainColor,
                  ),
                );
              },
              loading: () {
                return Center(
                  child: CircularProgressIndicator(
                    color: ColorConstant.mainColor,
                  ),
                );
              },
              success: (gameentity) {
                return ListView(
                  children: [
                    TopPartGameVisitor(
                      photos: gameentity.images,
                      productId: widget.productID,
                      barcode: gameentity.barcode,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    BottomPartGameVisitor(
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
