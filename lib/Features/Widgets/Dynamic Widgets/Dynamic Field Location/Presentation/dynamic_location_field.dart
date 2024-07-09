import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/Get%20Cities%20Cubit/get_cities_cubit.dart';
import 'package:belahododfinal/Features/Widgets/Dynamic%20Widgets/Dynamic%20Field%20Location/data/Model/getcitiesentity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DynamicLocationField extends StatefulWidget {
  final String? Function(String?)? validatefield;
  final String? Function(GetCitiesData?)? validatedropdownbutton;
  final TextEditingController controller;
  const DynamicLocationField({
    required this.validatefield,
    required this.validatedropdownbutton,
    required this.controller,
    super.key,
  });

  static String? value;
  static int? cityId;

  @override
  State<DynamicLocationField> createState() => _DynamicLocationFieldState();
}

class _DynamicLocationFieldState extends State<DynamicLocationField> {
  @override
  void initState() {
    context.read<GetCitiesCubit>().getCities();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "العنوان",
                style: TextStyle(
                  color: SharedPreferencesUtils().getisDark() == false
                      ? Colors.grey.shade900
                      : Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.008,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 1.5),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: TextFormField(
                  controller: widget.controller,
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: SharedPreferencesUtils().getisDark() == false
                      ? ColorConstant.mainColor
                      : Colors.white,
                  cursorHeight: 22,
                  cursorRadius: const Radius.circular(50),
                  keyboardType: TextInputType.streetAddress,
                  textDirection: TextDirection.rtl,
                  enableSuggestions: true,
                  decoration: InputDecoration(
                    hintText: "المنطقة",
                    hintTextDirection: TextDirection.rtl,
                    hintStyle: TextStyle(
                      fontSize: 18,
                      color: SharedPreferencesUtils().getisDark() == false
                          ? ColorConstant.hintTextColor
                          : Colors.grey.shade300,
                      fontWeight: FontWeight.bold,
                    ),
                    border: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(
                        width: 1,
                        color: ColorConstant.mainColor,
                      ),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(
                        width: 1,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? ColorConstant.hintTextColor
                            : Colors.grey.shade300,
                      ),
                    ),
                    disabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(
                        width: 1,
                        color: SharedPreferencesUtils().getisDark() == false
                            ? ColorConstant.hintTextColor
                            : Colors.grey.shade300,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(
                        width: 1,
                        color: ColorConstant.mainColor,
                      ),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: SharedPreferencesUtils().getisDark() == false
                        ? ColorConstant.mainColor
                        : Colors.white,
                  ),
                  validator: widget.validatefield,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.3,
              child: BlocConsumer<GetCitiesCubit, GetCitiesState>(
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
                    loading: () {
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
                    success: (getcitiesentity) {
                      return DropdownButtonFormField<GetCitiesData>(
                        dropdownColor:
                            SharedPreferencesUtils().getisDark() == false
                                ? Colors.white
                                : Colors.grey.shade900,
                        menuMaxHeight: 300,
                        hint: Text(
                          "المحافظة",
                          style: TextStyle(
                            fontSize: 18,
                            color: SharedPreferencesUtils().getisDark() == false
                                ? ColorConstant.hintTextColor
                                : Colors.grey.shade300,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        iconSize: 30,
                        isExpanded: true,
                        alignment: Alignment.center,
                        value: DynamicLocationField.cityId != null
                            ? getcitiesentity.cities.firstWhere(
                                (city) =>
                                    city.cityId == DynamicLocationField.cityId,
                                orElse: () => GetCitiesData(0,
                                    ""), // Provide a default value if not found
                              )
                            : null,
                        items: getcitiesentity.cities.map((city) {
                          return DropdownMenuItem<GetCitiesData>(
                            value: city,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  city.name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 17,
                                    color:
                                        SharedPreferencesUtils().getisDark() ==
                                                false
                                            ? ColorConstant.mainColor
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
                            DynamicLocationField.cityId = val?.cityId;
                            DynamicLocationField.value = val?.name;
                          });
                        },
                        validator: widget.validatedropdownbutton,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
