import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_base.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_book.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_game.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_qurans.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_stationery.dart';
import 'package:belahododfinal/Features/User/news/presentation/Details%20Of%20Offer/detailofoffer.dart';
import 'package:belahododfinal/Features/User/news/presentation/News/newsdetails.dart';
import 'package:belahododfinal/Features/User/note/Manager/Change%20State%20Notification%20Cubit/change_state_note_cubit.dart';
import 'package:belahododfinal/Features/User/note/Manager/Get%20Notification%20Cubit/get_notifications_cubit.dart';
import 'package:belahododfinal/Features/User/payment/Payment%20Methods/presentation/payment_mehods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class NotificationItem extends StatelessWidget {
  final int noteId;
  final int noteType;
  final String title;
  final String subtitle;
  final bool isRead;
  final int? orderId;
  final int? userId;
  final int? sectionId;
  final int? productId;
  final int? newsId;
  final int? offerId;
  const NotificationItem({
    required this.noteId,
    required this.noteType,
    required this.title,
    required this.subtitle,
    required this.isRead,
    required this.orderId,
    required this.userId,
    required this.sectionId,
    required this.productId,
    required this.newsId,
    required this.offerId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: () {
        if (noteType == 1) {
          context.read<ChangeStateNoteCubit>().changeStateNote(noteId);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return PaymentMethods(
                  orderId: orderId!,
                );
              },
            ),
          ).then(
              (_) => context.read<GetNotificationsCubit>().getNotifications());
        } else if (noteType == 2) {
          context.read<ChangeStateNoteCubit>().changeStateNote(noteId);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return DetailsOfOffer(
                  offerId: offerId!,
                );
              },
            ),
          ).then(
              (_) => context.read<GetNotificationsCubit>().getNotifications());
        } else if (noteType == 3) {
          context.read<ChangeStateNoteCubit>().changeStateNote(noteId);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return NewsDetails(
                  newId: newsId!,
                );
              },
            ),
          ).then(
              (_) => context.read<GetNotificationsCubit>().getNotifications());
        } else if (noteType == 4) {
          context.read<ChangeStateNoteCubit>().changeStateNote(noteId);
          if (sectionId == 1) {
            Navigator.of(context)
                .push(
                  MaterialPageRoute(
                    builder: (context) => DetailsBook(
                      productID: productId!,
                    ),
                  ),
                )
                .then((_) =>
                    context.read<GetNotificationsCubit>().getNotifications());
          } else if (sectionId == 2) {
            Navigator.of(context)
                .push(
                  MaterialPageRoute(
                    builder: (context) => DetailsGame(
                      productID: productId!,
                    ),
                  ),
                )
                .then((_) =>
                    context.read<GetNotificationsCubit>().getNotifications());
          } else if (sectionId == 3) {
            Navigator.of(context)
                .push(
                  MaterialPageRoute(
                    builder: (context) => DetailsStationery(
                      productID: productId!,
                    ),
                  ),
                )
                .then((_) =>
                    context.read<GetNotificationsCubit>().getNotifications());
          } else if (sectionId == 4) {
            Navigator.of(context)
                .push(
                  MaterialPageRoute(
                    builder: (context) => DetailsQurans(
                      productID: productId!,
                    ),
                  ),
                )
                .then((_) =>
                    context.read<GetNotificationsCubit>().getNotifications());
          } else if (sectionId == 5 || sectionId! > 5) {
            Navigator.of(context)
                .push(
                  MaterialPageRoute(
                    builder: (context) => DetailsBase(
                      productID: productId!,
                    ),
                  ),
                )
                .then((_) =>
                    context.read<GetNotificationsCubit>().getNotifications());
          }
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            isRead == false
                ? Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: CircleAvatar(
                      backgroundColor:
                          SharedPreferencesUtils().getisDark() == false
                              ? ColorConstant.mainColor
                              : Colors.white,
                      radius: 4,
                    ),
                  )
                : Container(),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.001,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.72,
                  child: Text(
                    title,
                    textDirection: TextDirection.rtl,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: SharedPreferencesUtils().getisDark() == false
                          ? Colors.grey.shade900
                          : Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.005,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Text(
                    subtitle,
                    textDirection: TextDirection.rtl,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: SharedPreferencesUtils().getisDark() == false
                          ? Colors.grey.shade600
                          : Colors.grey.shade400,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.02,
            ),
            Stack(
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage("assets/images/notification.png"),
                ),
                Positioned(
                  bottom: 2,
                  child: Center(
                    child: CircleAvatar(
                      radius: 12,
                      backgroundColor: ColorConstant.mainColor,
                      child: Icon(
                        PhosphorIcons.bellRinging(PhosphorIconsStyle.regular),
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
