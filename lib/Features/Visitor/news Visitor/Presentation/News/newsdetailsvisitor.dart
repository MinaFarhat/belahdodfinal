import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/news/Manager/New%20Details%20Cubit/new_details_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class NewsDetailsVisitor extends StatefulWidget {
  const NewsDetailsVisitor({
    required this.newId,
    super.key,
  });
  final int newId;

  @override
  State<NewsDetailsVisitor> createState() => _NewsDetailsVisitorState();
}

class _NewsDetailsVisitorState extends State<NewsDetailsVisitor> {
  @override
  void initState() {
    context.read<NewDetailsCubit>().getNewDetails(widget.newId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocConsumer<NewDetailsCubit, NewDetailsState>(
          listener: (context, state) {
            state.whenOrNull(
              error: (networkExceptions) {
                Fluttertoast.showToast(
                  msg: NetworkExceptions.getErrorMessage(networkExceptions),
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
              success: (getnewdetailsentity) {
                String imageUrl =
                    'http://10.0.2.2:8000${getnewdetailsentity.newsImage}';
                return Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.4,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                imageUrl,
                              ),
                              fit: BoxFit.cover,
                              onError: (exception, stackTrace) {
                                Stack(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white,
                                        image: DecorationImage(
                                          image: CachedNetworkImageProvider(
                                            getnewdetailsentity.newsImage,
                                          ),
                                          fit: BoxFit.cover,
                                          onError: (exception, stackTrace) {
                                            Stack(
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.4,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Colors.white,
                                                    image:
                                                        const DecorationImage(
                                                      image: AssetImage(
                                                          "assets/images/logo.png"),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.4,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: Colors.black
                                                        .withOpacity(0.3),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.black.withOpacity(0.3),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                        Positioned(
                          right: 6,
                          top: 8,
                          child: InkWell(
                            overlayColor:
                                WidgetStateProperty.all(Colors.transparent),
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.1,
                              height:
                                  MediaQuery.of(context).size.height * 0.045,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white.withOpacity(0.7),
                              ),
                              child: Center(
                                child: Icon(
                                  PhosphorIcons.arrowRight(
                                      PhosphorIconsStyle.regular),
                                  size: 28,
                                  color: ColorConstant.darkColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 1,
                            child: Text(
                              getnewdetailsentity.newsTitle,
                              textDirection: TextDirection.rtl,
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04,
                            width: MediaQuery.of(context).size.width * 1,
                            child: Text(
                              getnewdetailsentity.newsDescription,
                              textDirection: TextDirection.rtl,
                              maxLines: 50,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey.shade900,
                              ),
                            ),
                          ),
                        ],
                      ),
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
