import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_27/widgets/categories_icons.dart';
import 'package:project_27/widgets/item_banner.dart';
import 'package:project_27/widgets/products_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> banners = [
    'assets/banners/food-menu-banner2.jpg',
    'assets/banners/black-friday-banner.jpg',
    'assets/banners/food-menu-banner3.jpg',
    'assets/banners/food-menu-banner1.jpg',
    'assets/banners/eid-banner.jpg',
  ];

  List<String> iconImages = [
    'assets/icons/childrens-day.png',
    'assets/icons/makeup.png',
    'assets/icons/kitchen-tools.png',
    'assets/icons/cosmetics.png',
    'assets/icons/heartbeat.png',
  ];

  List<String> categorieNames = [
    'Children',
    'MakeUp',
    'Kitchen',
    'Cosmetics',
    'Health',
  ];

  List<MaterialColor> iconsBackgroundColors = [
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.teal,
    Colors.deepPurple,
  ];

  List<String> productImages = [
    'assets/images/headphone-1.jpg',
    'assets/images/dslr.jpg',
    'assets/images/iphone-covers.jpg',
    'assets/images/shopping-bag1.jpg',
    'assets/images/earbuds2.jpg',
    'assets/images/headphones2.jpg',
    'assets/images/shopping-bag2.jpg',
    'assets/images/shopping-bag3.jpg',
    'assets/images/headphones3.jpg',
    'assets/images/camera.jpg',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: Image(image: AssetImage('assets/icons/profile.png')),
        ),
        centerTitle: false,
        title: Text("E-Commerce Platform"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Badge(label: Text('10'), child: Icon(CupertinoIcons.bell)),
          ),
        ],
      ),

      body: ListView(
        children: [
          // search bar
          Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(CupertinoIcons.search),
                suffixIcon: Icon(Icons.filter_list),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                border: InputBorder.none,
              ),
            ),
          ),

          // banner
          SizedBox(
            height: 180,
            child: PageView(
              pageSnapping: true,
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              children: [
                for (String banner in banners) ItemBanner(image: banner),
              ],
            ),
          ),

          SizedBox(
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                for (int index = 0; index < banners.length; index++)
                  AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    height: currentIndex == index ? 8 : 4,
                    width: currentIndex == index ? 14 : 8,
                    decoration: BoxDecoration(
                      color: currentIndex == index
                          ? Colors.grey.shade400
                          : Colors.grey.shade300,

                      shape: BoxShape.circle,
                    ),
                  ),
              ],
            ),
          ),

          // Categories
          ListTile(
            leading: Text(
              'Categories',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing: Text(
              'SHOW ALL',
              style: TextStyle(
                fontSize: 11,
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (int index = 0; index < iconImages.length; index++)
                  CategoriesIcons(
                    iconImage: iconImages[index],
                    iconBackgrounColor: iconsBackgroundColors[index],
                    categoryName: categorieNames[index],
                  ),

                for (int index = 0; index < iconImages.length; index++)
                  CategoriesIcons(
                    iconImage: iconImages[index],
                    iconBackgrounColor: iconsBackgroundColors[index],
                    categoryName: categorieNames[index],
                  ),
              ],
            ),
          ),

          ListTile(
            leading: Text(
              'Products',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing: Text(
              'SHOW ALL',
              style: TextStyle(
                fontSize: 11,
                color: Colors.indigo,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          GridView.count(
            crossAxisCount: 2,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,

            children: [
              ProductsCard(
                productImage: productImages[0],
                productTitle:
                    'Premium Wireless Headphones With One Year warranty',
                productPrice: 'RS 7,000',
              ),
              ProductsCard(
                productImage: productImages[1],
                productTitle:
                    'Professional DSLR for Photography And Videography',
                productPrice: 'RS 30,000',
              ),
              ProductsCard(
                productImage: productImages[2],
                productTitle: 'Iphone premium quality back covers',
                productPrice: 'RS 1,200',
              ),
              ProductsCard(
                productImage: productImages[3],
                productTitle: 'Top Quality fashion hand bags for girls',
                productPrice: 'RS 9,000',
              ),
              ProductsCard(
                productImage: productImages[4],
                productTitle: 'Best quality airbuds with 90 Hrs backup',
                productPrice: 'RS 6,000',
              ),
              ProductsCard(
                productImage: productImages[5],
                productTitle:
                    'Premium Wireless Headphones With One Year warranty',
                productPrice: 'RS 7,000',
              ),

              ProductsCard(
                productImage: productImages[6],
                productTitle: 'Light weight fashion hand bags for girls',
                productPrice: 'RS 4,000',
              ),
              ProductsCard(
                productImage: productImages[7],
                productTitle: 'New beautiful hand bags for girls',
                productPrice: 'RS 4,000',
              ),
              ProductsCard(
                productImage: productImages[8],
                productTitle: 'Lattest premium design wireless headphones',
                productPrice: 'RS 13,000',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
