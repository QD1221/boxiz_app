import 'package:badges/badges.dart';
import 'package:boxiz_app/model/boxiz.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 16,
                    ),
                    Icon(Icons.comment_bank_outlined),
                    Text('128'),
                    Icon(Icons.vpn_key),
                    Text('0'),
                    Icon(Icons.shield),
                    Text('3'),
                    Badge(
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 20,
              child: ListView.builder(
                itemCount: boxizItems.length,
                itemBuilder: (BuildContext context, int index) {
                  Boxiz _boxiz = boxizItems[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 380,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  topLeft: Radius.circular(16),
                                ),
                                color: Colors.blue,
                                image: DecorationImage(
                                  image: NetworkImage(_boxiz.img ?? ''),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              children: [
                                Row(
                                  children: [

                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.home),
                      iconSize: 28,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.radio_button_checked),
                      iconSize: 28,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shield),
                      iconSize: 28,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.show_chart_rounded),
                      iconSize: 28,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.confirmation_num_outlined),
                      iconSize: 28,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
