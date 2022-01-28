import 'package:flutter/material.dart';
import 'package:flutter_cart/api/db_api.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
  final DBApi dbApi = DBApi();
    
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text("E-Commerce"),
      ),
      body: ListView.builder(
        itemCount: dbApi.getCategory()!.length,
        itemBuilder: (context, index) {
          return Text(dbApi.getCategory()![index].name!);
        },
      ),
    );
  }
}
