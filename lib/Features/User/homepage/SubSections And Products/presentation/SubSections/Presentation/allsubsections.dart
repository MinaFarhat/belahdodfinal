import 'package:belahododfinal/Features/User/homepage/SubSections%20And%20Products/presentation/SubSections/Presentation/subsectionitem.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AllSubSections extends StatelessWidget {
  AllSubSections({
    required this.sectionId,
    super.key,
  });
  int sectionId;
  List<Map<String, dynamic>> allsubsections = [
    {
      "name": "aaaaaaaaaaaa",
    },
    {
      "name": "aaaaaaaaaaaa",
    },
    {
      "name": "aaaaaaaaaaaa",
    },
    {
      "name": "aaaaaaaaaaaa",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.9,
        child: allsubsections.isNotEmpty
            ? GridView.builder(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.13,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: allsubsections.length,
                itemBuilder: (context, index) {
                  return SubSectionItem(
                    name: allsubsections[index]["name"],
                    sectionId: sectionId,
                  );
                },
              )
            : const Center(
                child: Text(
                  "لا توجد منتجات بعد في هذا القسم",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
      ),
    );
  }
}
