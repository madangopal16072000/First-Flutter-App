import 'package:first_app/models/catalog.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/item_widget.dart';
import '../widgets/themes.dart';
import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Madan Gopal";

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              CatalogList().py16().expand(),
            ],
          ),
        ),
      ),
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
