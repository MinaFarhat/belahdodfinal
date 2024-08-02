import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/profile/Manager/Get%20User%20Info%20Cubit/get_user_info_cubit.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'Componentes of Profile/bottompartprofile.dart';
import 'Componentes of Profile/middlepartprofile.dart';
import 'Componentes of Profile/toppartprofile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    context.read<GetUserInfoCubit>().getUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<GetUserInfoCubit, GetUserInfoState>(
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
              return Scaffold(
                backgroundColor: SharedPreferencesUtils().getisDark() == false
                    ? Colors.white
                    : Colors.grey.shade900,
                body: Center(
                  child: CircularProgressIndicator(
                    color: SharedPreferencesUtils().getisDark() == false
                        ? ColorConstant.mainColor
                        : Colors.white,
                  ),
                ),
              );
            },
            initial: () {
              return Scaffold(
                backgroundColor: SharedPreferencesUtils().getisDark() == false
                    ? Colors.white
                    : Colors.grey.shade900,
                body: Center(
                  child: CircularProgressIndicator(
                    color: SharedPreferencesUtils().getisDark() == false
                        ? ColorConstant.mainColor
                        : Colors.white,
                  ),
                ),
              );
            },
            loading: () {
              return Scaffold(
                backgroundColor: SharedPreferencesUtils().getisDark() == false
                    ? Colors.white
                    : Colors.grey.shade900,
                body: Center(
                  child: CircularProgressIndicator(
                    color: SharedPreferencesUtils().getisDark() == false
                        ? ColorConstant.mainColor
                        : Colors.white,
                  ),
                ),
              );
            },
            success: (getuserinfoentity) {
              String imageUrl =
                  'http://10.0.2.2:8000${getuserinfoentity.userProfilePicture}';
              return Scaffold(
                backgroundColor: SharedPreferencesUtils().getisDark() == false
                    ? Colors.white
                    : Colors.grey.shade900,
                appBar: SimpleTopBar(
                  name: "الملف الشخصي",
                  leading: Container(),
                  action: const [],
                  isBottom: false,
                ),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.005,
                      ),
                      TopPartProfile(
                        imageProfile: imageUrl.isEmpty
                            ? "assets/images/User-avatar.png"
                            : imageUrl,
                        nameUser: getuserinfoentity.userName,
                        location: getuserinfoentity.userAddress,
                        points: getuserinfoentity.userPoints.toString(),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.018,
                      ),
                      MiddlePartProfile(
                        numberOfOrder: getuserinfoentity.userOrders,
                        numOfVouchers: getuserinfoentity.userCoupons,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.018,
                      ),
                      const BottomPartProfile(),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
