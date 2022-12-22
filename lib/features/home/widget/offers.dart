import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});

  Widget buildCards(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Card(
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: 300,
          height: 150,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.agoramedia.com%2Feverydayhealth%2Fgcms%2FBest-Fruits-for-a-Diabetes-Friendly-Diet-02-1440x810.jpg&f=1&nofb=1&ipt=a172dba7c31045f3fdd801a448b372eade4b06396778dfaea6aa47d0751742ca&ipo=images'),
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5, right: 25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    topRight: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Buy more, Save more',
                      style: TextStyle(
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'FRUITS & VEGETABLES',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor: MaterialStateProperty.all(Colors.purple),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color: Colors.white, width: 2),
                          ),
                        ),
                      ),
                      child: const Text('VIEW OFFER'),
                      onPressed: () {
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Text(
                    'Best Value',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                const Text(
                  'Top Sellers',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.grey
                  ),
                ),
              ],
            ),

            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.grey.shade600),
                overlayColor: MaterialStateProperty.all(Colors.grey.shade100),
              ),
              child: Row(children: const [
                Text('ALL'),
                Icon(Icons.arrow_right_alt, color: Colors.black),
              ]),
              onPressed: () {
                
              },
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildCards(context),
              buildCards(context),
              buildCards(context),
              buildCards(context),
            ],
          ),
        ),
      ],
    );
  }
}
