import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:komik_app/detail/DetailScreen.dart';
import 'package:komik_app/model/Product.dart';
import 'package:komik_app/model/products_repository.dart';

class Home extends StatelessWidget {
  final String username;

  Home(this.username);

  @override
  Widget build(BuildContext context) {

    List<Product> products = ProductsRepository.getProducts();

    final NumberFormat formatter = NumberFormat.simpleCurrency(
        locale: 'id_ID');

    final ThemeData theme = Theme.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Kocheng Comics', style: Theme.of(context).textTheme.headline6,),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 16.0),
                  child: Text('Hello $username', style: theme.textTheme.headline6),
                ),
              ],
            ),
            Expanded(
                child: GridView.count(
                    crossAxisCount: 2,
                    padding: EdgeInsets.all(16.0),
                    childAspectRatio: 8.0 / 9.0,
                    children: products.map((product) {
                      return FlatButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return DetailScreen();
                          }));
                        },
                        child:  Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              AspectRatio(
                                aspectRatio: 18 / 16,
                                child: Image.network(product.image, fit: BoxFit.fitWidth,),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(14.0, 12.0, 14.0, 8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        product == null ? '' : product.name,
                                        style: theme.textTheme.button,
                                        softWrap: false,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                      SizedBox(height: 4.0),
                                      Text(
                                        product == null ? '' : formatter.format(product.price),
                                        style: theme.textTheme.caption,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList()
                )
            )
          ],
        ),
    );
  }
}
