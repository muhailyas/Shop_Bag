import 'dart:convert';

import 'package:shoping_cart/models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static const getAllProductUrl = "https://fakestoreapi.com/products/";
  Future<List<Product>> getAllProduct() async {
    final response = await http.get(Uri.parse(getAllProductUrl));
    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body) as List;
      return responseData.map((product) => Product.fromJson(product)).toList();
    } else {
      throw Exception("something went wrong");
    }
  }
}
