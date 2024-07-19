import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/news/Manager/Ads%20Cubit/ads_cubit.dart';
import 'package:belahododfinal/Features/User/news/Manager/Get%20All%20Offers%20Cubit/getalloffers_cubit.dart';
import 'package:belahododfinal/Features/User/news/Manager/News%20Cubit/news_cubit.dart';
import 'package:belahododfinal/Features/User/news/presentation/News/newsdetails.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class NewTitle extends StatelessWidget {
  final int newsId;
  final String image;
  final String title;
  const NewTitle({
    required this.newsId,
    required this.image,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(Colors.transparent),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return NewsDetails(
                image: image,
                text: title,
              );
            },
          ),
        ).then((_) {
          context.read<GetalloffersCubit>().offers();
          context.read<NewsCubit>().getNews();
          context.read<AdsCubit>().getAds();
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 12, left: 12, top: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.47,
              child: Text(
                title,
                overflow: TextOverflow.clip,
                textDirection: TextDirection.rtl,
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
              width: MediaQuery.of(context).size.width * 0.015,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.45,
              height: MediaQuery.of(context).size.height * 0.12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: CachedNetworkImageProvider(image),
                  fit: BoxFit.cover,
                  onError: (exception, stackTrace) {
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                            image: const DecorationImage(
                              image: AssetImage("assets/images/logo.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
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
          ],
        ),
      ),
    );
  }
}
