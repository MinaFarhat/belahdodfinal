import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_base.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_book.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_game.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_qurans.dart';
import 'package:belahododfinal/Features/User/Details/presentation/details_stationery.dart';
import 'package:belahododfinal/Features/User/search/Populer%20Products/Popular%20Products%20Cubit/popular_products_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularItem extends StatelessWidget {
  final List<String> images;
  final List<int> productIds;
  final List<int> sectionIds;
  final bool isEven;

  const PopularItem({
    required this.images,
    required this.productIds,
    required this.sectionIds,
    required this.isEven,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: isEven ? _buildEvenLayout(context) : _buildOddLayout(context),
      ),
    );
  }

  List<Widget> _buildEvenLayout(BuildContext context) {
    return [
      _buildMainImage(context, images[0], productIds[0], sectionIds[0]),
      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
      _buildSecondaryImages(context),
    ];
  }

  List<Widget> _buildOddLayout(BuildContext context) {
    return [
      _buildSecondaryImages(context),
      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
      _buildMainImage(context, images[0], productIds[0], sectionIds[0]),
    ];
  }

  Widget _buildMainImage(
      BuildContext context, String imageUrl, int productId, int sectionId) {
    return InkWell(
      onTap: () {
        _navigateToDetails(context, productId, sectionId);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.35,
        height: MediaQuery.of(context).size.height * 0.31,
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
        ),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
          placeholder: (context, url) => Center(
            child: CircularProgressIndicator(
              color: ColorConstant.mainColor,
            ),
          ),
          errorWidget: (context, url, error) => Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.31,
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
                width: MediaQuery.of(context).size.width * 0.35,
                height: MediaQuery.of(context).size.height * 0.31,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSecondaryImages(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            _buildSecondaryImage(
                context, images[1], productIds[1], sectionIds[1]),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02),
            _buildSecondaryImage(
                context, images[2], productIds[2], sectionIds[2]),
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.007),
        Row(
          children: [
            _buildSecondaryImage(
                context, images[3], productIds[3], sectionIds[3]),
            SizedBox(width: MediaQuery.of(context).size.width * 0.02),
            _buildSecondaryImage(
                context, images[4], productIds[4], sectionIds[4]),
          ],
        ),
      ],
    );
  }

  Widget _buildSecondaryImage(
      BuildContext context, String imageUrl, int productId, int sectionId) {
    return InkWell(
      onTap: () {
        _navigateToDetails(context, productId, sectionId);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.283,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
        ),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
          placeholder: (context, url) => Center(
            child: CircularProgressIndicator(
              color: ColorConstant.mainColor,
            ),
          ),
          errorWidget: (context, url, error) => Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.283,
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
                width: MediaQuery.of(context).size.width * 0.283,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.black.withOpacity(0.1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToDetails(BuildContext context, int productId, int sectionId) {
    Widget detailsPage;
    switch (sectionId) {
      case 1:
        detailsPage = DetailsBook(productID: productId);
        break;
      case 2:
        detailsPage = DetailsGame(productID: productId);
        break;
      case 3:
        detailsPage = DetailsStationery(productID: productId);
        break;
      case 4:
        detailsPage = DetailsQurans(productID: productId);
        break;
      default:
        detailsPage = DetailsBase(productID: productId);
    }
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => detailsPage))
        .then((_) => context.read<PopularProductsCubit>().getPopularProducts());
  }
}
