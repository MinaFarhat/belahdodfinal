import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool isSearching = false;
  // final TextEditingController _searchController = TextEditingController();
  List<String> oldsearch = [
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
  ];

  List<String> resultsofSearching = [
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
    "أقلام تلوين",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.06,
              child: TextFormField(
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                textDirection: TextDirection.rtl,
                cursorColor: Colors.grey.shade900,
                cursorHeight: 20,
                cursorRadius: const Radius.circular(50),
                textInputAction: TextInputAction.search,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "أبحث",
                  hintTextDirection: TextDirection.rtl,
                  hintStyle: TextStyle(
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                  suffixIcon: InkWell(
                    overlayColor: WidgetStateProperty.all(Colors.transparent),
                    onTap: () {},
                    child: Icon(
                      PhosphorIcons.qrCode(PhosphorIconsStyle.regular),
                      color: Colors.grey.shade900,
                      size: 22,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.grey.shade900,
                      width: 1.5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.grey.shade900,
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.grey.shade900,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
