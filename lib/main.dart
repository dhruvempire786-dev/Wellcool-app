
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
    this.colors = const ['Black', 'White', 'Blue'],
    this.sizes = const ['S', 'M', 'L', 'XL'],
  });
}

// ============================================================
// ALL 36 PRODUCTS
// ============================================================

const List<Product> products = [

  Product(
    id: 1,
    name: 'Printed Cream Saree',
    price: '₹1,299',
    category: 'Women Sarees',
    image: 'assets/images/products/1000049819.jpg',
    colors: ['Cream', 'Red', 'Gold'],
    sizes: ['Free Size'],
  ),

  Product(
    id: 2,
    name: 'Royal Blue Designer Saree',
    price: '₹1,399',
    category: 'Women Sarees',
    image: 'assets/images/products/1000049820.jpg',
    colors: ['Blue', 'Royal Blue', 'Black'],
    sizes: ['Free Size'],
  ),

  Product(
    id: 3,
    name: 'White Casual Top',
    price: '₹749',
    category: 'Women Tops',
    image: 'assets/images/products/1000049821.jpg',
  ),

  Product(
    id: 4,
    name: 'Red Strap Heels',
    price: '₹999',
    category: 'Women Shoes / Sandals',
    image: 'assets/images/products/1000049822.jpg',
    colors: ['Red', 'Black', 'White'],
    sizes: ['5', '6', '7', '8', '9'],
  ),

  Product(
    id: 5,
    name: 'Cream Casual Sneakers',
    price: '₹1,199',
    category: 'Women Shoes / Sandals',
    image: 'assets/images/products/1000049823.jpg',
    colors: ['White', 'Cream', 'Black'],
    sizes: ['5', '6', '7', '8', '9'],
  ),

  Product(
    id: 6,
    name: 'White Grey Sport Shoes',
    price: '₹1,299',
    category: 'Men Shoes',
    image: 'assets/images/products/1000049824.jpg',
    colors: ['White', 'Grey', 'Black'],
    sizes: ['6', '7', '8', '9', '10'],
  ),

  Product(
    id: 7,
    name: 'Mustard Printed Suit Set',
    price: '₹1,399',
    category: 'Women Suits',
    image: 'assets/images/products/1000049825.jpg',
  ),

  Product(
    id: 8,
    name: 'Navy Stripe T-Shirt',
    price: '₹699',
    category: 'Men T-Shirts',
    image: 'assets/images/products/1000049826.jpg',
  ),

  Product(
    id: 9,
    name: 'Green Floral Crop Top',
    price: '₹799',
    category: 'Women Crop Tops',
    image: 'assets/images/products/1000049827.jpg',
  ),

  Product(
    id: 10,
    name: 'Wine Border Saree',
    price: '₹1,199',
    category: 'Women Sarees',
    image: 'assets/images/products/1000049828.jpg',
    colors: ['Wine', 'Maroon', 'Black'],
    sizes: ['Free Size'],
  ),

  Product(
    id: 11,
    name: 'Royal Blue Suit',
    price: '₹1,499',
    category: 'Women Suits',
    image: 'assets/images/products/1000049829.jpg',
  ),

  Product(
    id: 12,
    name: 'White Black Stripe T-Shirt',
    price: '₹699',
    category: 'Men T-Shirts',
    image: 'assets/images/products/1000049830.jpg',
  ),

  Product(
    id: 13,
    name: 'Navy Running Sneakers',
    price: '₹1,199',
    category: 'Men Shoes',
    image: 'assets/images/products/1000049831.jpg',
    colors: ['Navy', 'White', 'Black'],
    sizes: ['6', '7', '8', '9', '10'],
  ),

  Product(
    id: 14,
    name: 'White Casual Sneakers',
    price: '₹999',
    category: 'Women Shoes / Sandals',
    image: 'assets/images/products/1000049832.jpg',
    colors: ['White', 'Pink', 'Black'],
    sizes: ['5', '6', '7', '8', '9'],
  ),

  Product(
    id: 15,
    name: 'Black Baggy Jeans',
    price: '₹1,099',
    category: 'Men Baggy Jeans',
    image: 'assets/images/products/1000049833.jpg',
    colors: ['Black', 'Blue', 'Grey'],
    sizes: ['28', '30', '32', '34', '36', '38'],
  ),

  Product(
    id: 16,
    name: 'White Grey Sneakers',
    price: '₹1,199',
    category: 'Women Shoes / Sandals',
    image: 'assets/images/products/1000049834.jpg',
    colors: ['White', 'Grey', 'Black'],
    sizes: ['5', '6', '7', '8', '9'],
  ),

  Product(
    id: 17,
    name: 'White Grey Sport Sneakers',
    price: '₹1,199',
    category: 'Men Shoes',
    image: 'assets/images/products/1000049835.jpg',
    colors: ['White', 'Grey', 'Black'],
    sizes: ['6', '7', '8', '9', '10'],
  ),

  Product(
    id: 18,
    name: 'Boston Graphic T-Shirt',
    price: '₹749',
    category: 'Men T-Shirts',
    image: 'assets/images/products/1000049836.jpg',
  ),

  Product(
    id: 19,
    name: 'Blue Printed Suit Set',
    price: '₹1,399',
    category: 'Women Suits',
    image: 'assets/images/products/1000049837.jpg',
  ),

  Product(
    id: 20,
    name: 'Pink Casual Jacket Top',
    price: '₹899',
    category: 'Women Tops',
    image: 'assets/images/products/1000049838.jpg',
  ),

  Product(
    id: 21,
    name: 'Blue Orange Running Shoes',
    price: '₹1,299',
    category: 'Men Shoes',
    image: 'assets/images/products/1000049839.jpg',
    colors: ['Blue', 'Orange', 'Black'],
    sizes: ['6', '7', '8', '9', '10'],
  ),

  Product(
    id: 22,
    name: 'Black Casual Shirt',
    price: '₹899',
    category: 'Men Shirts',
    image: 'assets/images/products/1000049840.jpg',
  ),

  Product(
    id: 23,
    name: 'Light Blue Baggy Jeans',
    price: '₹1,099',
    category: 'Men Baggy Jeans',
    image: 'assets/images/products/1000049841.jpg',
    colors: ['Light Blue', 'Blue', 'Black'],
    sizes: ['28', '30', '32', '34', '36', '38'],
  ),

  Product(
    id: 24,
    name: 'White Floral Peplum Top',
    price: '₹799',
    category: 'Women Tops',
    image: 'assets/images/products/1000049842.jpg',
  ),

  Product(
    id: 25,
    name: 'Maroon Casual Shirt',
    price: '₹899',
    category: 'Men Shirts',
    image: 'assets/images/products/1000049843.jpg',
  ),

  Product(
    id: 26,
    name: 'Green Puff Sleeve Crop Top',
    price: '₹799',
    category: 'Women Crop Tops',
    image: 'assets/images/products/1000049844.jpg',
  ),

  Product(
    id: 27,
    name: 'Peach Embroidered Suit',
    price: '₹1,499',
    category: 'Women Suits',
    image: 'assets/images/products/1000049845.jpg',
  ),

  Product(
    id: 28,
    name: 'Emporio Light Blue T-Shirt',
    price: '₹749',
    category: 'Men T-Shirts',
    image: 'assets/images/products/1000049846.jpg',
  ),

  Product(
    id: 29,
    name: 'Navy Baggy Pants',
    price: '₹999',
    category: 'Men Baggy Jeans',
    image: 'assets/images/products/1000049847.jpg',
    colors: ['Navy', 'Black', 'Grey'],
    sizes: ['28', '30', '32', '34', '36', '38'],
  ),

  Product(
    id: 30,
    name: 'White Baggy Pants',
    price: '₹999',
    category: 'Men Baggy Jeans',
    image: 'assets/images/products/1000049848.jpg',
    colors: ['White', 'Black', 'Beige'],
    sizes: ['28', '30', '32', '34', '36', '38'],
  ),

  Product(
    id: 31,
    name: 'Teal Designer Saree',
    price: '₹1,299',
    category: 'Women Sarees',
    image: 'assets/images/products/1000049849.jpg',
    colors: ['Teal', 'Green', 'Black'],
    sizes: ['Free Size'],
  ),

  Product(
    id: 32,
    name: 'Light Blue Casual Shirt',
    price: '₹899',
    category: 'Men Shirts',
    image: 'assets/images/products/1000049850.jpg',
  ),

  Product(
    id: 33,
    name: 'Yellow Puff Sleeve Top',
    price: '₹749',
    category: 'Women Tops',
    image: 'assets/images/products/1000049852.jpg',
  ),

  Product(
    id: 34,
    name: 'Pink Casual Shirt',
    price: '₹899',
    category: 'Men Shirts',
    image: 'assets/images/products/1000049853.jpg',
  ),

  Product(
    id: 35,
    name: 'Pink Casual Top',
    price: '₹799',
    category: 'Women Tops',
    image: 'assets/images/products/1000049854.jpg',
  ),

  // 36th entry — temporary non-blank mapping.
  // 1000049851.jpg is not present in the uploaded files.
  Product(
    id: 36,
    name: 'New Arrival Top',
    price: '₹799',
    category: 'Women Tops',
    image: 'assets/images/products/1000049854.jpg',
  ),
];

// ============================================================
// CATEGORIES
// ============================================================

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

final Map<String, String> categoryImages = {
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
      'assets/images/products/1000049825.jpg',

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
    String size,
    int quantity,
  ) {
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

  void changeQuantity(CartItem item, int change) {
    item.quantity += change;

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

  int priceNumber(String price) {
    return int.tryParse(
          price.replaceAll(RegExp(r'[^0-9]'), ''),
        ) ??
        0;
  }

  int get cartTotal {
    return cart.fold(
      0,
      (total, item) =>
          total +
          priceNumber(item.product.price) * item.quantity,
    );
  }
}

final AppStore store = AppStore();

// ============================================================
// WHATSAPP
// ============================================================

Future<void> orderOnWhatsApp({
  required Product product,
  required String color,
  required String size,
  required int quantity,
}) async {
  String message = '''
Hi Wellcool 👋

I want to order:

Product: ${product.name}
Price: ${product.price}
Colour: $color
Size: $size
Quantity: $quantity
''';

  final Uri uri = Uri.parse(
    'https://wa.me/$whatsappNumber?text=${Uri.encodeComponent(message)}',
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
        scaffoldBackgroundColor: const Color(0xFF080A0D),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3D9BFF),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

// ============================================================
// HOME
// ============================================================

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedTab = 0;

  final List<Widget> pages = const [
    HomeContent(),
    CategoriesPage(),
    WishlistPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedTab],
      bottomNavigationBar: AnimatedBuilder(
        animation: store,
        builder: (context, child) {
          return NavigationBar(
            selectedIndex: selectedTab,
            onDestinationSelected: (index) {
              setState(() {
                selectedTab = index;
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
                icon: Icon(Icons.favorite_border),
                selectedIcon: Icon(Icons.favorite),
                label: 'Wishlist',
              ),
              NavigationDestination(
                icon: Badge(
                  isLabelVisible: store.cartCount > 0,
                  label: Text('${store.cartCount}'),
                  child: const Icon(Icons.shopping_bag_outlined),
                ),
                selectedIcon: Badge(
                  isLabelVisible: store.cartCount > 0,
                  label: Text('${store.cartCount}'),
                  child: const Icon(Icons.shopping_bag),
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
// HOME CONTENT
// ============================================================

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                18,
                18,
                18,
                10,
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: BrandLogo(),
                  ),
                  IconButton(
                    onPressed: () {
                      showSearch(
                        context: context,
                        delegate: ProductSearchDelegate(),
                      );
                    },
                    icon: const Icon(Icons.search),
                  ),
                ],
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(18),
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF132238),
                    Color(0xFF321A46),
                  ],
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    Text(
                      'NEW COLLECTION',
                      style: TextStyle(
                        fontSize: 12,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Style that\\nfeels cool.',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Shop fashion • COD Available',
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                18,
                5,
                18,
                12,
              ),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: SizedBox(
              height: 125,
              child: ListView.builder(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14),
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];

                  return GestureDetector(
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
                    child: Container(
                      width: 105,
                      margin:
                          const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              categoryImages[category]!,
                              width: 72,
                              height: 72,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(height: 7),
                          Text(
                            category,
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow:
                                TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                18,
                18,
                18,
                12,
              ),
              child: Text(
                'All Products',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),

          SliverPadding(
            padding:
                const EdgeInsets.symmetric(horizontal: 14),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ProductCard(
                    product: products[index],
                  );
                },
                childCount: products.length,
              ),
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: .68,
              ),
            ),
          ),

          const SliverToBoxAdapter(
            child: SizedBox(height: 25),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// PRODUCT CARD
// ============================================================

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) =>
                ProductDetailsPage(product: product),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF15191F),
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: const Color(0xFF292F37),
          ),
        ),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [

            Expanded(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(
                      top: Radius.circular(18),
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        product.image,
                        fit: BoxFit.cover,
                        errorBuilder:
                            (context, error, stack) {
                          return const Center(
                            child: Icon(
                              Icons.image_not_supported,
                              size: 45,
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  Positioned(
                    top: 8,
                    right: 8,
                    child: HeartButton(
                      product: product,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.fromLTRB(
                11,
                9,
                11,
                10,
              ),
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
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    product.price,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
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

// ============================================================
// HEART BUTTON
// ============================================================

class HeartButton extends StatelessWidget {
  final Product product;

  const HeartButton({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: store,
      builder: (context, child) {
        final selected =
            store.isWishlisted(product);

        return Material(
          color: Colors.white.withOpacity(.92),
          shape: const CircleBorder(),
          child: InkWell(
            customBorder:
                const CircleBorder(),
            onTap: () {
              store.toggleWishlist(product);
            },
            child: Padding(
              padding:
                  const EdgeInsets.all(8),
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
// PRODUCT DETAILS
// ============================================================

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

  int quantity = 1;
  String? selectedColor;
  String? selectedSize;

  @override
  void initState() {
    super.initState();

    selectedColor =
        widget.product.colors.first;

    selectedSize =
        widget.product.sizes.first;
  }

  @override
  Widget build(BuildContext context) {
    final product = widget.product;

    return Scaffold(
      appBar: AppBar(
        title: const BrandLogo(
          size: 25,
        ),
        actions: [
          HeartButton(product: product),
          const SizedBox(width: 8),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: 420,
              width: double.infinity,
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,
                errorBuilder:
                    (context, error, stack) {
                  return const Center(
                    child: Icon(
                      Icons.image_not_supported,
                      size: 60,
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding:
                  const EdgeInsets.all(18),
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
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'Colour',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Wrap(
                    spacing: 8,
                    children:
                        product.colors.map(
                      (color) {
                        return ChoiceChip(
                          label: Text(color),
                          selected:
                              selectedColor == color,
                          onSelected: (_) {
                            setState(() {
                              selectedColor =
                                  color;
                            });
                          },
                        );
                      },
                    ).toList(),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'Size',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Wrap(
                    spacing: 8,
                    children:
                        product.sizes.map(
                      (size) {
                        return ChoiceChip(
                          label: Text(size),
                          selected:
                              selectedSize == size,
                          onSelected: (_) {
                            setState(() {
                              selectedSize =
                                  size;
                            });
                          },
                        );
                      },
                    ).toList(),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'Quantity',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Row(
                    children: [
                      SmallQtyButton(
                        icon: Icons.remove,
                        onTap: () {
                          if (quantity > 1) {
                            setState(() {
                              quantity--;
                            });
                          }
                        },
                      ),

                      Padding(
                        padding:
                            const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Text(
                          '$quantity',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),
                      ),

                      SmallQtyButton(
                        icon: Icons.add,
                        onTap: () {
                          setState(() {
                            quantity++;
                          });
                        },
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  Row(
                    children: [

                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            store.addToCart(
                              product,
                              selectedColor!,
                              selectedSize!,
                              quantity,
                            );

                            ScaffoldMessenger.of(
                              context,
                            ).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  'Added to cart',
                                ),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.shopping_bag_outlined,
                          ),
                          label: const Text(
                            'Add to Cart',
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            orderOnWhatsApp(
                              product: product,
                              color:
                                  selectedColor!,
                              size:
                                  selectedSize!,
                              quantity:
                                  quantity,
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

                  const SizedBox(height: 20),

                  const BenefitsRow(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ============================================================
// CATEGORIES
// ============================================================

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding:
            const EdgeInsets.all(18),
        children: [

          const Text(
            'Categories',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),

          const SizedBox(height: 18),

          ...categories.map(
            (category) {
              final count = products
                  .where(
                    (p) =>
                        p.category ==
                        category,
                  )
                  .length;

              return Container(
                margin:
                    const EdgeInsets.only(
                  bottom: 12,
                ),
                child: ListTile(
                  contentPadding:
                      const EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(18),
                    side: const BorderSide(
                      color: Color(0xFF292F37),
                    ),
                  ),
                  leading: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(12),
                    child: Image.asset(
                      categoryImages[category]!,
                      width: 65,
                      height: 65,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    category,
                    style: const TextStyle(
                      fontWeight:
                          FontWeight.bold,
                    ),
                  ),
                  subtitle:
                      Text('$count Products'),
                  trailing:
                      const Icon(
                    Icons.chevron_right,
                  ),
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
                ),
              );
            },
          ),
        ],
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

    final filtered = products
        .where(
          (product) =>
              product.category == category,
        )
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: GridView.builder(
        padding:
            const EdgeInsets.all(14),
        itemCount: filtered.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: .68,
        ),
        itemBuilder: (context, index) {
          return ProductCard(
            product: filtered[index],
          );
        },
      ),
    );
  }
}

// ============================================================
// WISHLIST
// ============================================================

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: store,
      builder: (context, child) {

        if (store.wishlist.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite_border,
                  size: 70,
                ),
                SizedBox(height: 12),
                Text(
                  'Your Wishlist is empty',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),
              ],
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
            childAspectRatio: .68,
          ),
          itemBuilder: (context, index) {
            return ProductCard(
              product:
                  store.wishlist[index],
            );
          },
        );
      },
    );
  }
}

// ============================================================
// CART
// ============================================================

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: store,
      builder: (context, child) {

        if (store.cart.isEmpty) {
          return const Center(
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.shopping_bag_outlined,
                  size: 70,
                ),
                SizedBox(height: 12),
                Text(
                  'Your Cart is empty',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight:
                        FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        }

        return SafeArea(
          child: Column(
            children: [

              const Padding(
                padding: EdgeInsets.all(18),
                child: Align(
                  alignment:
                      Alignment.centerLeft,
                  child: Text(
                    'Your Cart',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight:
                          FontWeight.w900,
                    ),
                  ),
                ),
              ),

              Expanded(
                child: ListView.separated(
                  padding:
                      const EdgeInsets.symmetric(
                    horizontal: 14,
                  ),
                  itemCount:
                      store.cart.length,
                  separatorBuilder:
                      (_, __) =>
                          const SizedBox(height: 10),
                  itemBuilder:
                      (context, index) {
                    return CartTile(
                      item:
                          store.cart[index],
                    );
                  },
                ),
              ),

              Container(
                padding:
                    const EdgeInsets.all(18),
                decoration:
                    const BoxDecoration(
                  color: Color(0xFF15191F),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Total',
                            style: TextStyle(
                              color:
                                  Colors.white60,
                            ),
                          ),
                          Text(
                            '₹${store.cartTotal}',
                            style:
                                const TextStyle(
                              fontSize: 24,
                              fontWeight:
                                  FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),

                    ElevatedButton.icon(
                      onPressed: () {
                        sendCartWhatsApp();
                      },
                      icon: const Icon(
                        Icons.chat,
                      ),
                      label: const Text(
                        'Order on WhatsApp',
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

// ============================================================
// CART TILE
// ============================================================

class CartTile extends StatelessWidget {
  final CartItem item;

  const CartTile({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF151A20),
        borderRadius:
            BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFF2A3038),
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
                  style: const TextStyle(
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
                  style: const TextStyle(
                    color: Colors.white60,
                    fontSize: 12,
                  ),
                ),

                const SizedBox(height: 8),

                Row(
                  children: [

                    SmallQtyButton(
                      icon: Icons.remove,
                      onTap: () {
                        store.changeQuantity(
                          item,
                          -1,
                        );
                      },
                    ),

                    Padding(
                      padding:
                          const EdgeInsets.symmetric(
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

                    SmallQtyButton(
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

// ============================================================
// WHATSAPP CART ORDER
// ============================================================

Future<void> sendCartWhatsApp() async {
  StringBuffer message =
      StringBuffer();

  message.writeln(
    'Hi Wellcool 👋',
  );
  message.writeln();
  message.writeln(
    'I want to place an order:',
  );
  message.writeln();

  for (final item in store.cart) {
    message.writeln(
      '${item.product.name}',
    );
    message.writeln(
      'Price: ${item.product.price}',
    );
    message.writeln(
      'Colour: ${item.color}',
    );
    message.writeln(
      'Size: ${item.size}',
    );
    message.writeln(
      'Quantity: ${item.quantity}',
    );
    message.writeln();
  }

  message.writeln(
    'Total: ₹${store.cartTotal}',
  );

  final Uri uri = Uri.parse(
    'https://wa.me/$whatsappNumber?text=${Uri.encodeComponent(message.toString())}',
  );

  await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  );
}

// ============================================================
// SEARCH
// ============================================================

class ProductSearchDelegate
    extends SearchDelegate<Product?> {

  @override
  List<Widget>? buildActions(
      BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(
      BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(
      BuildContext context) {
    return _results();
  }

  @override
  Widget buildSuggestions(
      BuildContext context) {
    return _results();
  }

  Widget _results() {
    final result = products
        .where(
          (product) =>
              product.name
                  .toLowerCase()
                  .contains(
                    query.toLowerCase(),
                  ) ||
              product.category
                  .toLowerCase()
                  .contains(
                    query.toLowerCase(),
                  ),
        )
        .toList();

    if (result.isEmpty) {
      return const Center(
        child: Text(
          'No products found',
        ),
      );
    }

    return GridView.builder(
      padding:
          const EdgeInsets.all(14),
      itemCount: result.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: .68,
      ),
      itemBuilder: (context, index) {
        return ProductCard(
          product: result[index],
        );
      },
    );
  }
}

// ============================================================
// SMALL BUTTON
// ============================================================

class SmallQtyButton
    extends StatelessWidget {

  final IconData icon;
  final VoidCallback onTap;

  const SmallQtyButton({
    super.key,
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
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF39414B),
          ),
          borderRadius:
              BorderRadius.circular(8),
        ),
        child: Icon(
          icon,
          size: 17,
        ),
      ),
    );
  }
}

// ============================================================
// BRAND LOGO
// ============================================================

class BrandLogo
    extends StatelessWidget {

  final double size;

  const BrandLogo({
    super.key,
    this.size = 31,
  });

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
      child: Text(
        'wellcool.',
        style: TextStyle(
          fontSize: size,
          fontWeight:
              FontWeight.w900,
          color: Colors.white,
        ),
      ),
    );
  }
}

// ============================================================
// BENEFITS
// ============================================================

class BenefitsRow
    extends StatelessWidget {

  const BenefitsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [

        Expanded(
          child: Benefit(
            icon:
                Icons.local_shipping_outlined,
            text: 'COD Available',
          ),
        ),

        Expanded(
          child: Benefit(
            icon:
                Icons.inventory_2_outlined,
            text: '7-Day Return',
          ),
        ),

        Expanded(
          child: Benefit(
            icon: Icons.chat_outlined,
            text: 'WhatsApp Order',
          ),
        ),
      ],
    );
  }
}

class Benefit extends StatelessWidget {

  final IconData icon;
  final String text;

  const Benefit({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 20,
          color:
              const Color(0xFF36A8FF),
        ),
        const SizedBox(height: 5),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
