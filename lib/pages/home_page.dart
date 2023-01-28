import 'package:first_app/models/catalog.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Madan Gopal";

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Madan's App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            final item = dummyList[index];
            return Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: GridTile(
                  header: Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                      ),
                      padding: EdgeInsets.all(12),
                      child: Text(
                        item.name,
                        style: TextStyle(color: Colors.white),
                      )),
                  child: Image.network(item.image),
                  footer: Text(item.price.toString()),
                ));
          },
          itemCount: dummyList.length,
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}


// ListView.builder(
//           itemCount: dummyList.length,
//           itemBuilder: (context, index) {
//             return ItemWidget(
//               item: dummyList[index],
//             );
//           },
//         )