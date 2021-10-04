import 'package:fetch_api_data_show_in_listview/model/model.dart';
import 'package:fetch_api_data_show_in_listview/services/api.dart';
import 'package:flutter/material.dart';

Center body() {
  return Center(
    child: FutureBuilder<TestDataModel?>(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              itemCount: snapshot.data!.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.network(snapshot
                                      .data!.data![index].avatar
                                      .toString()),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Text('Name:'),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(snapshot
                                              .data!.data![index].firstName
                                              .toString()),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(snapshot
                                              .data!.data![index].lastName
                                              .toString()),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Row(
                                        children: [
                                          const Text('Email:'),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(snapshot.data!.data![index].email
                                              .toString()),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ]),
                      ),
                    ));
              });
        }
        // By default show a loading spinner.
        return const CircularProgressIndicator();
      },
    ),
  );
}
