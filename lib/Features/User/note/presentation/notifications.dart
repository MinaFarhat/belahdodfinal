import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Features/User/note/cubit/get_notifications_cubit.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../../../Core/constant/colors_constant.dart';
import 'noteitem.dart';

// ignore: must_be_immutable
class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  void initState() {
    context.read<GetNotificationsCubit>().getNotifications();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        appBar: SimpleTopBar(
          name: "الإشعارات",
          leading: Container(),
          action: const [
            // Padding(
            //   padding: const EdgeInsets.only(right: 16),
            //   child: InkWell(
            //     overlayColor: WidgetStateProperty.all(Colors.transparent),
            //     onTap: () {},
            //     child: Icon(
            //       PhosphorIcons.bellSlash(PhosphorIconsStyle.regular),
            //       size: 26,
            //       color: ColorConstant.mainColor,
            //     ),
            //   ),
            // ),
          ],
          isBottom: false,
        ),
        body: BlocConsumer<GetNotificationsCubit, GetNotificationsState>(
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
              success: (getnotificationsentity) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: getnotificationsentity.getNotifications.isNotEmpty
                      ? ListView.builder(
                          shrinkWrap: true,
                          itemCount:
                              getnotificationsentity.getNotifications.length,
                          itemBuilder: ((context, index) {
                            return Column(
                              children: [
                                NotificationItem(
                                  noteId: getnotificationsentity
                                      .getNotifications[index].noteId,
                                  noteType: getnotificationsentity
                                      .getNotifications[index].noteType,
                                  title: getnotificationsentity
                                      .getNotifications[index].noteTitle,
                                  subtitle: getnotificationsentity
                                      .getNotifications[index].noteDescription,
                                  isRead: getnotificationsentity
                                      .getNotifications[index].isRead,
                                ),
                                index ==
                                        getnotificationsentity
                                                .getNotifications.length -
                                            1
                                    ? SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.08,
                                      )
                                    : Container(),
                              ],
                            );
                          }),
                        )
                      : const Center(
                          child: Text(
                            "لاتوجد إشعارات بعد",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
