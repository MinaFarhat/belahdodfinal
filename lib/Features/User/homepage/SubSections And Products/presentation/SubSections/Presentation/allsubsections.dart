import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
import 'package:belahododfinal/Core/utils/shared_preference_utils.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Get%20SubSections%20Cubit/getsubsections_cubit.dart';
import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/subsectionitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class AllSubSections extends StatefulWidget {
  AllSubSections({
    required this.sectionId,
    super.key,
  });
  int sectionId;

  @override
  State<AllSubSections> createState() => _AllSubSectionsState();
}

class _AllSubSectionsState extends State<AllSubSections> {
  @override
  void initState() {
    context.read<GetsubsectionsCubit>().getsubsections(widget.sectionId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: BlocConsumer<GetsubsectionsCubit, GetsubsectionsState>(
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
            initial: () {
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
            success: (getsubsectionsentity) {
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.9,
                child: getsubsectionsentity.getsubsections.isNotEmpty
                    ? GridView.builder(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).size.height * 0.13,
                        ),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 3 / 4,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        itemCount: getsubsectionsentity.getsubsections.length,
                        itemBuilder: (context, index) {
                          return SubSectionItem(
                            name:
                                getsubsectionsentity.getsubsections[index].name,
                            subsectionId:
                                getsubsectionsentity.getsubsections[index].id,
                            sectionId: widget.sectionId,
                          );
                        },
                      )
                    : Center(
                        child: Text(
                          "لا توجد أقسام فرعية في هذا القسم",
                          style: TextStyle(
                            fontSize: 18,
                            color: SharedPreferencesUtils().getisDark() == false
                                ? Colors.black
                                : Colors.white,
                            fontWeight: FontWeight.bold,
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
