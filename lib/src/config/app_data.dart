import 'package:flutter_loja/src/models/cart_item_model.dart';
import 'package:flutter_loja/src/models/item_model.dart';
import 'package:flutter_loja/src/models/order_model.dart';
import 'package:flutter_loja/src/models/user_model.dart';

ItemModel moda = ItemModel(
  description: 'Blends A Moda',
  imgUrl: 'assets/fruits/imagem1.png',
  itemName: 'A Moda',
  price: 30.0,
  unit: "Qtd",
);

ItemModel geleia = ItemModel(
  imgUrl: 'assets/fruits/imagem2.png',
  itemName: 'Blends Geleia',
  price: 35.0,
  unit: 'Qtd',
  description: 'Geleia',
);

ItemModel bacon = ItemModel(
  imgUrl: 'assets/fruits/imagem3.png',
  itemName: 'Blends Bacon',
  price: 11.5,
  unit: 'Qtd',
  description: 'Bacon',
);

ItemModel doritos = ItemModel(
  imgUrl: 'assets/fruits/imagem4.png',
  itemName: 'Blends Doritos',
  price: 39.5,
  unit: 'Qtd',
  description: 'Doritos',
);

ItemModel onios = ItemModel(
  imgUrl: 'assets/fruits/imagem5.png',
  itemName: 'Blends Onios',
  price: 20.5,
  unit: 'Qtd',
  description: 'Onios',
);

ItemModel porcao_batata_rustica = ItemModel(
  imgUrl: 'assets/fruits/imagem6.png',
  itemName: 'Blends Batata Rustica',
  price: 20.00,
  unit: 'kg',
  description: 'Batata Rustica',
);

List<ItemModel> items = [
  moda,
  geleia,
  bacon,
  doritos,
  onios,
  porcao_batata_rustica,
];

List<String> categories = [
  'Lanches',
  'Porções',
  'Bebidas',
  'Smash',
];

List<CartItemModel> cartItems = [
  CartItemModel(
    item: moda,
    quantity: 2,
  ),
  CartItemModel(
    item: bacon,
    quantity: 1,
  ),
  CartItemModel(
    item: onios,
    quantity: 1,
  ),
];

UserModel user = UserModel(
  name: "Luis",
  email: "Teste@teste.com.br",
  phone: "99 9 9999-9999",
  cpf: "999.999.999-99",
  password: '',
);

List<OrderModel> orders = [
  OrderModel(
    id: 'asdasda123532',
    createdDateTime: DateTime.parse('2021-06-08 10:00:10.458'),
    overdueDateTime: DateTime.parse('2023-06-08 10:00:10.458'),
    items: [
      CartItemModel(
        item: bacon,
        quantity: 2,
      ),
    ],
    status: 'preparing_purchase',
    copyAndPaste: "12asdsad343",
    total: 23,
  )
];
