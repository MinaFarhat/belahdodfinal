import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/profile/Manager/Get%20User%20Info%202%20Cubit/get_user_info2_cubit.dart';
import 'package:belahododfinal/Features/User/profile/Manager/Update%20User%20Info%20Cubit/update_user_info_cubit.dart';
import 'package:belahododfinal/Features/Widgets/Static%20Widgets/simple_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});
  static List<String> cities = [
    "دمشق",
    "حلب",
    "حمص",
    "ريف دمشق",
    "إدلب",
    "حماة",
    "اللاذقية",
    "طرطوس",
    "السويداء",
    "درعا",
    "القنيطرة",
    "دير الزور",
    "الحسكة",
    "الرقة",
  ];

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _numberController = TextEditingController();

  final TextEditingController _regionController = TextEditingController();

  static String? value;

  @override
  void initState() {
    context.read<GetUserInfo2Cubit>().getUserInfo2();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<GetUserInfo2Cubit, GetUserInfo2State>(
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
            success: (getuserinfo2entity) {
              return Scaffold(
                backgroundColor: SharedPreferencesUtils().getisDark() == false
                    ? Colors.white
                    : Colors.grey.shade900,
                appBar: SimpleTopBar(
                  name: "إعدادات الحساب",
                  leading: Container(),
                  action: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: InkWell(
                        overlayColor:
                            WidgetStateProperty.all(Colors.transparent),
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          PhosphorIcons.arrowRight(PhosphorIconsStyle.regular),
                          size: 26,
                          color: SharedPreferencesUtils().getisDark() == false
                              ? Colors.grey.shade900
                              : Colors.white,
                        ),
                      ),
                    ),
                  ],
                  isBottom: false,
                ),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "الأسم",
                              style: TextStyle(
                                color: SharedPreferencesUtils().getisDark() ==
                                        false
                                    ? Colors.black
                                    : Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.023,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 20,
                          child: TextFormField(
                            controller: _nameController,
                            cursorColor:
                                SharedPreferencesUtils().getisDark() == false
                                    ? Colors.grey.shade900
                                    : Colors.white,
                            cursorHeight: 20,
                            cursorRadius: const Radius.circular(50),
                            style: TextStyle(
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? Colors.grey.shade900
                                      : Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textDirection: TextDirection.rtl,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: getuserinfo2entity.userName,
                              hintTextDirection: TextDirection.rtl,
                              hintStyle: TextStyle(
                                color: SharedPreferencesUtils().getisDark() ==
                                        false
                                    ? Colors.grey.shade900
                                    : Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              prefixIcon: Icon(
                                PhosphorIcons.pencil(
                                    PhosphorIconsStyle.regular),
                                size: 24,
                                color: SharedPreferencesUtils().getisDark() ==
                                        false
                                    ? Colors.grey.shade900
                                    : Colors.white,
                              ),
                            ),
                            keyboardType: TextInputType.name,
                          ),
                        ),
                        Divider(
                          color: Colors.grey.shade500,
                          thickness: 1.5,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "رقم الهاتف",
                              style: TextStyle(
                                color: SharedPreferencesUtils().getisDark() ==
                                        false
                                    ? Colors.black
                                    : Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.023,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: 20,
                          child: TextFormField(
                            controller: _numberController,
                            cursorColor:
                                SharedPreferencesUtils().getisDark() == false
                                    ? Colors.grey.shade900
                                    : Colors.white,
                            cursorHeight: 20,
                            cursorRadius: const Radius.circular(50),
                            style: TextStyle(
                              color:
                                  SharedPreferencesUtils().getisDark() == false
                                      ? Colors.grey.shade900
                                      : Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textDirection: TextDirection.rtl,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: getuserinfo2entity.userPhoneNumber,
                              hintTextDirection: TextDirection.rtl,
                              hintStyle: TextStyle(
                                color: SharedPreferencesUtils().getisDark() ==
                                        false
                                    ? Colors.grey.shade900
                                    : Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              prefixIcon: Icon(
                                PhosphorIcons.pencil(
                                    PhosphorIconsStyle.regular),
                                size: 24,
                                color: SharedPreferencesUtils().getisDark() ==
                                        false
                                    ? Colors.grey.shade900
                                    : Colors.white,
                              ),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Divider(
                          color: Colors.grey.shade500,
                          thickness: 1.5,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              "العنوان",
                              style: TextStyle(
                                color: SharedPreferencesUtils().getisDark() ==
                                        false
                                    ? Colors.black
                                    : Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.023,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,
                              height: 50,
                              child: TextFormField(
                                controller: _regionController,
                                style: TextStyle(
                                  color: SharedPreferencesUtils().getisDark() ==
                                          false
                                      ? Colors.grey.shade900
                                      : Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlignVertical: TextAlignVertical.center,
                                cursorHeight: 20,
                                cursorRadius: const Radius.circular(50),
                                cursorColor:
                                    SharedPreferencesUtils().getisDark() ==
                                            false
                                        ? Colors.grey.shade900
                                        : Colors.white,
                                keyboardType: TextInputType.streetAddress,
                                textDirection: TextDirection.rtl,
                                enableSuggestions: true,
                                decoration: InputDecoration(
                                  hintText: getuserinfo2entity.userAddress,
                                  hintTextDirection: TextDirection.rtl,
                                  hintStyle: TextStyle(
                                    color:
                                        SharedPreferencesUtils().getisDark() ==
                                                false
                                            ? Colors.grey.shade900
                                            : Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade500,
                                      width: 1.5,
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade500,
                                      width: 1.5,
                                    ),
                                  ),
                                  disabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade500,
                                      width: 1.5,
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey.shade500,
                                      width: 1.5,
                                    ),
                                  ),
                                  prefixIcon: Icon(
                                    PhosphorIcons.pencil(
                                        PhosphorIconsStyle.regular),
                                    size: 24,
                                    color:
                                        SharedPreferencesUtils().getisDark() ==
                                                false
                                            ? Colors.grey.shade900
                                            : Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: DropdownButtonFormField(
                                dropdownColor:
                                    SharedPreferencesUtils().getisDark() ==
                                            false
                                        ? Colors.white
                                        : Colors.grey.shade900,
                                style: TextStyle(
                                  color: SharedPreferencesUtils().getisDark() ==
                                          false
                                      ? Colors.grey.shade900
                                      : Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                menuMaxHeight: 300,
                                hint: Text(
                                  getuserinfo2entity.userCity,
                                  style: TextStyle(
                                    color:
                                        SharedPreferencesUtils().getisDark() ==
                                                false
                                            ? Colors.grey.shade900
                                            : Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                iconSize: 30,
                                isExpanded: true,
                                alignment: Alignment.center,
                                value: getuserinfo2entity.userCity,
                                items:
                                    AccountSettings.cities.map((String city) {
                                  return DropdownMenuItem(
                                    enabled: true,
                                    value: city,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          city,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: SharedPreferencesUtils()
                                                        .getisDark() ==
                                                    false
                                                ? Colors.grey.shade900
                                                : Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                onChanged: (val) {
                                  setState(() {
                                    value = val;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.4,
                        ),
                        _nameController.text.isNotEmpty ||
                                _numberController.text.isNotEmpty ||
                                _regionController.text.isNotEmpty ||
                                value != null
                            ? BlocConsumer<UpdateUserInfoCubit,
                                UpdateUserInfoState>(
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
                                    success: (updateuserinfoentity) {
                                      if (updateuserinfoentity.isSent == true) {
                                        Fluttertoast.showToast(
                                          msg: updateuserinfoentity.message,
                                          toastLength: Toast.LENGTH_LONG,
                                          gravity: ToastGravity.BOTTOM,
                                          backgroundColor: Colors.green,
                                        );
                                        value = null;
                                        Navigator.pop(context);
                                      } else {
                                        Fluttertoast.showToast(
                                          msg: updateuserinfoentity.message,
                                          toastLength: Toast.LENGTH_LONG,
                                          gravity: ToastGravity.BOTTOM,
                                          backgroundColor: Colors.red,
                                        );
                                      }
                                    },
                                  );
                                },
                                builder: (context, state) {
                                  return state.maybeWhen(
                                    orElse: () {
                                      return InkWell(
                                        overlayColor: WidgetStateProperty.all(
                                            Colors.transparent),
                                        onTap: () {
                                          context
                                              .read<UpdateUserInfoCubit>()
                                              .updateUserInfo(
                                                name: _nameController
                                                        .text.isNotEmpty
                                                    ? _nameController.text
                                                    : getuserinfo2entity
                                                        .userName,
                                                phoneNumber: _numberController
                                                        .text.isNotEmpty
                                                    ? _numberController.text
                                                    : getuserinfo2entity
                                                        .userPhoneNumber,
                                                address: _regionController
                                                        .text.isNotEmpty
                                                    ? _regionController.text
                                                    : getuserinfo2entity
                                                        .userAddress,
                                                city: value == null
                                                    ? getuserinfo2entity
                                                        .userCity
                                                    : value!,
                                              );
                                        },
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.5,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.06,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: ColorConstant.mainColor,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "إرسال",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.02,
                                              ),
                                              Icon(
                                                PhosphorIcons.paperPlane(
                                                    PhosphorIconsStyle.regular),
                                                size: 24,
                                                color: Colors.white,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    initial: () {
                                      return InkWell(
                                        overlayColor: WidgetStateProperty.all(
                                            Colors.transparent),
                                        onTap: () {
                                          context
                                              .read<UpdateUserInfoCubit>()
                                              .updateUserInfo(
                                                name: _nameController
                                                        .text.isNotEmpty
                                                    ? _nameController.text
                                                    : getuserinfo2entity
                                                        .userName,
                                                phoneNumber: _numberController
                                                        .text.isNotEmpty
                                                    ? _numberController.text
                                                    : getuserinfo2entity
                                                        .userPhoneNumber,
                                                address: _regionController
                                                        .text.isNotEmpty
                                                    ? _regionController.text
                                                    : getuserinfo2entity
                                                        .userAddress,
                                                city: value == null
                                                    ? getuserinfo2entity
                                                        .userCity
                                                    : value!,
                                              );
                                        },
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.5,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.06,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: ColorConstant.mainColor,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "إرسال",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.02,
                                              ),
                                              Icon(
                                                PhosphorIcons.paperPlane(
                                                    PhosphorIconsStyle.regular),
                                                size: 24,
                                                color: Colors.white,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                    loading: () {
                                      return Center(
                                        child: CircularProgressIndicator(
                                          color: SharedPreferencesUtils()
                                                      .getisDark() ==
                                                  false
                                              ? ColorConstant.mainColor
                                              : Colors.white,
                                        ),
                                      );
                                    },
                                    success: (updateuserinfoentity) {
                                      return InkWell(
                                        overlayColor: WidgetStateProperty.all(
                                            Colors.transparent),
                                        onTap: () {
                                          context
                                              .read<UpdateUserInfoCubit>()
                                              .updateUserInfo(
                                                name: _nameController
                                                        .text.isNotEmpty
                                                    ? _nameController.text
                                                    : getuserinfo2entity
                                                        .userName,
                                                phoneNumber: _numberController
                                                        .text.isNotEmpty
                                                    ? _numberController.text
                                                    : getuserinfo2entity
                                                        .userPhoneNumber,
                                                address: _regionController
                                                        .text.isNotEmpty
                                                    ? _regionController.text
                                                    : getuserinfo2entity
                                                        .userAddress,
                                                city: value == null
                                                    ? getuserinfo2entity
                                                        .userCity
                                                    : value!,
                                              );
                                        },
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.5,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.06,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            color: ColorConstant.mainColor,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Text(
                                                "إرسال",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.02,
                                              ),
                                              Icon(
                                                PhosphorIcons.paperPlane(
                                                    PhosphorIconsStyle.regular),
                                                size: 24,
                                                color: Colors.white,
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              )
                            : Container(),
                      ],
                    ),
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
