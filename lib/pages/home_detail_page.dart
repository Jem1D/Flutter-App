import 'package:first_app/model/catalog.dart';
import 'package:first_app/pages/AddToCart.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      // ignore: unnecessary_null_comparison
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.red700.bold.xl3.make(),
            AddToCart(catalog: catalog).wh(120, 40),
          ],
        ).p24(),
      ),
      backgroundColor: context.canvasColor,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 20,
                edge: VxEdge.TOP,
                arcType: VxArcType.CONVEY,
                child: Container(
                  width: context.screenWidth,
                  color: context.cardColor,
                  child: Column(
                    children: [
                      catalog.name.text.bold.xl3
                          .color(context.accentColor)
                          .make(),
                      catalog.desc.text.xl
                          .textStyle(context.captionStyle!)
                          .make(),
                      "Black and nodded oer what ghastly nepenthe hesitating, nameless unhappy is that craven thing wrought wished his sculptured, here it raven this borrow sought bleak. Nameless horror his though stood stern the. Broken nothing an ancient fiend. Beak entreating he the tapping said the distant door and. Only the chamber."
                          .text
                          .textStyle(context.captionStyle!)
                          .make()
                          .p16(),
                    ],
                  ).py32(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
