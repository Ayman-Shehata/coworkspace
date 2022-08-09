import 'package:coworkspace/models/CoWorkModel.dart';
import 'package:flutter/material.dart';
import '../controllers/CoWorkController.dart';
import '../widgets/cloud_item.dart';

class CoWorkHome extends StatefulWidget {

  CoWorkHome({Key? key }) : super(key: key);
  @override
  State<CoWorkHome> createState() => _CoWorkHomeState();
}
class _CoWorkHomeState extends State<CoWorkHome> {
  late Future<List<CoWorkModel>> futureUser;

  @override
  void initState() {
    super.initState();
    futureUser = getAllCoWork();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Image.network('http://okoolextra.com/coworking.jpg',),
          Expanded(
            child:FutureBuilder<List<CoWorkModel>>(
              future: futureUser,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      return CoWorkItem(coWork: snapshot.data![index]);
                    },
                  );
                } else {
                  return Center(child:CircularProgressIndicator());
                }
              },
            ) ,
          ),

        ],
      ),
    ));
  }
}
