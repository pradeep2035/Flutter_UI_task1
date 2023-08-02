import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import '../models/lesson_model.dart';

class SecondApiPage extends StatefulWidget {
  const SecondApiPage({super.key});

  @override
  State<SecondApiPage> createState() => _SecondApiPageState();
}

class _SecondApiPageState extends State<SecondApiPage> {
  List<Items> itemsList = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    final response = await http.get(
        Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/lessons'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final dataModel = LessonDataModel.fromJson(jsonData);
      setState(() {
        itemsList = dataModel.items ?? [];
        isLoading = false;
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  String formatDateTime(String dateTimeString) {
    DateTime dateTime = DateTime.parse(dateTimeString);
    return DateFormat('E, MMM d y  |  HH:mm a ').format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Lessons for you',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
        ),
        body: isLoading
            ? const Center(
                child: CircularProgressIndicator(color: Color(0xFF598BED)))
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: itemsList.length,
                    itemBuilder: (BuildContext context, index) {
                      final item = itemsList[index];
                      return Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                            width: 400,
                            height: 115,
                            decoration: BoxDecoration(
                              color: const Color(0xFFEEF3FD),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  width: 1, color: const Color(0xFF598BED)),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x0E443E14),
                                  offset: Offset(0, 0),
                                  blurRadius: 12,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Row(children: [
                              Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    item.id ?? "",
                                    style: const TextStyle(fontSize: 16),
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Created: ${formatDateTime(item.createdAt ?? " ")}",
                                                style: const TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.blue),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            item.name ?? " ",
                                            style: const TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0xFF120D26),
                                            ),
                                            maxLines: 2,
                                            overflow: TextOverflow.fade,
                                          ),
                                          const SizedBox(
                                            height: 9,
                                          ),
                                          Row(
                                            children: [
                                              const SizedBox(width: 4),
                                              Text(
                                                "Categtory: ${item.category} | Duration: ${item.duration.toString()} | Lock:",
                                                style: const TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.grey),
                                              ),
                                              if (item.locked ?? true)
                                                const Icon(Icons.lock,
                                                    color: Colors.red),
                                              if (!(item.locked ?? true))
                                                const Icon(Icons.lock_open,
                                                    color: Colors.green),
                                            ],
                                          ),
                                        ])),
                              )
                            ])),
                      );
                    }),
              ));
  }
}
