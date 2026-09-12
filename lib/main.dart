import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const whatsappNumber = '918707631837';

void main() {
  runApp(const WellcoolApp());
}

/* ============================================================
   PRODUCT MODEL
   ============================================================ */

class Product {
  final int id;
  final String name;
  final String price;
  final String category;
  final String image;
  final List<String> colors;
  final List<String> sizes;

  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.category,
    required this.image,
    required this.colors,
    required this.sizes,
  });
}

/* ============================================================
   36 PRODUCTS
   IMPORTANT:
   CATEGORY IS FIXED INSIDE EACH PRODUCT.
   CATEGORY PAGE ONLY SHOWS PRODUCTS OF THAT CATEGORY.
   ============================================================ */

const products = <Product>[
  // 1
  Product(
    id: 1,
    name: 'Embroidered Peach Suit',
    price: '₹1,499',
    category: 'Women Suits',
    image: 'assets/images/products/p01.jpg',
    colors: ['Peach', 'Pink', 'White'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 2
  Product(
    id: 2,
    name: 'Sage Green Puff Sleeve Crop Top',
    price: '₹799',
    category: 'Women Crop Tops',
    image: 'assets/images/products/p02.jpg',
    colors: ['Sage Green', 'Black', 'White'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 3
  Product(
    id: 3,
    name: 'Sky Blue Graphic T-Shirt',
    price: '₹699',
    category: 'Men T-Shirts',
    image: 'assets/images/products/p03.jpg',
    colors: ['Sky Blue', 'Black', 'White'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 4
  Product(
    id: 4,
    name: 'Classic Blue Baggy Jeans',
    price: '₹1,099',
    category: 'Men Baggy Jeans',
    image: 'assets/images/products/p04.jpg',
    colors: ['Blue', 'Black', 'Grey'],
    sizes: ['28', '30', '32', '34', '36', '38'],
  ),

  // 5
  Product(
    id: 5,
    name: 'White Wide-Leg Pants',
    price: '₹999',
    category: 'Men Baggy Jeans',
    image: 'assets/images/products/p05.jpg',
    colors: ['White', 'Black', 'Beige'],
    sizes: ['28', '30', '32', '34', '36', '38'],
  ),

  // 6
  Product(
    id: 6,
    name: 'Teal Designer Saree',
    price: '₹1,299',
    category: 'Women Sarees',
    image: 'assets/images/products/p06.jpg',
    colors: ['Teal', 'Wine', 'Black'],
    sizes: ['Free Size'],
  ),

  // 7
  Product(
    id: 7,
    name: 'Light Blue Casual Shirt',
    price: '₹899',
    category: 'Men Shirts',
    image: 'assets/images/products/p07.jpg',
    colors: ['Light Blue', 'White', 'Black'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 8
  Product(
    id: 8,
    name: 'Black Graphic Crop Top',
    price: '₹699',
    category: 'Women Crop Tops',
    image: 'assets/images/products/p08.jpg',
    colors: ['Black', 'White', 'Pink'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 9
  Product(
    id: 9,
    name: 'Yellow Puff Sleeve Top',
    price: '₹749',
    category: 'Women Tops',
    image: 'assets/images/products/p09.jpg',
    colors: ['Yellow', 'White', 'Pink'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 10
  Product(
    id: 10,
    name: 'Dusty Pink Casual Shirt',
    price: '₹899',
    category: 'Men Shirts',
    image: 'assets/images/products/p10.jpg',
    colors: ['Dusty Pink', 'White', 'Black'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 11
  Product(
    id: 11,
    name: 'Pink Casual Top',
    price: '₹799',
    category: 'Women Tops',
    image: 'assets/images/products/p11.jpg',
    colors: ['Pink', 'Black', 'White'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 12
  Product(
    id: 12,
    name: 'Navy Graphic T-Shirt',
    price: '₹699',
    category: 'Men T-Shirts',
    image: 'assets/images/products/p12.jpg',
    colors: ['Navy', 'White', 'Black'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 13
  Product(
    id: 13,
    name: 'Olive Green Crop Top',
    price: '₹799',
    category: 'Women Crop Tops',
    image: 'assets/images/products/p13.jpg',
    colors: ['Olive', 'Green', 'Black'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 14
  Product(
    id: 14,
    name: 'Wine Border Saree',
    price: '₹1,199',
    category: 'Women Sarees',
    image: 'assets/images/products/p14.jpg',
    colors: ['Wine', 'Red', 'Black'],
    sizes: ['Free Size'],
  ),

  // 15
  Product(
    id: 15,
    name: 'Royal Blue Suit Set',
    price: '₹1,399',
    category: 'Women Suits',
    image: 'assets/images/products/p15.jpg',
    colors: ['Royal Blue', 'Pink', 'Black'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 16
  Product(
    id: 16,
    name: 'White Black Stripe T-Shirt',
    price: '₹699',
    category: 'Men T-Shirts',
    image: 'assets/images/products/p16.jpg',
    colors: ['White', 'Black', 'Grey'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 17
  Product(
    id: 17,
    name: 'Black & White Casual Sneakers',
    price: '₹1,199',
    category: 'Women Shoes / Sandals',
    image: 'assets/images/products/p17.jpg',
    colors: ['Black', 'White', 'Beige'],
    sizes: ['5', '6', '7', '8', '9'],
  ),

  // 18
  Product(
    id: 18,
    name: 'White Casual Sneakers',
    price: '₹999',
    category: 'Women Shoes / Sandals',
    image: 'assets/images/products/p18.jpg',
    colors: ['White', 'Black', 'Pink'],
    sizes: ['5', '6', '7', '8', '9'],
  ),

  // 19
  Product(
    id: 19,
    name: 'Washed Black Baggy Jeans',
    price: '₹1,099',
    category: 'Men Baggy Jeans',
    image: 'assets/images/products/p19.jpg',
    colors: ['Washed Black', 'Blue', 'Grey'],
    sizes: ['28', '30', '32', '34', '36', '38'],
  ),

  // 20
  Product(
    id: 20,
    name: 'White Grey High-Top Sneakers',
    price: '₹1,299',
    category: 'Men Shoes',
    image: 'assets/images/products/p20.jpg',
    colors: ['White', 'Grey', 'Black'],
    sizes: ['6', '7', '8', '9', '10'],
  ),

  // 21
  Product(
    id: 21,
    name: 'White Navy Running Sneakers',
    price: '₹1,199',
    category: 'Men Shoes',
    image: 'assets/images/products/p21.jpg',
    colors: ['White', 'Navy', 'Black'],
    sizes: ['6', '7', '8', '9', '10'],
  ),

  // 22
  Product(
    id: 22,
    name: 'Cream Graphic T-Shirt',
    price: '₹749',
    category: 'Men T-Shirts',
    image: 'assets/images/products/p22.jpg',
    colors: ['Cream', 'Black', 'White'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 23
  Product(
    id: 23,
    name: 'Blue Printed Suit Set',
    price: '₹1,399',
    category: 'Women Suits',
    image: 'assets/images/products/p23.jpg',
    colors: ['Blue', 'Pink', 'Black'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 24
  Product(
    id: 24,
    name: 'Pink Casual Embroidered Top',
    price: '₹799',
    category: 'Women Tops',
    image: 'assets/images/products/p24.jpg',
    colors: ['Pink', 'White', 'Black'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 25
  Product(
    id: 25,
    name: 'Grey Orange Sport Sneakers',
    price: '₹1,299',
    category: 'Men Shoes',
    image: 'assets/images/products/p25.jpg',
    colors: ['Grey', 'Orange', 'Black'],
    sizes: ['6', '7', '8', '9', '10'],
  ),

  // 26
  Product(
    id: 26,
    name: 'Black Casual Shirt',
    price: '₹899',
    category: 'Men Shirts',
    image: 'assets/images/products/p26.jpg',
    colors: ['Black', 'White', 'Blue'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 27
  Product(
    id: 27,
    name: 'Light Blue Loose Baggy Jeans',
    price: '₹1,099',
    category: 'Men Baggy Jeans',
    image: 'assets/images/products/p27.jpg',
    colors: ['Light Blue', 'Blue', 'Black'],
    sizes: ['28', '30', '32', '34', '36', '38'],
  ),

  // 28
  Product(
    id: 28,
    name: 'White Floral Puff Sleeve Top',
    price: '₹799',
    category: 'Women Tops',
    image: 'assets/images/products/p28.jpg',
    colors: ['White', 'Pink', 'Yellow'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 29
  Product(
    id: 29,
    name: 'Maroon Casual Shirt',
    price: '₹899',
    category: 'Men Shirts',
    image: 'assets/images/products/p29.jpg',
    colors: ['Maroon', 'White', 'Black'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 30
  Product(
    id: 30,
    name: 'Classic Light Blue Shirt',
    price: '₹899',
    category: 'Men Shirts',
    image: 'assets/images/products/p30.jpg',
    colors: ['Light Blue', 'White', 'Black'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 31
  Product(
    id: 31,
    name: 'Teal Designer Saree',
    price: '₹1,299',
    category: 'Women Sarees',
    image: 'assets/images/products/p31.jpg',
    colors: ['Teal', 'Green', 'Black'],
    sizes: ['Free Size'],
  ),

  // 32
  Product(
    id: 32,
    name: 'White Wide-Leg Baggy Pants',
    price: '₹999',
    category: 'Men Baggy Jeans',
    image: 'assets/images/products/p32.jpg',
    colors: ['White', 'Black', 'Beige'],
    sizes: ['28', '30', '32', '34', '36', '38'],
  ),

  // 33
  Product(
    id: 33,
    name: 'Dark Blue Baggy Jeans',
    price: '₹1,099',
    category: 'Men Baggy Jeans',
    image: 'assets/images/products/p33.jpg',
    colors: ['Dark Blue', 'Black', 'Grey'],
    sizes: ['28', '30', '32', '34', '36', '38'],
  ),

  // 34
  Product(
    id: 34,
    name: 'Emporio Light Blue T-Shirt',
    price: '₹749',
    category: 'Men T-Shirts',
    image: 'assets/images/products/p34.jpg',
    colors: ['Light Blue', 'White', 'Black'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 35
  Product(
    id: 35,
    name: 'Peach Embroidered Suit',
    price: '₹1,499',
    category: 'Women Suits',
    image: 'assets/images/products/p35.jpg',
    colors: ['Peach', 'Pink', 'White'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),

  // 36
  Product(
    id: 36,
    name: 'Green Floral Crop Top',
    price: '₹799',
    category: 'Women Crop Tops',
    image: 'assets/images/products/p36.jpg',
    colors: ['Green', 'White', 'Black'],
    sizes: ['S', 'M', 'L', 'XL'],
  ),
];

/* ============================================================
   CATEGORIES
   ============================================================ */

const categories = <String>[
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

/* ============================================================
   CATEGORY IMAGES
   ============================================================ */

const categoryImages = <String, String>{
  'Women Tops': 'assets/images/products/p09.jpg',
  'Women Crop Tops': 'assets/images/products/p02.jpg',
  'Women Sarees': 'assets/images/products/p06.jpg',
  'Women Shoes / Sandals': 'assets/images/products/p17.jpg',
  'Men Shirts': 'assets/images/products/p07.jpg',
  'Men T-Shirts': 'assets/images/products/p03.jpg',
  'Women Suits': 'assets/images/products/p01.jpg',
  'Men Shoes': 'assets/images/products/p20.jpg',
  'Men Baggy Jeans': 'assets/images/products/p04.jpg',
};

/* ============================================================
   CART
   ============================================================ */

class CartItem {
  final Product product;
  final String color;
  final String size;
  int quantity;

  CartItem({
    required this.product,
    required this.color,
    required this.size,
    this.quantity = 1,
  });
}

class AppStore extends ChangeNotifier {
  final List<Product> wishlist = [];
  final List<CartItem> cart = [];

  bool isWishlisted(Product product) {
    return wishlist.contains(product);
  }

  void toggleWishlist(Product product) {
    if (wishlist.contains(product)) {
      wishlist.remove(product);
    } else {
      wishlist.add(product);
    }

    notifyListeners();
  }

  void addToCart(
    Product product,
    String color,
    String size, {
    int quantity = 1,
  }) {
    final existing = cart.where(
      (item) =>
          item.product == product &&
          item.color == color &&
          item.size == size,
    );

    if (existing.isNotEmpty) {
      existing.first.quantity += quantity;
    } else {
      cart.add(
        CartItem(
          product: product,
          color: color,
          size: size,
          quantity: quantity,
        ),
      );
    }

    notifyListeners();
  }

  void changeQuantity(CartItem item, int delta) {
    item.quantity += delta;

    if (item.quantity <= 0) {
      cart.remove(item);
    }

    notifyListeners();
  }

  void removeFromCart(CartItem item) {
    cart.remove(item);
    notifyListeners();
  }

  int get cartCount {
    return cart.fold(
      0,
      (sum, item) => sum + item.quantity,
    );
  }

  int priceNumber(String value) {
    return int.tryParse(
          value.replaceAll(RegExp(r'[^0-9]'), ''),
        ) ??
        0;
  }

  int get cartTotal {
    return cart.fold(
      0,
      (sum, item) =>
          sum + priceNumber(item.product.price) * item.quantity,
    );
  }
}

final store = AppStore();

/* ============================================================
   WHATSAPP
   ============================================================ */

Future<void> orderOnWhatsApp({
  required String product,
  String? color,
  String? size,
  int quantity = 1,
}) async {
  var message = 'Hi Wellcool, I want to order $product.';

  if (color != null) {
    message += '\nColour: $color';
  }

  if (size != null) {
    message += '\nSize: $size';
  }

  message += '\nQuantity: $quantity';

  final uri = Uri.parse(
    'https://wa.me/$whatsappNumber'
    '?text=${Uri.encodeComponent(message)}',
  );

  await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  );
}

/* ============================================================
   APP
   ============================================================ */

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
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3D9BFF),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const Shell(),
    );
  }
}

/* ============================================================
   SHELL
   ============================================================ */

class Shell extends StatefulWidget {
  const Shell({super.key});

  @override
  State<Shell> createState() => _ShellState();
}

class _ShellState extends State<Shell> {
  int tab = 0;

  void goTo(int index) {
    Navigator.pop(context);
    setState(() {
      tab = index;
    });
  }

  void openCategory(String category) {
    Navigator.pop(context);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CategoryProductsPage(
          category: category,
        ),
      ),
    );
  }

  void openDrawer() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF11151A),
      isScrollControlled: true,
      builder: (ctx) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              18,
              20,
              18,
              24,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'wellcool.',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 16),

                _MenuTile(
                  Icons.home_outlined,
                  'Home',
                  () => goTo(0),
                ),

                _MenuTile(
                  Icons.grid_view_outlined,
                  'Categories',
                  () => goTo(1),
                ),

                _MenuTile(
                  Icons.search,
                  'Search',
                  () => goTo(2),
                ),

                _MenuTile(
                  Icons.favorite_border,
                  'Wishlist',
                  () => goTo(3),
                ),

                _MenuTile(
                  Icons.shopping_cart_outlined,
                  'Cart',
                  () => goTo(4),
                ),

                const Divider(),

                const Padding(
                  padding: EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                  ),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(
                  height: 150,
                  child: ListView(
                    children: categories
                        .map(
                          (category) => ListTile(
                            dense: true,
                            title: Text(category),
                            leading: const Icon(
                              Icons.chevron_right,
                            ),
                            onTap: () =>
                                openCategory(category),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomePage(
        onMenu: openDrawer,
        onSearch: () {
          setState(() {
            tab = 2;
          });
        },
      ),
      const CategoriesPage(),
      const SearchPage(),
      const WishlistPage(),
      const CartPage(),
    ];

    return Scaffold(
      body: SafeArea(
        child: pages[tab],
      ),
      bottomNavigationBar: AnimatedBuilder(
        animation: store,
        builder: (_, __) {
          return NavigationBar(
            backgroundColor: const Color(0xFF07090C),
            indicatorColor: const Color(0xFF102A48),
            selectedIndex: tab,
            onDestinationSelected: (index) {
              setState(() {
                tab = index;
              });
            },
            destinations: [
              const NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: 'Home',
              ),
              const NavigationDestination(
                icon: Icon(Icons.grid_view_outlined),
                selectedIcon: Icon(Icons.grid_view),
                label: 'Categories',
              ),
              const NavigationDestination(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              NavigationDestination(
                icon: const Icon(
                  Icons.favorite_border,
                ),
                selectedIcon: const Icon(
                  Icons.favorite,
                ),
                label: 'Wishlist',
              ),
              NavigationDestination(
                icon: Badge(
                  isLabelVisible: store.cartCount > 0,
                  label: Text('${store.cartCount}'),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                  ),
                ),
                selectedIcon: Badge(
                  isLabelVisible: store.cartCount > 0,
                  label: Text('${store.cartCount}'),
                  child: const Icon(
                    Icons.shopping_cart,
                  ),
                ),
                label: 'Cart',
              ),
            ],
          );
        },
      ),
    );
  }
}

/* ============================================================
   HOME
   ============================================================ */

class HomePage extends StatelessWidget {
  final VoidCallback onMenu;
  final VoidCallback onSearch;

  const HomePage({
    super.key,
    required this.onMenu,
    required this.onSearch,
  });

  @override
  Widget build(BuildContext context) {
    final best = products.take(4).toList();

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              18,
              12,
              18,
              8,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: onMenu,
                  icon: const Icon(
                    Icons.menu,
                    size: 31,
                  ),
                ),
                const SizedBox(width: 4),
                const _BrandLogo(),
                const Spacer(),

                AnimatedBuilder(
                  animation: store,
                  builder: (_, __) {
                    return IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                const WishlistPage(),
                          ),
                        );
                      },
                      icon: Icon(
                        store.wishlist.isEmpty
                            ? Icons.favorite_border
                            : Icons.favorite,
                        color: store.wishlist.isEmpty
                            ? null
                            : Colors.pinkAccent,
                        size: 29,
                      ),
                    );
                  },
                ),

                AnimatedBuilder(
                  animation: store,
                  builder: (_, __) {
                    return IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const CartPage(),
                          ),
                        );
                      },
                      icon: Badge(
                        isLabelVisible:
                            store.cartCount > 0,
                        label: Text(
                          '${store.cartCount}',
                        ),
                        child: const Icon(
                          Icons.shopping_cart_outlined,
                          size: 29,
                        ),
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
            child: InkWell(
              onTap: onSearch,
              borderRadius: BorderRadius.circular(28),
              child: Container(
                height: 54,
                padding: const EdgeInsets.symmetric(
                  horizontal: 17,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1E24),
                  borderRadius:
                      BorderRadius.circular(28),
                  border: Border.all(
                    color: const Color(0xFF303640),
                  ),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 28,
                    ),
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
                    Icon(
                      Icons.mic_none,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

        const SliverToBoxAdapter(
          child: _BenefitsRow(),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(22),
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
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            const CategoriesPage(),
                      ),
                    );
                  },
                  child: const Text('View all →'),
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
                final category = categories[index];

                return _CatCard(
                  category: category,
                  onTap: () {
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
              borderRadius:
                  BorderRadius.circular(20),
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
              children: [
                const Text(
                  'Best Selling',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            const SearchPage(
                          showAll: true,
                        ),
                      ),
                    );
                  },
                  child: const Text('See all →'),
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
              padding: const EdgeInsets.symmetric(
                horizontal: 18,
              ),
              itemCount: best.length,
              itemBuilder: (_, index) {
                return _ProductCard(
                  product: best[index],
                );
              },
            ),
          ),
        ),

        const SliverToBoxAdapter(
          child: SizedBox(height: 22),
        ),
      ],
    );
  }
}

/* ============================================================
   CATEGORIES
   ============================================================ */

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

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
              delegate:
                  SliverChildBuilderDelegate(
                (context, index) {
                  final category = categories[index];

                  return _CatCard(
                    category: category,
                    onTap: () {
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
                  );
                },
                childCount: categories.length,
              ),
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1.55,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/* ============================================================
   SEARCH
   ============================================================ */

class SearchPage extends StatefulWidget {
  final bool showAll;

  const SearchPage({
    super.key,
    this.showAll = false,
  });

  @override
  State<SearchPage> createState() =>
      _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final controller = TextEditingController();

  String query = '';

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final q = query.trim().toLowerCase();

    final results = q.isEmpty
        ? (widget.showAll
            ? products
            : <Product>[])
        : products.where((product) {
            return product.name
                    .toLowerCase()
                    .contains(q) ||
                product.category
                    .toLowerCase()
                    .contains(q);
          }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              18,
              8,
              18,
              12,
            ),
            child: TextField(
              controller: controller,
              autofocus: true,
              onChanged: (value) {
                setState(() {
                  query = value;
                });
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                ),
                suffixIcon: query.isEmpty
                    ? null
                    : IconButton(
                        onPressed: () {
                          controller.clear();
                          setState(() {
                            query = '';
                          });
                        },
                        icon: const Icon(
                          Icons.clear,
                        ),
                      ),
                hintText:
                    'Search products, categories...',
                filled: true,
                fillColor:
                    const Color(0xFF191D22),
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          if (results.isEmpty)
            Expanded(
              child: Center(
                child: Text(
                  q.isEmpty
                      ? 'Search shirts, sarees, shoes,\nbaggy jeans & more'
                      : 'No products found for "$query"',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white60,
                    fontSize: 17,
                  ),
                ),
              ),
            )
          else
            Expanded(
              child: GridView.builder(
                padding:
                    const EdgeInsets.fromLTRB(
                  14,
                  0,
                  14,
                  20,
                ),
                itemCount: results.length,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: .62,
                ),
                itemBuilder: (_, index) {
                  return _ProductGrid(
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

/* ============================================================
   WISHLIST
   ============================================================ */

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist'),
      ),
      body: AnimatedBuilder(
        animation: store,
        builder: (_, __) {
          if (store.wishlist.isEmpty) {
            return const Center(
              child: Text(
                'Your Wishlist is empty\nTap ♥ on products to save them',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }

          return GridView.builder(
            padding: const EdgeInsets.all(14),
            itemCount: store.wishlist.length,
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: .62,
            ),
            itemBuilder: (_, index) {
              return _ProductGrid(
                product: store.wishlist[index],
              );
            },
          );
        },
      ),
    );
  }
}

/* ============================================================
   CART
   ============================================================ */

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: AnimatedBuilder(
        animation: store,
        builder: (_, __) {
          if (store.cart.isEmpty) {
            return const Center(
              child: Text(
                'Your Cart is empty\nAdd products from the app',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          }

          return Column(
            children: [
              Expanded(
                child: ListView.separated(
                  padding:
                      const EdgeInsets.fromLTRB(
                    14,
                    10,
                    14,
                    10,
                  ),
                  itemCount: store.cart.length,
                  separatorBuilder: (_, __) =>
                      const SizedBox(height: 10),
                  itemBuilder: (_, index) {
                    return _CartTile(
                      item: store.cart[index],
                    );
                  },
                ),
              ),

              Container(
                padding:
                    const EdgeInsets.fromLTRB(
                  18,
                  14,
                  18,
                  18,
                ),
                decoration:
                    const BoxDecoration(
                  color: Color(0xFF11151A),
                  border: Border(
                    top: BorderSide(
                      color: Color(0xFF303640),
                    ),
                  ),
                ),
                child: SafeArea(
                  top: false,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight:
                                  FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            '₹${store.cartTotal}',
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight:
                                  FontWeight.w900,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: FilledButton.icon(
                          onPressed: () async {
                            final lines =
                                store.cart.map(
                              (item) {
                                return '${item.product.name} | '
                                    '${item.color} | '
                                    '${item.size} | '
                                    'Qty ${item.quantity}';
                              },
                            ).join('\n');

                            await orderOnWhatsApp(
                              product:
                                  'Cart Order\n'
                                  '$lines\n'
                                  'Total: ₹${store.cartTotal}',
                            );
                          },
                          icon: const Icon(
                            Icons.chat,
                          ),
                          label: const Text(
                            'Order Cart on WhatsApp',
                            style: TextStyle(
                              fontWeight:
                                  FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

/* ============================================================
   CATEGORY PRODUCTS
   ============================================================ */

class CategoryProductsPage extends StatelessWidget {
  final String category;

  const CategoryProductsPage({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    /*
      IMPORTANT:
      ONLY products whose category EXACTLY matches
      the selected category are displayed.
    */

    final items = products
        .where(
          (product) =>
              product.category == category,
        )
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: items.isEmpty
          ? const Center(
              child: Text(
                'No products in this category',
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
                childAspectRatio: .62,
              ),
              itemBuilder: (_, index) {
                return _ProductGrid(
                  product: items[index],
                );
              },
            ),
    );
  }
}

/* ============================================================
   PRODUCT DETAILS
   ============================================================ */

class ProductDetailsPage extends StatefulWidget {
  final Product product;

  const ProductDetailsPage({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetailsPage> createState() =>
      _ProductDetailsPageState();
}

class _ProductDetailsPageState
    extends State<ProductDetailsPage> {
  late String size;
  late String color;

  int quantity = 1;

  @override
  void initState() {
    super.initState();

    color = widget.product.colors.first;
    size = widget.product.sizes.first;
  }

  void addToCart() {
    store.addToCart(
      widget.product,
      color,
      size,
      quantity: quantity,
    );

    ScaffoldMessenger.of(context)
        .showSnackBar(
      const SnackBar(
        content: Text('Added to cart'),
        behavior:
            SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
        actions: [
          AnimatedBuilder(
            animation: store,
            builder: (_, __) {
              return IconButton(
                onPressed: () {
                  store.toggleWishlist(product);
                },
                icon: Icon(
                  store.isWishlisted(product)
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color:
                      store.isWishlisted(product)
                          ? Colors.pinkAccent
                          : null,
                ),
              );
            },
          ),

          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) =>
                      const CartPage(),
                ),
              );
            },
            icon: const Icon(
              Icons.shopping_cart_outlined,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding:
            const EdgeInsets.only(bottom: 24),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Hero(
              tag:
                  '${product.id}-${product.image}',
              child: Image.asset(
                product.image,
                height: 390,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.fromLTRB(
                18,
                18,
                18,
                0,
              ),
              child: Text(
                product.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight:
                      FontWeight.w900,
                ),
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.fromLTRB(
                18,
                8,
                18,
                18,
              ),
              child: Text(
                product.price,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight:
                      FontWeight.w800,
                ),
              ),
            ),

            const Divider(height: 1),

            /* COLOUR */

            _OptionSection(
              title: 'Colour',
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children:
                    product.colors.map(
                  (currentColor) {
                    final selected =
                        color ==
                            currentColor;

                    return ChoiceChip(
                      label: Text(
                        currentColor,
                      ),
                      selected: selected,
                      onSelected: (_) {
                        setState(() {
                          color =
                              currentColor;
                        });
                      },
                    );
                  },
                ).toList(),
              ),
            ),

            /* SIZE */

            _OptionSection(
              title: 'Size',
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children:
                    product.sizes.map(
                  (currentSize) {
                    final selected =
                        size ==
                            currentSize;

                    return ChoiceChip(
                      label: Text(
                        currentSize,
                      ),
                      selected: selected,
                      onSelected: (_) {
                        setState(() {
                          size =
                              currentSize;
                        });
                      },
                    );
                  },
                ).toList(),
              ),
            ),

            /* QUANTITY */

            _OptionSection(
              title: 'Quantity',
              child: Row(
                children: [
                  _RoundButton(
                    icon: Icons.remove,
                    onTap: quantity > 1
                        ? () {
                            setState(() {
                              quantity--;
                            });
                          }
                        : null,
                  ),

                  Padding(
                    padding:
                        const EdgeInsets
                            .symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      '$quantity',
                      style:
                          const TextStyle(
                        fontSize: 20,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),
                  ),

                  _RoundButton(
                    icon: Icons.add,
                    onTap: () {
                      setState(() {
                        quantity++;
                      });
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            Padding(
              padding:
                  const EdgeInsets.fromLTRB(
                18,
                8,
                18,
                8,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: addToCart,
                      icon: const Icon(
                        Icons
                            .shopping_cart_outlined,
                      ),
                      label: const Text(
                        'Add to Cart',
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: FilledButton.icon(
                      onPressed: () {
                        orderOnWhatsApp(
                          product:
                              product.name,
                          color: color,
                          size: size,
                          quantity: quantity,
                        );
                      },
                      icon: const Icon(
                        Icons.chat,
                      ),
                      label: const Text(
                        'WhatsApp',
                      ),
                    ),
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

/* ============================================================
   PRODUCT GRID
   ============================================================ */

class _ProductGrid extends StatelessWidget {
  final Product product;

  const _ProductGrid({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius:
          BorderRadius.circular(16),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>
                ProductDetailsPage(
              product: product,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.circular(16),
        ),
        clipBehavior:
            Clip.antiAlias,
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Hero(
                    tag:
                        '${product.id}-${product.image}',
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Positioned(
                    right: 8,
                    top: 8,
                    child: _HeartButton(
                      product: product,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.fromLTRB(
                10,
                8,
                10,
                0,
              ),
              child: Text(
                product.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight:
                      FontWeight.bold,
                  fontSize: 12,
                ),
                maxLines: 2,
                overflow:
                    TextOverflow.ellipsis,
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.fromLTRB(
                10,
                4,
                10,
                0,
              ),
              child: Text(
                product.price,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight:
                      FontWeight.w900,
                  fontSize: 14,
                ),
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.all(8),
              child: SizedBox(
                width: double.infinity,
                height: 34,
                child: FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            ProductDetailsPage(
                          product: product,
                        ),
                      ),
                    );
                  },
                  style:
                      FilledButton.styleFrom(
                    backgroundColor:
                        Colors.black,
                    foregroundColor:
                        Colors.white,
                  ),
                  child: const Text(
                    'View Product',
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/* ============================================================
   PRODUCT CARD
   ============================================================ */

class _ProductCard
    extends StatelessWidget {
  final Product product;

  const _ProductCard({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      margin:
          const EdgeInsets.only(right: 12),
      child: _ProductGrid(
        product: product,
      ),
    );
  }
}

/* ============================================================
   HEART
   ============================================================ */

class _HeartButton
    extends StatelessWidget {
  final Product product;

  const _HeartButton({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: store,
      builder: (_, __) {
        final selected =
            store.isWishlisted(product);

        return Material(
          color:
              Colors.white.withOpacity(.90),
          shape: const CircleBorder(),
          child: InkWell(
            customBorder:
                const CircleBorder(),
            onTap: () {
              store.toggleWishlist(
                product,
              );
            },
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: Icon(
                Icons.favorite_border,
                color: Colors.black,
                size: 21,
              ),
            ),
          ),
        );
      },
    );
  }
}

/* ============================================================
   CART TILE
   ============================================================ */

class _CartTile
    extends StatelessWidget {
  final CartItem item;

  const _CartTile({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color:
            const Color(0xFF151A20),
        borderRadius:
            BorderRadius.circular(16),
        border: Border.all(
          color:
              const Color(0xFF2A3038),
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius:
                BorderRadius.circular(12),
            child: Image.asset(
              item.product.image,
              width: 82,
              height: 100,
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
                  item.product.name,
                  maxLines: 2,
                  overflow:
                      TextOverflow.ellipsis,
                  style:
                      const TextStyle(
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  item.product.price,
                ),

                const SizedBox(height: 4),

                Text(
                  '${item.color} • Size ${item.size}',
                  style:
                      const TextStyle(
                    color:
                        Colors.white60,
                    fontSize: 12,
                  ),
                ),

                const SizedBox(height: 8),

                Row(
                  children: [
                    _SmallQty(
                      icon:
                          Icons.remove,
                      onTap: () {
                        store.changeQuantity(
                          item,
                          -1,
                        );
                      },
                    ),

                    Padding(
                      padding:
                          const EdgeInsets
                              .symmetric(
                        horizontal: 13,
                      ),
                      child: Text(
                        '${item.quantity}',
                        style:
                            const TextStyle(
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),
                    ),

                    _SmallQty(
                      icon: Icons.add,
                      onTap: () {
                        store.changeQuantity(
                          item,
                          1,
                        );
                      },
                    ),

                    const Spacer(),

                    IconButton(
                      visualDensity:
                          VisualDensity
                              .compact,
                      onPressed: () {
                        store.removeFromCart(
                          item,
                        );
                      },
                      icon: const Icon(
                        Icons.delete_outline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/* ============================================================
   SMALL QUANTITY BUTTON
   ============================================================ */

class _SmallQty
    extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _SmallQty({
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius:
          BorderRadius.circular(8),
      child: Container(
        width: 30,
        height: 30,
        decoration:
            BoxDecoration(
          border: Border.all(
            color:
                const Color(0xFF39414B),
          ),
          borderRadius:
              BorderRadius.circular(8),
        ),
        child: Icon(
          icon,
          size: 16,
        ),
      ),
    );
  }
}

/* ============================================================
   ROUND BUTTON
   ============================================================ */

class _RoundButton
    extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  const _RoundButton({
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color:
          const Color(0xFF1A2027),
      shape:
          const CircleBorder(),
      child: InkWell(
        customBorder:
            const CircleBorder(),
        onTap: onTap,
        child: Padding(
          padding:
              const EdgeInsets.all(10),
          child: Icon(icon),
        ),
      ),
    );
  }
}

/* ============================================================
   OPTION SECTION
   ============================================================ */

class _OptionSection
    extends StatelessWidget {
  final String title;
  final Widget child;

  const _OptionSection({
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.fromLTRB(
        18,
        16,
        18,
        2,
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight:
                  FontWeight.bold,
            ),
          ),

          const SizedBox(height: 9),

          child,
        ],
      ),
    );
  }
}

/* ============================================================
   PAGE TITLE
   ============================================================ */

class _PageTitle
    extends StatelessWidget {
  final String title;

  const _PageTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.fromLTRB(
        18,
        20,
        18,
        8,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 30,
          fontWeight:
              FontWeight.w900,
        ),
      ),
    );
  }
}

/* ============================================================
   BRAND LOGO
   ============================================================ */

class _BrandLogo
    extends StatelessWidget {
  const _BrandLogo();

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return const LinearGradient(
          colors: [
            Color(0xFF00B7FF),
            Color(0xFF8B5CFF),
            Color(0xFFFF38D1),
          ],
        ).createShader(rect);
      },
      child: const Text(
        'wellcool.',
        style: TextStyle(
          fontSize: 31,
          fontWeight:
              FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }
}

/* ============================================================
   BENEFITS
   ============================================================ */

class _BenefitsRow
    extends StatelessWidget {
  const _BenefitsRow();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:
          EdgeInsets.fromLTRB(
        18,
        10,
        18,
        10,
      ),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment
                .spaceBetween,
        children: [
          _Benefit(
            Icons.local_shipping_outlined,
            'COD Available',
          ),
          _Benefit(
            Icons.inventory_2_outlined,
            '7-Day Return',
          ),
          _Benefit(
            Icons.chat_outlined,
            'WhatsApp Order',
          ),
        ],
      ),
    );
  }
}

class _Benefit
    extends StatelessWidget {
  final IconData icon;
  final String text;

  const _Benefit(
    this.icon,
    this.text,
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.local_shipping_outlined,
            size: 18,
            color: Color(0xFF36A8FF),
          ),
          const SizedBox(width: 5),
          Flexible(
            child: Text(
              text,
              maxLines: 1,
              overflow:
                  TextOverflow.ellipsis,
              style:
                  const TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/* ============================================================
   CIRCLE CATEGORY
   ============================================================ */

class _Circle
    extends StatelessWidget {
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
            decoration:
                BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color:
                    const Color(0xFF303640),
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
            textAlign:
                TextAlign.center,
            maxLines: 2,
            style:
                const TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}

/* ============================================================
   CATEGORY CARD
   ============================================================ */

class _CatCard
    extends StatelessWidget {
  final String category;
  final VoidCallback onTap;

  const _CatCard({
    required this.category,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius:
          BorderRadius.circular(16),
      child: Container(
        padding:
            const EdgeInsets.all(9),
        decoration:
            BoxDecoration(
          color:
              const Color(0xFF191D22),
          borderRadius:
              BorderRadius.circular(16),
          border: Border.all(
            color:
                const Color(0xFF2B3038),
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(
                11,
              ),
              child: Image.asset(
                categoryImages[
                    category]!,
                width: 62,
                height: 62,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 8),

            Expanded(
              child: Text(
                category,
                maxLines: 3,
                overflow:
                    TextOverflow.ellipsis,
                style:
                    const TextStyle(
                  fontWeight:
                      FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),

            const Icon(
              Icons.chevron_right,
              color: Colors.white60,
            ),
          ],
        ),
      ),
    );
  }
}

/* ============================================================
   MENU TILE
   ============================================================ */

class _MenuTile
    extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const _MenuTile(
    this.icon,
    this.title,
    this.onTap,
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:
          EdgeInsets.zero,
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(
        Icons.chevron_right,
      ),
      onTap: onTap,
    );
  }
}
