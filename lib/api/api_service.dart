import 'dart:convert';
import 'dart:developer';
import 'package:shoping_cart/api/api_constants.dart';
import 'package:shoping_cart/models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  ApiServices._();
  static final ApiServices instance = ApiServices._();
  factory ApiServices() => instance;

  Future<List<Product>> getAllProduct() async {
    final response = await http.get(Uri.parse(ApiConstants.getAllProductUrl));
    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body) as List;
      return responseData.map((product) => Product.fromJson(product)).toList();
    } else {
      throw Exception("something went wrong");
    }
  }

  Future<void> addProduct(
      {required title,
      required price,
      required description,
      required image,
      required category}) async {
    final response =
        await http.post(Uri.parse(ApiConstants.addProductUrl), body: {
      "title": title,
      "price": price,
      "description": description,
      "image": image,
      "category": category
    });
    if (response.statusCode == 200) {
      log("New Product added Successfully ${response.statusCode}");
    }
  }
}
