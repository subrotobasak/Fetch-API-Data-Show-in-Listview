import 'package:fetch_api_data_show_in_listview/screens/screen1/components/body.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch API Data Show in Listview'),
      ),
      body: body(),
    );
  }
}
