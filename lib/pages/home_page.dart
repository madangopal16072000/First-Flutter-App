import 'package:first_app/models/catalog.dart';
import 'package:first_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../widgets/item_widget.dart';
import '../widgets/themes.dart';

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
              CatalogList().expand(),
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      "Catalog App".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
      "Trending products".text.xl2.make(),
    ]);
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: ((context, index) {
        final catalog = dummyList[index];
        return CatalogItem(catalog: catalog);
      }),
      itemCount: dummyList.length,
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        CatalogImage(image: catalog.image),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: Vx.mH8,
              children: [
                "\$${catalog.price}".text.bold.xl.make(),
                ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          MyTheme.darkBluishColor,
                        ),
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "Buy".text.make())
              ],
            )
          ],
        ))
      ],
    )).white.rounded.square(150).make().py16().w40(context);
  }
}

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p8
        .color(MyTheme.creamColor)
        .make()
        .p16();
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
