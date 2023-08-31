import 'package:flutter_demo/Api/Api_Routes/api_routes.dart';
import 'package:flutter_demo/Api/Response_Model/product_response_model.dart';
import 'package:http/http.dart' as http;

class GetProductsRepo {
  static Future<ProductResponseModel> getUser() async {
    ProductResponseModel? productsResponseModel;

    http.Response response = await http.get(Uri.parse(ApiRoutes.products));

    if (response.statusCode == 200) {
      productsResponseModel = productResponseModelFromJson(response.body);
      print("RESPONSE ${response.body}");
    } else {
      print('STATUS ${response.statusCode}');
    }
    return productsResponseModel!;
  }
}
