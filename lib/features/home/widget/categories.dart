import 'package:flutter/material.dart';

class Category {
  const Category(this.name, this.image);

  final String name;
  final String image;
}

class Categories extends StatelessWidget {
  const Categories({super.key});

  final categories = const <Category>[
    Category('Fruit', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2F78.media.tumblr.com%2F013454578e729fc5455871960e51106d%2Ftumblr_onlepaay9w1w5304fo1_400.jpg&f=1&nofb=1&ipt=48be67a7f57abdb44273ce2e09a4d749e107566b2230c3f3a46e7b980f3f0309&ipo=images'),
    Category('Vegetables', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Flive.staticflickr.com%2F7195%2F27360755456_219e89c1bd_n.jpg&f=1&nofb=1&ipt=76f4a61fdb42f18e7af42d7a058a6a47e33621c7da5993e4deaf6991a455cfaf&ipo=images'),
    Category('Beverages', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.cargill.com%2Fimage%2F1432079656479%2Fpreview-beverages-390x225.jpg&f=1&nofb=1&ipt=1ad134ce241627fd94bf61abc13e783dde010d597481a726d1892388512121f2&ipo=images'),
    Category('Branded Food', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fsimplyrealhealth.com%2Fwp-content%2Fuploads%2F2014%2F07%2FBoom.jpg&f=1&nofb=1&ipt=2346a012b2bd02aa769870217b78e2741d754e72c544bdcba22479083d12abbe&ipo=images'),
    Category('Bakery', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Flive.staticflickr.com%2F543%2F19327748652_5824e5aeb2.jpg&f=1&nofb=1&ipt=bea5b4e80df8a85baa42506b1b43af12dbc1d8ea17396a587881f1e31abf857d&ipo=images'),
    Category('Foodgrain & Masala', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.foodbusinessnews.net%2F-%2Fmedia%2F73B43F42FF9D414291582F90BBCE956F.ashx&f=1&nofb=1&ipt=d0c21ee9e33e9ed8344cee5fe8060cd948ee4026ffc82336c8dde55895718aeb&ipo=images'),
    Category('Eggs', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Flive.staticflickr.com%2F3339%2F4646670531_d74e83d010_n.jpg&f=1&nofb=1&ipt=36b7d3bb9d07f223ce97b0b063cf8be21a0356ac92165ef69b051f1d1e358349&ipo=images'),
    Category('Dairy', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fhips.hearstapps.com%2Fhmg-prod.s3.amazonaws.com%2Fimages%2Fdairy-products-such-as-milk-cheese-egg-yogurt-and-royalty-free-image-911727186-1540840359.jpg%3Fresize%3D480%3A*&f=1&nofb=1&ipt=82f2b6f123ae827a608d2966e2dfbbfa859c8cc2c48ae4b3070cb0c8274754b9&ipo=images'),
    Category('Home Care', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.hps-pigging.com%2Fwp-content%2Fuploads%2F2020%2F03%2Fhomecare-and-household-liquids-400x273.jpg&f=1&nofb=1&ipt=f272ac224a203562d042f6b6cdf9bb173bffdacb03604b4421ef1f422508f1dc&ipo=images'),
    Category('Fashion', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fdirtydirtydublin.files.wordpress.com%2F2011%2F11%2Fcharity-4.jpg&f=1&nofb=1&ipt=c4c9e6e9ada26d3e6755a5c81bca34ecb94dca488336a1a03f5be7c33c94be5c&ipo=images'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            Text(
              'Populer',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade500,
                fontSize: 25,
              ),
            ),
            Text(
              "What's New",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade500,
                fontSize: 25,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        GridView.builder(
          // primary: false,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 10,
            mainAxisExtent: 125,
            mainAxisSpacing: 10,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(category.image),
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.transparent.withOpacity(.85).withRed(255).withGreen(255).withBlue(255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              category.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          const Icon(Icons.chevron_right_sharp),
                        ],
                      ),
                    ),
                  ],
                ),
              );

          },
        ),
      ],
    );
  }
}