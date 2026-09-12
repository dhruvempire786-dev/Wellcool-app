
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const String whatsappNumber = '918707631837';

void main() {
  runApp(const WellcoolApp());
}

/* =========================
   PRODUCT MODEL
========================= */

class Product {
  final String name;
  final String price;
  final String category;
  final String image;
  final List<String> colors;
  final List<String> sizes;

  const Product({
    required this.name,
    required this.price,
    required this.category,
    required this.image,
    this.colors = const ['Black', 'White', 'Blue'],
    this.sizes = const ['S', 'M', 'L', 'XL'],
  });
}

/* =========================
   PRODUCTS - ALL 29
========================= */

const List<Product> products = [
  Product(
    name: 'Embroidered Peach Suit',
    price: '₹1,499',
    category: 'Women Suits',
    image: 'assets/images/products/p01.jpg',
    colors: ['Peach', 'Pink', 'Cream'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),
  Product(
    name: 'Sage Green Puff Sleeve Crop Top',
    price: '₹799',
    category: 'Women Crop Tops',
    image: 'assets/images/products/p02.jpg',
    colors: ['Green', 'White', 'Black'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),
  Product(
    name: 'Sky Blue Graphic T-Shirt',
    price: '₹699',
    category: 'Men T-Shirts',
    image: 'assets/images/products/p03.jpg',
    colors: ['Sky Blue', 'Black', 'White'],
    sizes: ['S', 'M', 'L', 'XL', 'XXL'],
  ),
  Product(
    name: 'Classic Blue Baggy Jeans',
    price: '₹1,099',
    category: 'Men Baggy Jeans',
    image: 'assets/images/products/p04.jpg',
    colors: ['Blue', 'Black', 'Grey'],
    sizes: ['28', '30', '32', '34', '36'],
  ),
  Product(
    name: 'White Wide-Leg Pants',
    price: '₹999',
    category: 'Men Baggy Jeans',
    image: 'assets/images/products/p05.jpg',
    colors: ['White', 'Black', 'Beige'],
    sizes: ['28', '30', '32', '34', '36'],
  ),
  Product(
    name: 'Teal Designer Saree',
    price: '₹1,299',
    category: 'Women Sarees',
    image: 'assets/images/products/p06.jpg',
    colors: ['Teal', 'Green', 'Blue'],
    sizes: ['Free Size'],
  ),
  Product(
    name: 'Light Blue Casual Shirt',
    price: '₹899',
    category: 'Men Shirts',
    image: 'assets/images/products/p07.jpg',
    colors: ['Light Blue', 'White', 'Black'],
    sizes: ['S', 'M', 'L', 'XL', 'XXL'],
  ),
  Product(
    name: 'Black Graphic Crop Top',
    price: '₹699',
    category: 'Women Crop Tops',
    image: 'assets/images/products/p08.jpg',
    colors: ['Black', 'White', 'Grey'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),
  Product(
    name: 'Yellow Puff Sleeve Top',
    price: '₹749',
    category: 'Women Tops',
    image: 'assets/images/products/p09.jpg',
    colors: ['Yellow', 'White', 'Pink'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),
  Product(
    name: 'Dusty Pink Casual Shirt',
    price: '₹899',
    category: 'Men Shirts',
    image: 'assets/images/products/p10.jpg',
    colors: ['Pink', 'White', 'Black'],
    sizes: ['S', 'M', 'L', 'XL', 'XXL'],
  ),
  Product(
    name: 'Olive Floral Crop Top',
    price: '₹799',
    category: 'Women Crop Tops',
    image: 'assets/images/products/p11.jpg',
    colors: ['Olive', 'White', 'Black'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),
  Product(
    name: 'Wine Border Saree',
    price: '₹1,199',
    category: 'Women Sarees',
    image: 'assets/images/products/p12.jpg',
    colors: ['Wine', 'Maroon', 'Black'],
    sizes: ['Free Size'],
  ),
  Product(
    name: 'Royal Blue Suit Set',
    price: '₹1,399',
    category: 'Women Suits',
    image: 'assets/images/products/p13.jpg',
    colors: ['Royal Blue', 'Navy', 'Black'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),
  Product(
    name: 'White Black Stripe T-Shirt',
    price: '₹699',
    category: 'Men T-Shirts',
    image: 'assets/images/products/p14.jpg',
    colors: ['White', 'Black', 'Grey'],
    sizes: ['S', 'M', 'L', 'XL', 'XXL'],
  ),
  Product(
    name: 'Black Chunky Sneakers',
    price: '₹1,199',
    category: 'Women Shoes / Sandals',
    image: 'assets/images/products/p15.jpg',
    colors: ['Black', 'White'],
    sizes: ['5', '6', '7', '8', '9'],
  ),
  Product(
    name: 'White Casual Sneakers',
    price: '₹999',
    category: 'Women Shoes / Sandals',
    image: 'assets/images/products/p16.jpg',
    colors: ['White', 'Black'],
    sizes: ['5', '6', '7', '8', '9'],
  ),
  Product(
    name: 'White Navy Sneakers',
    price: '₹1,099',
    category: 'Women Shoes / Sandals',
    image: 'assets/images/products/p17.jpg',
    colors: ['White', 'Navy'],
    sizes: ['5', '6', '7', '8', '9'],
  ),
  Product(
    name: 'Boston Oversized T-Shirt',
    price: '₹749',
    category: 'Men T-Shirts',
    image: 'assets/images/products/p18.jpg',
    colors: ['Cream', 'Black', 'White'],
    sizes: ['M', 'L', 'XL', 'XXL'],
  ),
  Product(
    name: 'Washed Black Baggy Jeans',
    price: '₹1,099',
    category: 'Men Baggy Jeans',
    image: 'assets/images/products/p19.jpg',
    colors: ['Black', 'Grey'],
    sizes: ['28', '30', '32', '34', '36'],
  ),
  Product(
    name: 'White Grey High-Top Sneakers',
    price: '₹1,299',
    category: 'Men Shoes',
    image: 'assets/images/products/p20.jpg',
    colors: ['White', 'Grey', 'Black'],
    sizes: ['6', '7', '8', '9', '10'],
  ),
  Product(
    name: 'White Navy Running Sneakers',
    price: '₹1,199',
    category: 'Women Shoes / Sandals',
    image: 'assets/images/products/p21.jpg',
    colors: ['White', 'Navy', 'Grey'],
    sizes: ['5', '6', '7', '8', '9'],
  ),
  Product(
    name: 'Cream Graphic T-Shirt',
    price: '₹749',
    category: 'Men T-Shirts',
    image: 'assets/images/products/p22.jpg',
    colors: ['Cream', 'White', 'Black'],
    sizes: ['S', 'M', 'L', 'XL', 'XXL'],
  ),
  Product(
    name: 'Blue Printed Suit Set',
    price: '₹1,399',
    category: 'Women Suits',
    image: 'assets/images/products/p23.jpg',
    colors: ['Blue', 'Navy', 'White'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),
  Product(
    name: 'Pink Casual Embroidered Top',
    price: '₹799',
    category: 'Women Tops',
    image: 'assets/images/products/p24.jpg',
    colors: ['Pink', 'White', 'Peach'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),
  Product(
    name: 'Grey Orange Sport Sneakers',
    price: '₹1,299',
    category: 'Men Shoes',
    image: 'assets/images/products/p25.jpg',
    colors: ['Grey', 'Orange', 'Black'],
    sizes: ['6', '7', '8', '9', '10'],
  ),
  Product(
    name: 'Black Casual Shirt',
    price: '₹899',
    category: 'Men Shirts',
    image: 'assets/images/products/p26.jpg',
    colors: ['Black', 'White', 'Grey'],
    sizes: ['S', 'M', 'L', 'XL', 'XXL'],
  ),
  Product(
    name: 'Light Blue Loose Baggy Jeans',
    price: '₹1,099',
    category: 'Men Baggy Jeans',
    image: 'assets/images/products/p27.jpg',
    colors: ['Light Blue', 'Blue', 'Black'],
    sizes: ['28', '30', '32', '34', '36'],
  ),
  Product(
    name: 'White Floral Puff Sleeve Top',
    price: '₹799',
    category: 'Women Tops',
    image: 'assets/images/products/p28.jpg',
    colors: ['White', 'Pink', 'Blue'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),
  Product(
    name: 'Maroon Casual Shirt',
    price: '₹899',
    category: 'Men Shirts',
    image: 'assets/images/products/p29.jpg',
    colors: ['Maroon', 'Black', 'White'],
    sizes: ['S', 'M', 'L', 'XL', 'XXL'],
  ),
];

/* =========================
   CATEGORIES
========================= */

const List<String> categories = [
  'Women Tops',
  'Women Crop Tops',
  'Women Sarees',
  'Women Shoes / Sandals',
  'Men Shirts',
  'Men T-Shirts',
  'Women Suits',
  'Men Shoes',
  'Men Baggy Jeans',
];

/* =========================
   GLOBAL CART + WISHLIST
========================= */

final Map<Product, int> cart = {};
final Set<Product> wishlist = {};

final ValueNotifier<int> cartNotifier = ValueNotifier<int>(0);
final ValueNotifier<int> wishlistNotifier = ValueNotifier<int>(0);

void addToCart(Product product) {
  cart[product] = (cart[product] ?? 0) + 1;
  cartNotifier.value++;
}

void removeFromCart(Product product) {
  if (!cart.containsKey(product)) return;

  if (cart[product]! > 1) {
    cart[product] = cart[product]! - 1;
  } else {
    cart.remove(product);
  }

  cartNotifier.value++;
}

void deleteFromCart(Product product) {
  cart.remove(product);
  cartNotifier.value++;
}

void toggleWishlist(Product product) {
  if (wishlist.contains(product)) {
    wishlist.remove(product);
  } else {
    wishlist.add(product);
  }

  wishlistNotifier.value++;
}

/* =========================
   WHATSAPP
========================= */

Future<void> orderProduct(
  Product product, {
  String? color,
  String? size,
}) async {
  String message = 'Hi Wellcool, I want to order:\n'
      '${product.name}\n'
      'Price: ${product.price}';

  if (color != null) {
    message += '\nColour: $color';
  }

  if (size != null) {
    message += '\nSize: $size';
  }

  final Uri uri = Uri.parse(
    'https://wa.me/$whatsappNumber?text=${Uri.encodeComponent(message)}',
  );

  await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  );
}

Future<void> orderCart() async {
  if (cart.isEmpty) return;

  String message = 'Hi Wellcool, I want to order:\n\n';

  for (final entry in cart.entries) {
    message += '${entry.key.name} x ${entry.value}\n';
    message += '${entry.key.price}\n\n';
  }

  final Uri uri = Uri.parse(
    'https://wa.me/$whatsappNumber?text=${Uri.encodeComponent(message)}',
  );

  await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  );
}

/* =========================
   APP
========================= */

class WellcoolApp extends StatelessWidget {
  const WellcoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wellcool.',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF080A0D),
        useMaterial3: true,
      ),
      home: const Shell(),
    );
  }
}

/* =========================
   MAIN SHELL
========================= */

class Shell extends StatefulWidget {
  const Shell({super.key});

  @override
  State<Shell> createState() => _ShellState();
}

class _ShellState extends State<Shell> {
  int tab = 0;

  final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  void goToTab(int index) {
    setState(() {
      tab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomePage(
        onMenu: () => scaffoldKey.currentState?.openDrawer(),
        onWishlist: () => goToTab(3),
        onCart: () => goToTab(4),
      ),
      CategoriesPage(
        onCategory: (category) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => CategoryProductsPage(
                category: category,
              ),
            ),
          );
        },
      ),
      const SearchPage(),
      const WishlistPage(),
      const CartPage(),
    ];

    return Scaffold(
      key: scaffoldKey,
      drawer: const WellcoolDrawer(),
      body: SafeArea(
        child: pages[tab],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color(0xFF07090C),
        indicatorColor: const Color(0xFF102A48),
        selectedIndex: tab,
        onDestinationSelected: goToTab,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.grid_view_outlined),
            selectedIcon: Icon(Icons.grid_view),
            label: 'Categories',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_border),
            selectedIcon: Icon(Icons.favorite),
            label: 'Wishlist',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined),
            selectedIcon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}

/* =========================
   DRAWER
========================= */

class WellcoolDrawer extends StatelessWidget {
  const WellcoolDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF101318),
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(22, 28, 22, 28),
              child: const Text(
                'wellcool.',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
            const Divider(color: Colors.white12),
            _DrawerItem(
              icon: Icons.home_outlined,
              title: 'Home',
              onTap: () {
                Navigator.pop(context);
              },
            ),
            _DrawerItem(
              icon: Icons.grid_view_outlined,
              title: 'Categories',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => CategoriesPage(
                      onCategory: (category) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                CategoryProductsPage(
                              category: category,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
            _DrawerItem(
              icon: Icons.search,
              title: 'Search',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SearchPage(),
                  ),
                );
              },
            ),
            _DrawerItem(
              icon: Icons.favorite_border,
              title: 'Wishlist',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const WishlistPage(),
                  ),
                );
              },
            ),
            _DrawerItem(
              icon: Icons.shopping_cart_outlined,
              title: 'Cart',
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const CartPage(),
                  ),
                );
              },
            ),
            const Divider(color: Colors.white12),
            const Padding(
              padding: EdgeInsets.fromLTRB(22, 18, 22, 8),
              child: Text(
                'SHOP BY CATEGORY',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ...categories.map(
              (category) => _DrawerItem(
                icon: Icons.arrow_forward_ios,
                title: category,
                small: true,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CategoryProductsPage(
                        category: category,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool small;

  const _DrawerItem({
    required this.icon,
    required this.title,
    required this.onTap,
    this.small = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: small,
      leading: Icon(
        icon,
        size: small ? 16 : 24,
        color: const Color(0xFF43A5FF),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: small ? 14 : 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      onTap: onTap,
    );
  }
}

/* =========================
   HOME
========================= */

class HomePage extends StatelessWidget {
  final VoidCallback onMenu;
  final VoidCallback onWishlist;
  final VoidCallback onCart;

  const HomePage({
    super.key,
    required this.onMenu,
    required this.onWishlist,
    required this.onCart,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 12, 18, 8),
            child: Row(
              children: [
                IconButton(
                  onPressed: onMenu,
                  icon: const Icon(Icons.menu, size: 31),
                ),
                const SizedBox(width: 4),
                ShaderMask(
                  shaderCallback: (r) =>
                      const LinearGradient(
                    colors: [
                      Color(0xFF00B7FF),
                      Color(0xFF8B5CFF),
                      Color(0xFFFF38D1),
                    ],
                  ).createShader(r),
                  child: const Text(
                    'wellcool.',
                    style: TextStyle(
                      fontSize: 31,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: onWishlist,
                  icon: const Icon(
                    Icons.favorite_border,
                    size: 29,
                  ),
                ),
                ValueListenableBuilder<int>(
                  valueListenable: cartNotifier,
                  builder: (context, value, child) {
                    return IconButton(
                      onPressed: onCart,
                      icon: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          const Icon(
                            Icons.shopping_cart_outlined,
                            size: 29,
                          ),
                          if (cart.isNotEmpty)
                            Positioned(
                              right: -7,
                              top: -8,
                              child: CircleAvatar(
                                radius: 9,
                                backgroundColor:
                                    Colors.blue,
                                child: Text(
                                  '${cart.length}',
                                  style: const TextStyle(
                                    fontSize: 9,
                                    color: Colors.white,
                                    fontWeight:
                                        FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 6,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const SearchPage(),
                  ),
                );
              },
              child: Container(
                height: 52,
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1E24),
                  borderRadius: BorderRadius.circular(28),
                  border: Border.all(
                    color: const Color(0xFF303640),
                  ),
                ),
                child: const Row(
                  children: [
                    SizedBox(width: 17),
                    Icon(Icons.search, size: 28),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Search for products, brands & more',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Icon(Icons.mic_none, size: 24),
                    SizedBox(width: 14),
                  ],
                ),
              ),
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              18,
              10,
              18,
              10,
            ),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
              children: const [
                _Benefit(
                  Icons.local_shipping_outlined,
                  'COD Available',
                ),
                _Benefit(
                  Icons.inventory_2_outlined,
                  '7-Day Return / Exchange',
                ),
                _Benefit(
                  Icons.chat_outlined,
                  'WhatsApp Order',
                ),
              ],
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 18),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Image.asset(
                'assets/images/hero.png',
                height: 400,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: SizedBox(
            height: 125,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.fromLTRB(
                18,
                14,
                18,
                8,
              ),
              children: const [
                _Circle(
                  'assets/images/cat_women_tops.png',
                  'Women Tops',
                ),
                _Circle(
                  'assets/images/cat_crop_tops.png',
                  'Crop Tops',
                ),
                _Circle(
                  'assets/images/cat_sarees.png',
                  'Sarees',
                ),
                _Circle(
                  'assets/images/cat_women_shoes.png',
                  'Women Shoes',
                ),
                _Circle(
                  'assets/images/cat_suits.png',
                  'Suits',
                ),
                _Circle(
                  'assets/images/cat_men_shirts.png',
                  'Men Shirts',
                ),
                _Circle(
                  'assets/images/icon_men_tshirt.png',
                  'Men T-Shirts',
                ),
                _Circle(
                  'assets/images/best_3.png',
                  'Baggy Jeans',
                ),
              ],
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              18,
              8,
              18,
              12,
            ),
            child: Row(
              children: [
                const Text(
                  'Shop by category',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CategoriesPage(
                          onCategory: (category) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>
                                    CategoryProductsPage(
                                  category: category,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                  child: const Text(
                    'View all →',
                    style: TextStyle(
                      color: Color(0xFF3D9BFF),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.fromLTRB(
            18,
            0,
            18,
            18,
          ),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            CategoryProductsPage(
                          category: categories[index],
                        ),
                      ),
                    );
                  },
                  child: _CategoryCard(
                    category: categories[index],
                  ),
                );
              },
              childCount: categories.length,
            ),
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 2.15,
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              18,
              0,
              18,
              18,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/new_arrivals.png',
                height: 165,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              18,
              0,
              18,
              12,
            ),
            child: Row(
              children: const [
                Text(
                  'Best Selling',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: SizedBox(
            height: 315,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding:
                  const EdgeInsets.symmetric(horizontal: 18),
              itemCount: 4,
              itemBuilder: (context, index) {
                return ProductCard(
                  product: products[index],
                  horizontal: true,
                );
              },
            ),
          ),
        ),

        const SliverToBoxAdapter(
          child: SizedBox(height: 25),
        ),
      ],
    );
  }
}

/* =========================
   CATEGORIES PAGE
========================= */

class CategoriesPage extends StatelessWidget {
  final void Function(String category) onCategory;

  const CategoriesPage({
    super.key,
    required this.onCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: _PageTitle('Categories'),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(18),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GestureDetector(
                    onTap: () =>
                        onCategory(categories[index]),
                    child: _CategoryCard(
                      category: categories[index],
                    ),
                  );
                },
                childCount: categories.length,
              ),
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.65,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/* =========================
   SEARCH PAGE
========================= */

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  String query = '';

  @override
  Widget build(BuildContext context) {
    final List<Product> results = query.trim().isEmpty
        ? products
        : products.where((product) {
            final String q = query.toLowerCase();

            return product.name.toLowerCase().contains(q) ||
                product.category.toLowerCase().contains(q);
          }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Search',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              16,
              8,
              16,
              12,
            ),
            child: TextField(
              autofocus: false,
              onChanged: (value) {
                setState(() {
                  query = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search shirts, sarees, shoes...',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: query.isNotEmpty
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            query = '';
                          });
                        },
                        icon: const Icon(Icons.clear),
                      )
                    : null,
                filled: true,
                fillColor: const Color(0xFF191D22),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Expanded(
            child: results.isEmpty
                ? const Center(
                    child: Text(
                      'No products found',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : GridView.builder(
                    padding: const EdgeInsets.all(14),
                    itemCount: results.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: .67,
                    ),
                    itemBuilder: (context, index) {
                      return ProductCard(
                        product: results[index],
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

/* =========================
   WISHLIST PAGE
========================= */

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: wishlistNotifier,
      builder: (context, value, child) {
        final List<Product> items = wishlist.toList();

        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Wishlist',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: items.isEmpty
              ? const Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        size: 65,
                        color: Colors.white38,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Your Wishlist is empty',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Tap ❤️ on any product to save it',
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                )
              : GridView.builder(
                  padding: const EdgeInsets.all(14),
                  itemCount: items.length,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: .67,
                  ),
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: items[index],
                    );
                  },
                ),
        );
      },
    );
  }
}

/* =========================
   CART PAGE
========================= */

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  int _priceNumber(String price) {
    return int.tryParse(
          price.replaceAll('₹', '').replaceAll(',', ''),
        ) ??
        0;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: cartNotifier,
      builder: (context, value, child) {
        final int total = cart.entries.fold(
          0,
          (sum, entry) =>
              sum +
              (_priceNumber(entry.key.price) * entry.value),
        );

        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: cart.isEmpty
              ? const Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
                        size: 65,
                        color: Colors.white38,
                      ),
                      SizedBox(height: 15),
                      Text(
                        'Your Cart is empty',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Add products to your cart',
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                )
              : Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.all(14),
                        itemCount: cart.length,
                        itemBuilder: (context, index) {
                          final Product product =
                              cart.keys.elementAt(index);
                          final int quantity =
                              cart[product] ?? 1;

                          return Container(
                            margin: const EdgeInsets.only(
                              bottom: 12,
                            ),
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color(0xFF191D22),
                              borderRadius:
                                  BorderRadius.circular(18),
                            ),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(13),
                                  child: Image.asset(
                                    product.image,
                                    width: 88,
                                    height: 105,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        product.name,
                                        maxLines: 2,
                                        overflow:
                                            TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight:
                                              FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        product.price,
                                        style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight:
                                              FontWeight.w900,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          _QuantityButton(
                                            icon: Icons.remove,
                                            onTap: () =>
                                                removeFromCart(
                                              product,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets
                                                    .symmetric(
                                              horizontal: 12,
                                            ),
                                            child: Text(
                                              '$quantity',
                                              style:
                                                  const TextStyle(
                                                fontWeight:
                                                    FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          _QuantityButton(
                                            icon: Icons.add,
                                            onTap: () =>
                                                addToCart(
                                              product,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () =>
                                      deleteFromCart(product),
                                  icon: const Icon(
                                    Icons.delete_outline,
                                    color: Colors.redAccent,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(
                        18,
                        15,
                        18,
                        20,
                      ),
                      decoration: const BoxDecoration(
                        color: Color(0xFF111419),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const Text(
                                'Total',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                '₹${total.toString()}',
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          SizedBox(
                            width: double.infinity,
                            height: 52,
                            child: FilledButton.icon(
                              onPressed: orderCart,
                              icon: const Icon(
                                Icons.chat,
                              ),
                              label: const Text(
                                'Order Cart on WhatsApp',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }
}

/* =========================
   CATEGORY PRODUCTS
========================= */

class CategoryProductsPage extends StatelessWidget {
  final String category;

  const CategoryProductsPage({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final List<Product> items = products
        .where((product) => product.category == category)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          category,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: items.isEmpty
          ? const Center(
              child: Text('No products in this category'),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(14),
              itemCount: items.length,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: .67,
              ),
              itemBuilder: (context, index) {
                return ProductCard(
                  product: items[index],
                );
              },
            ),
    );
  }
}

/* =========================
   PRODUCT DETAIL PAGE
========================= */

class ProductDetailPage extends StatefulWidget {
  final Product product;

  const ProductDetailPage({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetailPage> createState() =>
      _ProductDetailPageState();
}

class _ProductDetailPageState
    extends State<ProductDetailPage> {
  late String selectedColor;
  late String selectedSize;

  @override
  void initState() {
    super.initState();
    selectedColor = widget.product.colors.first;
    selectedSize = widget.product.sizes.first;
  }

  @override
  Widget build(BuildContext context) {
    final Product product = widget.product;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        actions: [
          ValueListenableBuilder<int>(
            valueListenable: wishlistNotifier,
            builder: (context, value, child) {
              final bool liked = wishlist.contains(product);

              return IconButton(
                onPressed: () => toggleWishlist(product),
                icon: Icon(
                  liked
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: liked
                      ? Colors.redAccent
                      : Colors.white,
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 430,
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    product.price,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Color(0xFF43A5FF),
                    ),
                  ),
                  const SizedBox(height: 25),

                  const Text(
                    'Colour',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Wrap(
                    spacing: 9,
                    runSpacing: 9,
                    children: product.colors.map((color) {
                      final bool selected =
                          selectedColor == color;

                      return ChoiceChip(
                        label: Text(color),
                        selected: selected,
                        onSelected: (_) {
                          setState(() {
                            selectedColor = color;
                          });
                        },
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 24),

                  const Text(
                    'Size',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Wrap(
                    spacing: 9,
                    runSpacing: 9,
                    children: product.sizes.map((size) {
                      final bool selected =
                          selectedSize == size;

                      return ChoiceChip(
                        label: Text(size),
                        selected: selected,
                        onSelected: (_) {
                          setState(() {
                            selectedSize = size;
                          });
                        },
                      );
                    }).toList(),
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: FilledButton.icon(
                      onPressed: () {
                        addToCart(product);

                        ScaffoldMessenger.of(context)
                            .showSnackBar(
                          SnackBar(
                            content: Text(
                              '${product.name} added to cart',
                            ),
                            action: SnackBarAction(
                              label: 'VIEW CART',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) =>
                                        const CartPage(),
                                  ),
                                );
                              },
                            ),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                      ),
                      label: const Text(
                        'Add to Cart',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: OutlinedButton.icon(
                      onPressed: () => orderProduct(
                        product,
                        color: selectedColor,
                        size: selectedSize,
                      ),
                      icon: const Icon(
                        Icons.chat,
                        color: Colors.greenAccent,
                      ),
                      label: const Text(
                        'Order on WhatsApp',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 28),

                  const Text(
                    'Product Information',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 12),

                  _InfoRow(
                    title: 'Category',
                    value: product.category,
                  ),
                  const _InfoRow(
                    title: 'Delivery',
                    value: 'COD Available',
                  ),
                  const _InfoRow(
                    title: 'Return',
                    value: '7-Day Return / Exchange',
                  ),
                  const _InfoRow(
                    title: 'Order',
                    value: 'WhatsApp Available',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* =========================
   PRODUCT CARD
========================= */

class ProductCard extends StatelessWidget {
  final Product product;
  final bool horizontal;

  const ProductCard({
    super.key,
    required this.product,
    this.horizontal = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: horizontal
          ? const EdgeInsets.only(right: 12)
          : EdgeInsets.zero,
      width: horizontal ? 185 : null,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            ProductDetailPage(
                          product: product,
                        ),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(
                      top: Radius.circular(18),
                    ),
                    child: Image.asset(
                      product.image,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                  right: 8,
                  top: 8,
                  child: ValueListenableBuilder<int>(
                    valueListenable: wishlistNotifier,
                    builder: (
                      context,
                      value,
                      child,
                    ) {
                      final bool liked =
                          wishlist.contains(product);

                      return Material(
                        color: Colors.white,
                        shape: const CircleBorder(),
                        child: InkWell(
                          customBorder:
                              const CircleBorder(),
                          onTap: () =>
                              toggleWishlist(product),
                          child: Padding(
                            padding:
                                const EdgeInsets.all(9),
                            child: Icon(
                              liked
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: liked
                                  ? Colors.red
                                  : Colors.black,
                              size: 22,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(
              10,
              9,
              10,
              0,
            ),
            child: Text(
              product.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(
              10,
              4,
              10,
              0,
            ),
            child: Text(
              product.price,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(9),
            child: SizedBox(
              width: double.infinity,
              height: 37,
              child: FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          ProductDetailPage(
                        product: product,
                      ),
                    ),
                  );
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                child: const Text(
                  'View Product',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/* =========================
   CATEGORY CARD
========================= */

class _CategoryCard extends StatelessWidget {
  final String category;

  const _CategoryCard({
    required this.category,
  });

  String get image {
    final Product? product = products
        .where((p) => p.category == category)
        .firstOrNull;

    return product?.image ??
        'assets/images/products/p01.jpg';
  }

  String get subtitle {
    switch (category) {
      case 'Women Tops':
        return 'Trendy & Comfortable';
      case 'Women Crop Tops':
        return 'Stylish Everyday';
      case 'Women Sarees':
        return 'Traditional & Modern';
      case 'Women Shoes / Sandals':
        return 'Casual & Premium';
      case 'Men Shirts':
        return 'Casual & Formal';
      case 'Men T-Shirts':
        return 'Everyday Essentials';
      case 'Women Suits':
        return 'Elegant & Modern';
      case 'Men Shoes':
        return 'Comfort & Style';
      case 'Men Baggy Jeans':
        return 'Relaxed Fit';
      default:
        return 'Shop Now';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9),
      decoration: BoxDecoration(
        color: const Color(0xFF191D22),
        borderRadius: BorderRadius.circular(17),
        border: Border.all(
          color: const Color(0xFF2B3038),
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              width: 65,
              height: 65,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center,
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 9,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.chevron_right,
            color: Colors.white60,
          ),
        ],
      ),
    );
  }
}

/* =========================
   BENEFIT
========================= */

class _Benefit extends StatelessWidget {
  final IconData icon;
  final String title;

  const _Benefit(
    this.icon,
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 18,
            color: const Color(0xFF36A8FF),
          ),
          const SizedBox(width: 5),
          Flexible(
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/* =========================
   CIRCLE CATEGORY
========================= */

class _Circle extends StatelessWidget {
  final String image;
  final String title;

  const _Circle(
    this.image,
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 112,
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xFF303640),
                width: 2,
              ),
            ),
            child: ClipOval(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            title,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: const TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}

/* =========================
   PAGE TITLE
========================= */

class _PageTitle extends StatelessWidget {
  final String title;

  const _PageTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        18,
        20,
        18,
        15,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}

/* =========================
   QUANTITY BUTTON
========================= */

class _QuantityButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _QuantityButton({
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.white24,
          ),
        ),
        child: Icon(
          icon,
          size: 17,
        ),
      ),
    );
  }
}

/* =========================
   INFO ROW
========================= */

class _InfoRow extends StatelessWidget {
  final String title;
  final String value;

  const _InfoRow({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          SizedBox(
            width: 95,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white54,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/* =========================
   EXTENSION
========================= */

extension FirstOrNullExtension<T> on Iterable<T> {
  T? get firstOrNull {
    final Iterator<T> iterator = this.iterator;

    if (iterator.moveNext()) {
      return iterator.current;
    }

    return null;
  }
}
