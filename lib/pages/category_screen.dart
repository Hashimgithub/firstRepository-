import 'package:flutter/material.dart';

import '../main_page.dart';
import '../widgets/back_ground_color.dart';
import '../widgets/build_app_bar.dart';
import '../widgets/exercies_list_view.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map> myProducts = List.generate(
        10, (index) => {"id": index, "name": "Exercise ${index + 1}"}).toList();
    return Scaffold(
      appBar: appBar(context,
          icon: Icons.home,
          title: 'GYM97',
          tooltip: 'Home',
          goTo: HomePage(),
          push: 'pushRepl') as PreferredSizeWidget,
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          const backgroundColor(),
          GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: myProducts.length,
              itemBuilder: (BuildContext ctx, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const SlideAnimation1(),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.purple.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(15)),
                      child: Text(myProducts[index]["name"]),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
