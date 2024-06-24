import 'package:belahododfinal/Core/constant/colors_constant.dart';
import 'package:belahododfinal/Core/error/network_exceptions.dart';
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
  // List<Map<String, dynamic>> allsubsections = [
  //   {
  //     "name": "aaaaaaaaaaaa",
  //   },
  //   {
  //     "name": "aaaaaaaaaaaa",
  //   },
  //   {
  //     "name": "aaaaaaaaaaaa",
  //   },
  //   {
  //     "name": "aaaaaaaaaaaa",
  //   },
  // ];

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
                            sectionId:
                                getsubsectionsentity.getsubsections[index].id,
                          );
                        },
                      )
                    : const Center(
                        child: Text(
                          "لا توجد أقسام فرعية في هذا القسم",
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
    );
  }
}