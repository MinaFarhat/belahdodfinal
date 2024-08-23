import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/Visitor/Details/Manager/Game%20Visitor%20Cubit/game_visitor_cubit.dart';
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
    "دمشق/الحلبوني/شارع المكتبات",
  ];

  @override
  void initState() {
    context.read<GameVisitorCubit>().gameDetailsVisitor(widget.productID);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocConsumer<GameVisitorCubit, GameVisitorState>(
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
              success: (gamevisitorentity) {
                return ListView(
                  children: [
                    TopPartGameVisitor(
                      photos: gamevisitorentity.images == null
                          ? ["assets/images/logo.png"]
                          : gamevisitorentity.images!,
                      productId: widget.productID,
                      barcode: gamevisitorentity.barcode,
                      likeCount: gamevisitorentity.likeCount,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    BottomPartGameVisitor(
                      productId: widget.productID,
                      title: gamevisitorentity.title,
                      subTitle: gamevisitorentity.subTitle,
                      age: gamevisitorentity.age,
                      price: gamevisitorentity.price,
                      publisher: gamevisitorentity.publisher,
                      gameObjectives: gamevisitorentity.gameObjectives,
                      materials: gamevisitorentity.materials,
                      section: gamevisitorentity.sectionName,
                      numofplayers: gamevisitorentity.numofplayers,
                      averageRating: gamevisitorentity.averageRating,
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
