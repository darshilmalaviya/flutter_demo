import 'package:flutter/material.dart';
import 'package:flutter_demo/Api/Repo/get_product_repo.dart';
import 'package:flutter_demo/Api/Response_Model/product_response_model.dart';

class GetProductsScreen extends StatefulWidget {
  const GetProductsScreen({super.key});

  @override
  State<GetProductsScreen> createState() => _GetProductsScreenState();
}

class _GetProductsScreenState extends State<GetProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: FutureBuilder<ProductResponseModel>(
        future: GetProductsRepo.getUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: snapshot.data!.products.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: 2.8 / 3.5,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 8,
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      snapshot.data!.products[index].thumbnail,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                "price ${snapshot.data!.products[index].price}",
                              ),
                              Text(
                                snapshot.data!.products[index].title,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    ));
  }
}
