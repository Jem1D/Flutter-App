import 'package:first_app/core/store.dart';
import 'package:first_app/model/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  // to make the CartModel to not restart every time it is called, i.e singleton
  // static final cartModel = CartModel.internal();
  // CartModel.internal();
  // factory CartModel() => cartModel;
  //

  late CatalogModel _catalog;

  CatalogModel get catalog => _catalog;
  set catalog(CatalogModel newCatalog) {
    // ignore: unnecessary_null_comparison
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //Collection of ids of each item
  final List<int> _itemIds = [];

  //get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.byId(id)).toList();

  //total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  //remove
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}

class AddMutation extends VxMutation<MyStore> {
  late final Item item;
  AddMutation(this.item);
  @override
  perform() {
    store!.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  late final Item item;
  RemoveMutation(this.item);
  @override
  perform() {
    store!.cart._itemIds.remove(item.id);
  }
}
