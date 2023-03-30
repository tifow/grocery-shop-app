import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop/all_pages/shop_page.dart';
import 'package:grocery_shop/components/grocery_item.dart';
import 'package:grocery_shop/model/provider.dart';
import 'package:provider/provider.dart';

class item_page extends StatelessWidget {
  const item_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (_) => shopitem())),
        child: Icon(Icons.shopping_cart),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // good moning
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "good moning",
                style: TextStyle(fontSize: 18, color: Colors.grey[500]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // let's order some fresh items for you
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Let's order some fresh items for you",
                style: GoogleFonts.notoSerif(
                    fontSize: 33, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Divider(
                thickness: 2,
              ),
            ),
            SizedBox(height: 24),
            // fresh items
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "Fresh items",
                style: TextStyle(fontSize: 17, color: Colors.grey[500]),
              ),
            ),
            const SizedBox(height: 24),
            Expanded(child: Consumer<cartModel>(
              builder: (context, value, child) {
                return GridView.builder(
                  itemCount: value.shopItem.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 1 / 1.2),
                  itemBuilder: (context, index) {
                    return grocery_item(
                      color: value.shopItem[index][3],
                      image: value.shopItem[index][2],
                      itemname: value.shopItem[index][0],
                      price: value.shopItem[index][1],
                      onPressed: () {
                        Provider.of<cartModel>(context, listen: false)
                            .addingItemToCart(index);
                      },
                    );
                  },
                );
              },
            ))
          ],
        ),
      ),
    );
  }

  grociryItems() {}
}
