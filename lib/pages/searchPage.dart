import 'package:flutter/material.dart';
import 'package:job4u/pages/sections.dart';
import 'package:job4u/services/searchItems.dart';

var controller;

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List mySection = allSections;

  void searchSection(String query) {
    final suggestions = mySection.where((section) {
      final sectionTitle = section.title.toLowerCase();
      final input = query.toLowerCase();
      return sectionTitle.contains(input);
    }).toList();
    setState(() => mySection = suggestions);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(16, 36, 16, 0),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.close,
                    size: 28,
                    color: Colors.black,
                  ),
                ),
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
              ),
              onChanged: searchSection,
            ), // Outline InputBorder
          ),
          Expanded(
            child: ListView.builder(
              itemCount: mySection.length,
              itemBuilder: (context, index) {
                final section = mySection[index];

                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => section.url));
                    },
                    child: ListTile(
                      minLeadingWidth: 50,
                      leading: Image.asset(
                        section.image,
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40,
                      ), // Image.network
                      title: Text(
                        section.title,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ); // ListTile
              },
            ), // ListView.builder
          ), // Expanded
        ], // Input Decoration
      ), // TextField
    );
  }
}
