
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const String whatsappNumber = '918707631837';

void main() {
  runApp(const WellcoolApp());
}

// ============================================================
// PRODUCT MODEL
// ============================================================

class Product {
  final String name;
  final String price;
  final String category;
  final String image;
  final List<String> colors;

  const Product(
    this.name,
    this.price,
    this.category,
    this.image, {
    this.colors = const ['Black', 'White', 'Blue'],
  });
}

// ============================================================
// 35 ACTUAL PRODUCTS
// ============================================================

const products = <Product>[
  Product(
    'Cream Designer Saree',
    '₹1,299',
    'Women Sarees',
    'assets/images/products/1000049819.jpg',
    colors: ['Cream', 'Orange', 'Gold'],
  ),
  Product(
    'Royal Blue Designer Saree',
    '₹1,399',
    'Women Sarees',
    'assets/images/products/1000049820.jpg',
    colors: ['Blue', 'Royal Blue', 'Black'],
  ),
  Product(
    'White Casual Top',
    '₹749',
    'Women Tops',
    'assets/images/products/1000049821.jpg',
    colors: ['White', 'Blue', 'Black'],
  ),
  Product(
    'Red Party Heels',
    '₹999',
    'Women Shoes / Sandals',
    'assets/images/products/1000049822.jpg',
    colors: ['Red', 'Black', 'White'],
  ),
  Product(
    'Beige Casual Sneakers',
    '₹1,199',
    'Women Shoes / Sandals',
    'assets/images/products/1000049823.jpg',
    colors: ['Beige', 'White', 'Black'],
  ),
  Product(
    'White Grey Sneakers',
    '₹1,299',
    'Men Shoes',
    'assets/images/products/1000049824.jpg',
    colors: ['White', 'Grey', 'Black'],
  ),
  Product(
    'Mustard Suit Set',
    '₹1,399',
    'Women Suits',
    'assets/images/products/1000049825.jpg',
    colors: ['Mustard', 'Yellow', 'Black'],
  ),
  Product(
    'Navy Graphic T-Shirt',
    '₹699',
    'Men T-Shirts',
    'assets/images/products/1000049826.jpg',
    colors: ['Navy', 'Black', 'White'],
  ),
  Product(
    'Green Crop Top',
    '₹799',
    'Women Crop Tops',
    'assets/images/products/1000049827.jpg',
    colors: ['Green', 'Black', 'White'],
  ),
  Product(
    'Maroon Border Saree',
    '₹1,199',
    'Women Sarees',
    'assets/images/products/1000049828.jpg',
    colors: ['Maroon', 'Wine', 'Black'],
  ),
  Product(
    'Royal Blue Suit Set',
    '₹1,399',
    'Women Suits',
    'assets/images/products/1000049829.jpg',
    colors: ['Royal Blue', 'Pink', 'Black'],
  ),
  Product(
    'White Black Stripe T-Shirt',
    '₹699',
    'Men T-Shirts',
    'assets/images/products/1000049830.jpg',
    colors: ['White', 'Black', 'Grey'],
  ),
  Product(
    'Black White Running Sneakers',
    '₹1,199',
    'Men Shoes',
    'assets/images/products/1000049831.jpg',
    colors: ['Black', 'White', 'Grey'],
  ),
  Product(
    'White Casual Sneakers',
    '₹999',
    'Women Shoes / Sandals',
    'assets/images/products/1000049832.jpg',
    colors: ['White', 'Black', 'Pink'],
  ),
  Product(
    'Dark Baggy Jeans',
    '₹1,099',
    'Men Baggy Jeans',
    'assets/images/products/1000049833.jpg',
    colors: ['Black', 'Blue', 'Grey'],
  ),
  Product(
    'White High Top Sneakers',
    '₹1,299',
    'Men Shoes',
    'assets/images/products/1000049834.jpg',
    colors: ['White', 'Black', 'Grey'],
  ),
  Product(
    'White Casual Shoes',
    '₹1,199',
    'Men Shoes',
    'assets/images/products/1000049835.jpg',
    colors: ['White', 'Grey', 'Black'],
  ),
  Product(
    'Boston Graphic T-Shirt',
    '₹749',
    'Men T-Shirts',
    'assets/images/products/1000049836.jpg',
    colors: ['Cream', 'Black', 'White'],
  ),
  Product(
    'Blue Printed Suit Set',
    '₹1,399',
    'Women Suits',
    'assets/images/products/1000049837.jpg',
    colors: ['Blue', 'Pink', 'Black'],
  ),
  Product(
    'Pink Casual Jacket Top',
    '₹899',
    'Women Tops',
    'assets/images/products/1000049838.jpg',
    colors: ['Pink', 'White', 'Black'],
  ),
  Product(
    'Grey Blue Orange Shoes',
    '₹1,299',
    'Men Shoes',
    'assets/images/products/1000049839.jpg',
    colors: ['Grey', 'Blue', 'Orange'],
  ),
  Product(
    'Black Casual Shirt',
    '₹899',
    'Men Shirts',
    'assets/images/products/1000049840.jpg',
    colors: ['Black', 'White', 'Blue'],
  ),
  Product(
    'Light Blue Wide Leg Pants',
    '₹1,099',
    'Men Baggy Jeans',
    'assets/images/products/1000049841.jpg',
    colors: ['Light Blue', 'Blue', 'Black'],
  ),
  Product(
    'White Floral Top',
    '₹799',
    'Women Tops',
    'assets/images/products/1000049842.jpg',
    colors: ['White', 'Pink', 'Yellow'],
  ),
  Product(
    'Maroon Casual Shirt',
    '₹899',
    'Men Shirts',
    'assets/images/products/1000049843.jpg',
    colors: ['Maroon', 'White', 'Black'],
  ),
  Product(
    'Green Puff Sleeve Crop Top',
    '₹799',
    'Women Crop Tops',
    'assets/images/products/1000049844.jpg',
    colors: ['Green', 'Black', 'White'],
  ),
  Product(
    'Peach Embroidered Suit',
    '₹1,499',
    'Women Suits',
    'assets/images/products/1000049845.jpg',
    colors: ['Peach', 'Pink', 'White'],
  ),
  Product(
    'Emporio Light Blue T-Shirt',
    '₹749',
    'Men T-Shirts',
    'assets/images/products/1000049846.jpg',
    colors: ['Light Blue', 'White', 'Black'],
  ),
  Product(
    'Dark Blue Baggy Pants',
    '₹999',
    'Men Baggy Jeans',
    'assets/images/products/1000049847.jpg',
    colors: ['Dark Blue', 'Black', 'Grey'],
  ),
  Product(
    'White Wide-Leg Pants',
    '₹999',
    'Men Baggy Jeans',
    'assets/images/products/1000049848.jpg',
    colors: ['White', 'Black', 'Beige'],
  ),
  Product(
    'Teal Designer Saree',
    '₹1,299',
    'Women Sarees',
    'assets/images/products/1000049849.jpg',
    colors: ['Teal', 'Green', 'Black'],
  ),
  Product(
    'Light Blue Casual Shirt',
    '₹899',
    'Men Shirts',
    'assets/images/products/1000049850.jpg',
    colors: ['Light Blue', 'White', 'Black'],
  ),
  Product(
    'Yellow Puff Sleeve Top',
    '₹749',
    'Women Tops',
    'assets/images/products/1000049852.jpg',
    colors: ['Yellow', 'White', 'Pink'],
  ),
  Product(
    'Pink Casual Shirt',
    '₹899',
    'Men Shirts',
    'assets/images/products/1000049853.jpg',
    colors: ['Pink', 'White', 'Black'],
  ),
  Product(
    'Pink Casual Top',
    '₹799',
    'Women Tops',
    'assets/images/products/1000049854.jpg',
    colors: ['Pink', 'White', 'Black'],
  ),
];

// ============================================================
// CATEGORIES
// ============================================================

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

// IMPORTANT:
// All category images below are also REAL 10000498xx files.
// No p01/p02/p03 paths are used.
// ============================================================

const categoryImages = <String, String>{
  'Women Tops':
      'assets/images/products/1000049842.jpg',
  'Women Crop Tops':
      'assets/images/products/1000049827.jpg',
  'Women Sarees':
      'assets/images/products/1000049819.jpg',
  'Women Shoes / Sandals':
      'assets/images/products/1000049822.jpg',
  'Men Shirts':
      'assets/images/products/1000049840.jpg',
  'Men T-Shirts':
      'assets/images/products/1000049826.jpg',
  'Women Suits':
      'assets/images/products/1000049845.jpg',
  'Men Shoes':
      'assets/images/products/1000049824.jpg',
  'Men Baggy Jeans':
      'assets/images/products/1000049833.jpg',
};

// ============================================================
// CART
// ============================================================

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

  void changeQuantity(
    CartItem item,
    int delta,
  ) {
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
      (total, item) => total + item.quantity,
    );
  }

  int priceNumber(String value) {
    return int.tryParse(
          value.replaceAll(
            RegExp(r'[^0-9]'),
            '',
          ),
        ) ??
        0;
  }

  int get cartTotal {
    return cart.fold(
      0,
      (total, item) =>
          total +
          priceNumber(item.product.price) *
              item.quantity,
    );
  }
}

final store = AppStore();

// ============================================================
// WHATSAPP
// ============================================================

Future<void> orderOnWhatsApp({
  required String product,
  String? color,
  String? size,
  int quantity = 1,
}) async {
  String message =
      'Hi Wellcool 👋\n\n'
      'I want to order:\n'
      '$product';

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

Future<void> sendCartWhatsApp() async {
  String message =
      'Hi Wellcool 👋\n\n'
      'I want to place an order:\n\n';

  for (final item in store.cart) {
    message +=
        '${item.product.name}\n'
        'Price: ${item.product.price}\n'
        'Colour: ${item.color}\n'
        'Size: ${item.size}\n'
        'Quantity: ${item.quantity}\n\n';
  }

  message +=
      'Total: ₹${store.cartTotal}';

  final uri = Uri.parse(
    'https://wa.me/$whatsappNumber'
    '?text=${Uri.encodeComponent(message)}',
  );

  await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  );
}

// ============================================================
// APP
// ============================================================

class WellcoolApp extends StatelessWidget {
  const WellcoolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wellcool.',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor:
            const Color(0xFF080A0D),
        colorScheme:
            ColorScheme.fromSeed(
          seedColor:
              const Color(0xFF3D9BFF),
          brightness:
              Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const Shell(),
    );
  }
}

// ============================================================
// SHELL / BOTTOM NAVIGATION
// ============================================================

class Shell extends StatefulWidget {
  const Shell({super.key});

  @override
  State<Shell> createState() =>
      _ShellState();
}

class _ShellState extends State<Shell> {
  int tab = 0;

  void setTab(int index) {
    setState(() {
      tab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomePage(
        onMenu: () {},
        onSearch: () {
          setTab(2);
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
      bottomNavigationBar:
          AnimatedBuilder(
        animation: store,
        builder: (_, __) {
          return NavigationBar(
            backgroundColor:
                const Color(0xFF07090C),
            indicatorColor:
                const Color(0xFF102A48),
            selectedIndex: tab,
            onDestinationSelected:
                setTab,
            destinations: [
              const NavigationDestination(
                icon: Icon(
                  Icons.home_outlined,
                ),
                selectedIcon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              const NavigationDestination(
                icon: Icon(
                  Icons.grid_view_outlined,
                ),
                selectedIcon: Icon(
                  Icons.grid_view,
                ),
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
                  isLabelVisible:
                      store.cartCount > 0,
                  label: Text(
                    '${store.cartCount}',
                  ),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                  ),
                ),
                selectedIcon: Badge(
                  isLabelVisible:
                      store.cartCount > 0,
                  label: Text(
                    '${store.cartCount}',
                  ),
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

// ============================================================
// HOME PAGE
// ============================================================

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
    final best =
        products.take(4).toList();

    return CustomScrollView(
      slivers: [

        // HEADER
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.fromLTRB(
              18,
              12,
              18,
              8,
            ),
            child: Row(
              children: [

                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor:
                          const Color(
                        0xFF11151A,
                      ),
                      builder: (_) {
                        return SafeArea(
                          child: Padding(
                            padding:
                                const EdgeInsets.all(
                              18,
                            ),
                            child: Column(
                              mainAxisSize:
                                  MainAxisSize.min,
                              crossAxisAlignment:
                                  CrossAxisAlignment
                                      .start,
                              children: [
                                const _BrandLogo(),
                                const SizedBox(
                                  height: 18,
                                ),
                                const _MenuTile(
                                  Icons.home_outlined,
                                  'Home',
                                ),
                                _MenuTile(
                                  Icons.grid_view_outlined,
                                  'Categories',
                                  () {
                                    Navigator.pop(
                                      context,
                                    );
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) =>
                                            const CategoriesPage(),
                                      ),
                                    );
                                  },
                                ),
                                _MenuTile(
                                  Icons.search,
                                  'Search',
                                  () {
                                    Navigator.pop(
                                      context,
                                    );
                                    onSearch();
                                  },
                                ),
                                _MenuTile(
                                  Icons.favorite_border,
                                  'Wishlist',
                                  () {
                                    Navigator.pop(
                                      context,
                                    );
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) =>
                                            const WishlistPage(),
                                      ),
                                    );
                                  },
                                ),
                                _MenuTile(
                                  Icons.shopping_cart_outlined,
                                  'Cart',
                                  () {
                                    Navigator.pop(
                                      context,
                                    );
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) =>
                                            const CartPage(),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
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
                        color: store
                                .wishlist
                                .isEmpty
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
                            builder: (_) =>
                                const CartPage(),
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

        // SEARCH BAR
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 6,
            ),
            child: InkWell(
              onTap: onSearch,
              borderRadius:
                  BorderRadius.circular(28),
              child: Container(
                height: 54,
                padding:
                    const EdgeInsets.symmetric(
                  horizontal: 17,
                ),
                decoration:
                    BoxDecoration(
                  color:
                      const Color(0xFF1A1E24),
                  borderRadius:
                      BorderRadius.circular(28),
                  border: Border.all(
                    color:
                        const Color(0xFF303640),
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
                          color:
                              Colors.white70,
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

        // BENEFITS
        const SliverToBoxAdapter(
          child: _BenefitsRow(),
        ),

        // ORIGINAL HERO
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(
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

        // CIRCULAR CATEGORIES
        SliverToBoxAdapter(
          child: SizedBox(
            height: 125,
            child: ListView(
              scrollDirection:
                  Axis.horizontal,
              padding:
                  const EdgeInsets.fromLTRB(
                18,
                14,
                18,
                8,
              ),
              children: const [
                _Circle(
                  'assets/images/products/1000049842.jpg',
                  'Women Tops',
                ),
                _Circle(
                  'assets/images/products/1000049827.jpg',
                  'Crop Tops',
                ),
                _Circle(
                  'assets/images/products/1000049819.jpg',
                  'Sarees',
                ),
                _Circle(
                  'assets/images/products/1000049822.jpg',
                  'Women Shoes',
                ),
                _Circle(
                  'assets/images/products/1000049845.jpg',
                  'Suits',
                ),
                _Circle(
                  'assets/images/products/1000049840.jpg',
                  'Men Shirts',
                ),
                _Circle(
                  'assets/images/products/1000049826.jpg',
                  'Men T-Shirts',
                ),
                _Circle(
                  'assets/images/products/1000049833.jpg',
                  'Baggy Jeans',
                ),
              ],
            ),
          ),
        ),

        // SHOP BY CATEGORY
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.fromLTRB(
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
                    fontWeight:
                        FontWeight.w900,
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
                  child:
                      const Text('View all →'),
                ),
              ],
            ),
          ),
        ),

        SliverPadding(
          padding:
              const EdgeInsets.fromLTRB(
            18,
            0,
            18,
            18,
          ),
          sliver: SliverGrid(
            delegate:
                SliverChildBuilderDelegate(
              (context, index) {
                return _CatCard(
                  category:
                      categories[index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            CategoryProductsPage(
                          category:
                              categories[index],
                        ),
                      ),
                    );
                  },
                );
              },
              childCount:
                  categories.length,
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

        // NEW ARRIVALS BANNER
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.fromLTRB(
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

        // BEST SELLING
        SliverToBoxAdapter(
          child: Padding(
            padding:
                const EdgeInsets.fromLTRB(
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
                    fontWeight:
                        FontWeight.w900,
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
                  child:
                      const Text('See all →'),
                ),
              ],
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: SizedBox(
            height: 315,
            child: ListView.builder(
              scrollDirection:
                  Axis.horizontal,
              padding:
                  const EdgeInsets.symmetric(
                horizontal: 18,
              ),
              itemCount: best.length,
              itemBuilder:
                  (context, index) {
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

// ============================================================
// CATEGORIES PAGE
// ============================================================

class CategoriesPage
    extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child:
                _PageTitle('Categories'),
          ),
          SliverPadding(
            padding:
                const EdgeInsets.all(18),
            sliver: SliverGrid(
              delegate:
                  SliverChildBuilderDelegate(
                (context, index) {
                  final category =
                      categories[index];

                  return _CatCard(
                    category: category,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              CategoryProductsPage(
                            category:
                                category,
                          ),
                        ),
                      );
                    },
                  );
                },
                childCount:
                    categories.length,
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

// ============================================================
// SEARCH PAGE
// ============================================================

class SearchPage
    extends StatefulWidget {
  final bool showAll;

  const SearchPage({
    super.key,
    this.showAll = false,
  });

  @override
  State<SearchPage> createState() =>
      _SearchPageState();
}

class _SearchPageState
    extends State<SearchPage> {
  final controller =
      TextEditingController();

  String query = '';

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final q =
        query.trim().toLowerCase();

    final results = q.isEmpty
        ? (widget.showAll
            ? products
            : <Product>[])
        : products.where((p) {
            return p.name
                    .toLowerCase()
                    .contains(q) ||
                p.category
                    .toLowerCase()
                    .contains(q);
          }).toList();

    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.fromLTRB(
              18,
              8,
              18,
              12,
            ),
            child: TextField(
              controller: controller,
              onChanged: (value) {
                setState(() {
                  query = value;
                });
              },
              decoration:
                  InputDecoration(
                prefixIcon:
                    const Icon(
                  Icons.search,
                ),
                suffixIcon: query.isEmpty
                    ? null
                    : IconButton(
                        onPressed: () {
                          controller
                              .clear();
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
                    const Color(
                  0xFF191D22,
                ),
                border:
                    OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(
                    18,
                  ),
                  borderSide:
                      BorderSide.none,
                ),
              ),
            ),
          ),

          if (results.isEmpty)
            const Expanded(
              child: Center(
                child: Text(
                  'Search shirts, sarees, shoes,\nbaggy jeans & more',
                  textAlign:
                      TextAlign.center,
                  style: TextStyle(
                    color:
                        Colors.white60,
                    fontSize: 17,
                  ),
                ),
              ),
            )
          else
            Expanded(
              child:
                  GridView.builder(
                padding:
                    const EdgeInsets.fromLTRB(
                  14,
                  0,
                  14,
                  20,
                ),
                itemCount:
                    results.length,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: .62,
                ),
                itemBuilder:
                    (context, index) {
                  return _ProductGrid(
                    product:
                        results[index],
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}

// ============================================================
// WISHLIST
// ============================================================

class WishlistPage
    extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Wishlist'),
      ),
      body: AnimatedBuilder(
        animation: store,
        builder: (_, __) {
          if (store.wishlist.isEmpty) {
            return const Center(
              child: Text(
                'Your Wishlist is empty\nTap ♥ on products to save them',
                textAlign:
                    TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),
            );
          }

          return GridView.builder(
            padding:
                const EdgeInsets.all(14),
            itemCount:
                store.wishlist.length,
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: .62,
            ),
            itemBuilder:
                (context, index) {
              return _ProductGrid(
                product:
                    store.wishlist[index],
              );
            },
          );
        },
      ),
    );
  }
}

// ============================================================
// CART
// ============================================================

class CartPage
    extends StatelessWidget {
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
                textAlign:
                    TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight:
                      FontWeight.bold,
                ),
              ),
            );
          }

          return Column(
            children: [
              Expanded(
                child:
                    ListView.separated(
                  padding:
                      const EdgeInsets.fromLTRB(
                    14,
                    10,
                    14,
                    10,
                  ),
                  itemCount:
                      store.cart.length,
                  separatorBuilder:
                      (_, __) =>
                          const SizedBox(
                    height: 10,
                  ),
                  itemBuilder:
                      (context, index) {
                    return _CartTile(
                      item:
                          store.cart[index],
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
                  color:
                      Color(0xFF11151A),
                  border: Border(
                    top: BorderSide(
                      color:
                          Color(0xFF303640),
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
                            style:
                                const TextStyle(
                              fontSize: 22,
                              fontWeight:
                                  FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      SizedBox(
                        width:
                            double.infinity,
                        height: 48,
                        child:
                            FilledButton.icon(
                          onPressed:
                              sendCartWhatsApp,
                          icon:
                              const Icon(
                            Icons.chat,
                          ),
                          label:
                              const Text(
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

// ============================================================
// CATEGORY PRODUCTS
// ============================================================

class CategoryProductsPage
    extends StatelessWidget {
  final String category;

  const CategoryProductsPage({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final items = products
        .where(
          (p) =>
              p.category == category,
        )
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: GridView.builder(
        padding:
            const EdgeInsets.all(14),
        itemCount: items.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: .62,
        ),
        itemBuilder:
            (context, index) {
          return _ProductGrid(
            product: items[index],
          );
        },
      ),
    );
  }
}

// ============================================================
// PRODUCT DETAILS
// ============================================================

class ProductDetailsPage
    extends StatefulWidget {
  final Product product;

  const ProductDetailsPage({
    super.key,
    required this.product,
  });

  @override
  State<ProductDetailsPage>
      createState() =>
          _ProductDetailsPageState();
}

class _ProductDetailsPageState
    extends State<ProductDetailsPage> {
  String size = 'M';
  late String color;
  int quantity = 1;

  @override
  void initState() {
    super.initState();
    color =
        widget.product.colors.first;
  }

  bool get isShoe {
    return widget.product.category
        .contains('Shoes');
  }

  List<String> get sizes {
    if (widget.product.category ==
        'Women Sarees') {
      return ['Free Size'];
    }

    if (isShoe) {
      return [
        '5',
        '6',
        '7',
        '8',
        '9',
        '10',
      ];
    }

    if (widget.product.category ==
        'Men Baggy Jeans') {
      return [
        '28',
        '30',
        '32',
        '34',
        '36',
        '38',
      ];
    }

    return [
      'S',
      'M',
      'L',
      'XL',
    ];
  }

  void addToCart() {
    store.addToCart(
      widget.product,
      color,
      size,
      quantity: quantity,
    );

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(
      const SnackBar(
        content:
            Text('Added to cart'),
        behavior:
            SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final p = widget.product;

    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Product'),
        actions: [
          AnimatedBuilder(
            animation: store,
            builder: (_, __) {
              final selected =
                  store.isWishlisted(p);

              return IconButton(
                onPressed: () {
                  store.toggleWishlist(p);
                },
                icon: Icon(
                  selected
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: selected
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

      body:
          SingleChildScrollView(
        padding:
            const EdgeInsets.only(
          bottom: 24,
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [

            Hero(
              tag:
                  '${p.name}-${p.image}',
              child: Image.asset(
                p.image,
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
                p.name,
                style:
                    const TextStyle(
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
                p.price,
                style:
                    const TextStyle(
                  fontSize: 22,
                  fontWeight:
                      FontWeight.w800,
                ),
              ),
            ),

            const Divider(
              height: 1,
            ),

            _OptionSection(
              title: 'Colour',
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children:
                    p.colors.map(
                  (c) {
                    return ChoiceChip(
                      label:
                          Text(c),
                      selected:
                          color == c,
                      onSelected:
                          (_) {
                        setState(
                          () {
                            color = c;
                          },
                        );
                      },
                    );
                  },
                ).toList(),
              ),
            ),

            _OptionSection(
              title: 'Size',
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children:
                    sizes.map(
                  (s) {
                    return ChoiceChip(
                      label:
                          Text(s),
                      selected:
                          size == s,
                      onSelected:
                          (_) {
                        setState(
                          () {
                            size = s;
                          },
                        );
                      },
                    );
                  },
                ).toList(),
              ),
            ),

            _OptionSection(
              title: 'Quantity',
              child: Row(
                children: [
                  _RoundButton(
                    icon:
                        Icons.remove,
                    onTap:
                        quantity > 1
                            ? () {
                                setState(
                                  () {
                                    quantity--;
                                  },
                                );
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
                    icon:
                        Icons.add,
                    onTap: () {
                      setState(
                        () {
                          quantity++;
                        },
                      );
                    },
                  ),
                ],
              ),
            ),

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
                    child:
                        OutlinedButton.icon(
                      onPressed:
                          addToCart,
                      icon:
                          const Icon(
                        Icons.shopping_cart_outlined,
                      ),
                      label:
                          const Text(
                        'Add to Cart',
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child:
                        FilledButton.icon(
                      onPressed: () {
                        orderOnWhatsApp(
                          product: p.name,
                          color: color,
                          size: size,
                          quantity:
                              quantity,
                        );
                      },
                      icon:
                          const Icon(
                        Icons.chat,
                      ),
                      label:
                          const Text(
                        'WhatsApp',
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const _BenefitsRow(),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// PRODUCT GRID CARD
// ============================================================

class _ProductGrid
    extends StatelessWidget {
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
        decoration:
            BoxDecoration(
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
                        '${product.name}-${product.image}',
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.cover,
                      errorBuilder:
                          (_, __, ___) {
                        return const Center(
                          child: Icon(
                            Icons
                                .image_not_supported,
                            size: 45,
                            color: Colors.black54,
                          ),
                        );
                      },
                    ),
                  ),

                  Positioned(
                    right: 8,
                    top: 8,
                    child:
                        _HeartButton(
                      product:
                          product,
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
                style:
                    const TextStyle(
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
                style:
                    const TextStyle(
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
                width:
                    double.infinity,
                height: 34,
                child:
                    FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            ProductDetailsPage(
                          product:
                              product,
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
                  child:
                      const Text(
                    'View Product',
                    style:
                        TextStyle(
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

// ============================================================
// HORIZONTAL PRODUCT CARD
// ============================================================

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
          const EdgeInsets.only(
        right: 12,
      ),
      child: _ProductGrid(
        product: product,
      ),
    );
  }
}

// ============================================================
// HEART
// ============================================================

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
            store.isWishlisted(
          product,
        );

        return Material(
          color: Colors.white
              .withOpacity(.90),
          shape:
              const CircleBorder(),
          child: InkWell(
            customBorder:
                const CircleBorder(),
            onTap: () {
              store.toggleWishlist(
                product,
              );
            },
            child: Padding(
              padding:
                  const EdgeInsets.all(
                8,
              ),
              child: Icon(
                selected
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: selected
                    ? Colors.pinkAccent
                    : Colors.black,
                size: 21,
              ),
            ),
          ),
        );
      },
    );
  }
}

// ============================================================
// CART TILE
// ============================================================

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
      decoration:
          BoxDecoration(
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
                BorderRadius.circular(
              12,
            ),
            child: Image.asset(
              item.product.image,
              width: 82,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(
            width: 12,
          ),

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

                const SizedBox(
                  height: 5,
                ),

                Text(
                  item.product.price,
                ),

                const SizedBox(
                  height: 4,
                ),

                Text(
                  '${item.color} • Size ${item.size}',
                  style:
                      const TextStyle(
                    color:
                        Colors.white60,
                    fontSize: 12,
                  ),
                ),

                const SizedBox(
                  height: 8,
                ),

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
                      icon:
                          Icons.add,
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
                      icon:
                          const Icon(
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

// ============================================================
// CATEGORY CARD
// ============================================================

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

            const SizedBox(
              width: 8,
            ),

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

// ============================================================
// CATEGORY CIRCLE
// ============================================================

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
              shape:
                  BoxShape.circle,
              border: Border.all(
                color:
                    const Color(
                  0xFF303640,
                ),
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

          const SizedBox(
            height: 6,
          ),

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

// ============================================================
// BENEFITS
// ============================================================

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
            Icons
                .local_shipping_outlined,
            'COD Available',
          ),
          _Benefit(
            Icons
                .inventory_2_outlined,
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
          Icon(
            icon,
            size: 18,
            color:
                const Color(0xFF36A8FF),
          ),
          const SizedBox(
            width: 5,
          ),
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

// ============================================================
// BRAND LOGO
// ============================================================

class _BrandLogo
    extends StatelessWidget {
  const _BrandLogo();

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (r) {
        return const LinearGradient(
          colors: [
            Color(0xFF00B7FF),
            Color(0xFF8B5CFF),
            Color(0xFFFF38D1),
          ],
        ).createShader(r);
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

// ============================================================
// PAGE TITLE
// ============================================================

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
        style:
            const TextStyle(
          fontSize: 30,
          fontWeight:
              FontWeight.w900,
        ),
      ),
    );
  }
}

// ============================================================
// MENU TILE
// ============================================================

class _MenuTile
    extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback? onTap;

  const _MenuTile(
    this.icon,
    this.title, [
    this.onTap,
  ]);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding:
          EdgeInsets.zero,
      leading: Icon(icon),
      title: Text(title),
      trailing:
          const Icon(
        Icons.chevron_right,
      ),
      onTap: onTap,
    );
  }
}

// ============================================================
// QUANTITY BUTTONS
// ============================================================

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
              const EdgeInsets.all(
            10,
          ),
          child: Icon(icon),
        ),
      ),
    );
  }
}

// ============================================================
// OPTION SECTION
// ============================================================

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
            style:
                const TextStyle(
              fontSize: 16,
              fontWeight:
                  FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 9,
          ),
          child,
        ],
      ),
    );
  }
}
