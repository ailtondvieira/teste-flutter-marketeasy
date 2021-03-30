import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../components/btnRodape.dart';
import '../../modules/products/product_controller.dart';
import '../../modules/products/product_view.dart';
import '../../components/appBar.dart';

class HomeView extends StatelessWidget {
  final ProductController productControl = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Listagem de Produtos"),
      body: ListaProdutos(),
      bottomNavigationBar: btnRodape(() => productControl.getProductsControl()),
    );
  }
}
