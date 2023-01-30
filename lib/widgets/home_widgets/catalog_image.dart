import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

class CatalogImage extends StatelessWidget {
  final String image;

  const CatalogImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .p8
        .color(context.canvasColor)
        .make()
        .p16();
  }
}
