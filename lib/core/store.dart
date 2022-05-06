import 'package:velocity_x/velocity_x.dart';

import 'package:first_app/model/cart.dart';
import 'package:first_app/model/catalog.dart';

class MyStore extends VxStore {
  late CatalogModel catalog;
  late CartModel cart;

  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
