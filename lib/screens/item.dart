import 'package:flutter/material.dart';
import '../models/item_data.dart';
import '../widgets/item_card.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Clothes",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Image.asset(
            "assets/images/back_icon.png",
            scale: 2.2,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            mainAxisExtent: 225,
          ),
          itemBuilder: (context, index) {
            return ItemCardWidget(
              imagePath: ItemModel.getItemList[index].imagePath,
              name: ItemModel.getItemList[index].name,
              price: ItemModel.getItemList[index].price,
              onTapCallback: () {},
            );
          },
          itemCount: ItemModel.getItemList.length,
        ),
      ),
    );
  }
}
