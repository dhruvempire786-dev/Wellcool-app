import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const whatsappNumber = '918707631837';

void main() => runApp(const WellcoolApp());

class Product {
  final String name, price, category, image;
  final List<String> colors;

  const Product(
    this.name,
    this.price,
    this.category,
    this.image, {
    this.colors = const ['Black', 'White', 'Blue'],
  });
}

const products = <Product>[
  Product('Embroidered Peach Suit','₹1,499','Women Suits','assets/images/products/p01.jpg',colors:['Peach','Pink','White']),
  Product('Sage Green Puff Sleeve Crop Top','₹799','Women Crop Tops','assets/images/products/p02.jpg',colors:['Sage Green','Black','White']),
  Product('Sky Blue Graphic T-Shirt','₹699','Men T-Shirts','assets/images/products/p03.jpg',colors:['Sky Blue','Black','White']),
  Product('Classic Blue Baggy Jeans','₹1,099','Men Baggy Jeans','assets/images/products/p04.jpg',colors:['Blue','Black','Grey']),
  Product('White Wide-Leg Pants','₹999','Men Baggy Jeans','assets/images/products/p05.jpg',colors:['White','Black','Beige']),
  Product('Teal Designer Saree','₹1,299','Women Sarees','assets/images/products/p06.jpg',colors:['Teal','Wine','Black']),
  Product('Light Blue Casual Shirt','₹899','Men Shirts','assets/images/products/p07.jpg',colors:['Light Blue','White','Black']),
  Product('Black Graphic Crop Top','₹699','Women Crop Tops','assets/images/products/p08.jpg',colors:['Black','White','Pink']),
  Product('Yellow Puff Sleeve Top','₹749','Women Tops','assets/images/products/p09.jpg',colors:['Yellow','White','Pink']),
  Product('Dusty Pink Casual Shirt','₹899','Men Shirts','assets/images/products/p10.jpg',colors:['Dusty Pink','White','Black']),
  Product('Olive Floral Crop Top','₹799','Women Crop Tops','assets/images/products/p11.jpg',colors:['Olive','Black','White']),
  Product('Wine Border Saree','₹1,199','Women Sarees','assets/images/products/p12.jpg',colors:['Wine','Red','Black']),
  Product('Royal Blue Suit Set','₹1,399','Women Suits','assets/images/products/p13.jpg',colors:['Royal Blue','Pink','Black']),
  Product('White Black Stripe T-Shirt','₹699','Men T-Shirts','assets/images/products/p14.jpg',colors:['White','Black','Grey']),
  Product('Black Chunky Sneakers','₹1,199','Women Shoes / Sandals','assets/images/products/p15.jpg',colors:['Black','White','Beige']),
  Product('White Casual Sneakers','₹999','Women Shoes / Sandals','assets/images/products/p16.jpg',colors:['White','Black','Pink']),
  Product('White Navy Sneakers','₹1,099','Women Shoes / Sandals','assets/images/products/p17.jpg',colors:['White','Navy','Black']),
  Product('Boston Oversized T-Shirt','₹749','Men T-Shirts','assets/images/products/p18.jpg',colors:['Black','White','Grey']),
  Product('Washed Black Baggy Jeans','₹1,099','Men Baggy Jeans','assets/images/products/p19.jpg',colors:['Washed Black','Blue','Grey']),
  Product('White Grey High-Top Sneakers','₹1,299','Men Shoes','assets/images/products/p20.jpg',colors:['White','Grey','Black']),
  Product('White Navy Running Sneakers','₹1,199','Women Shoes / Sandals','assets/images/products/p21.jpg',colors:['White','Navy','Pink']),
  Product('Cream Graphic T-Shirt','₹749','Men T-Shirts','assets/images/products/p22.jpg',colors:['Cream','Black','White']),
  Product('Blue Printed Suit Set','₹1,399','Women Suits','assets/images/products/p23.jpg',colors:['Blue','Pink','Black']),
  Product('Pink Casual Embroidered Top','₹799','Women Tops','assets/images/products/p24.jpg',colors:['Pink','White','Black']),
  Product('Grey Orange Sport Sneakers','₹1,299','Men Shoes','assets/images/products/p25.jpg',colors:['Grey','Orange','Black']),
  Product('Black Casual Shirt','₹899','Men Shirts','assets/images/products/p26.jpg',colors:['Black','White','Blue']),
  Product('Light Blue Loose Baggy Jeans','₹1,099','Men Baggy Jeans','assets/images/products/p27.jpg',colors:['Light Blue','Blue','Black']),
  Product('White Floral Puff Sleeve Top','₹799','Women Tops','assets/images/products/p28.jpg',colors:['White','Pink','Yellow']),
  Product('Maroon Casual Shirt','₹899','Men Shirts','assets/images/products/p29.jpg',colors:['Maroon','White','Black']),
];

const categories = [
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

String categoryImage(String c) {
  final p = products.firstWhere((x) => x.category == c);
  return p.image;
}

class CartItem {
  final Product product;
  final String color, size;
  int quantity;

  CartItem({
    required this.product,
    required this.color,
    required this.size,
    this.quantity = 1,
  });
}

class Store extends ChangeNotifier {
  final wishlist = <Product>[];
  final cart = <CartItem>[];

  bool liked(Product p) => wishlist.contains(p);

  void toggleLike(Product p) {
    liked(p) ? wishlist.remove(p) : wishlist.add(p);
    notifyListeners();
  }

  void add(Product p, String color, String size, int qty) {
    final found = cart.where(
      (x) => x.product == p && x.color == color && x.size == size,
    );

    if (found.isNotEmpty) {
      found.first.quantity += qty;
    } else {
      cart.add(
        CartItem(
          product: p,
          color: color,
          size: size,
          quantity: qty,
        ),
      );
    }
    notifyListeners();
  }

  void qty(CartItem item, int change) {
    item.quantity += change;
    if (item.quantity <= 0) cart.remove(item);
    notifyListeners();
  }

  void remove(CartItem item) {
    cart.remove(item);
    notifyListeners();
  }

  int get count => cart.fold(0, (a, b) => a + b.quantity);

  int price(String s) =>
      int.tryParse(s.replaceAll(RegExp(r'[^0-9]'), '')) ?? 0;

  int get total =>
      cart.fold(0, (a, b) => a + price(b.product.price) * b.quantity);
}

final store = Store();

Future<void> whatsapp({
  required String product,
  String? color,
  String? size,
  int quantity = 1,
}) async {
  String text = 'Hi Wellcool, I want to order $product.';
  if (color != null) text += '\nColour: $color';
  if (size != null) text += '\nSize: $size';
  text += '\nQuantity: $quantity';

  final uri = Uri.parse(
    'https://wa.me/$whatsappNumber?text=${Uri.encodeComponent(text)}',
  );

  await launchUrl(uri, mode: LaunchMode.externalApplication);
}

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

class Shell extends StatefulWidget {
  const Shell({super.key});

  @override
  State<Shell> createState() => _ShellState();
}

class _ShellState extends State<Shell> {
  int tab = 0;

  void drawer() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF11151A),
      isScrollControlled: true,
      builder: (ctx) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'wellcool.',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              _menu(Icons.home, 'Home', () {
                Navigator.pop(ctx);
                setState(() => tab = 0);
              }),
              _menu(Icons.grid_view, 'Categories', () {
                Navigator.pop(ctx);
                setState(() => tab = 1);
              }),
              _menu(Icons.search, 'Search', () {
                Navigator.pop(ctx);
                setState(() => tab = 2);
              }),
              _menu(Icons.favorite, 'Wishlist', () {
                Navigator.pop(ctx);
                setState(() => tab = 3);
              }),
              _menu(Icons.shopping_cart, 'Cart', () {
                Navigator.pop(ctx);
                setState(() => tab = 4);
              }),
              const Divider(),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Shop Categories',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ...categories.map(
                (c) => ListTile(
                  leading: const Icon(Icons.chevron_right),
                  title: Text(c),
                  onTap: () {
                    Navigator.pop(ctx);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CategoryPage(category: c),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _menu(IconData icon, String title, VoidCallback tap) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
      onTap: tap,
    );
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomePage(
        onMenu: drawer,
        onSearch: () => setState(() => tab = 2),
      ),
      const CategoriesPage(),
      const SearchPage(),
      const WishlistPage(),
      const CartPage(),
    ];

    return Scaffold(
      body: SafeArea(child: pages[tab]),
      bottomNavigationBar: AnimatedBuilder(
        animation: store,
        builder: (_, __) => NavigationBar(
          backgroundColor: const Color(0xFF07090C),
          indicatorColor: const Color(0xFF102A48),
          selectedIndex: tab,
          onDestinationSelected: (i) => setState(() => tab = i),
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
              icon: const Icon(Icons.favorite_border),
              selectedIcon: const Icon(Icons.favorite),
              label: 'Wishlist',
            ),
            NavigationDestination(
              icon: Badge(
                isLabelVisible: store.count > 0,
                label: Text('${store.count}'),
                child: const Icon(Icons.shopping_cart_outlined),
              ),
              selectedIcon: Badge(
                isLabelVisible: store.count > 0,
                label: Text('${store.count}'),
                child: const Icon(Icons.shopping_cart),
              ),
              label: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final VoidCallback onMenu, onSearch;

  const HomePage({
    super.key,
    required this.onMenu,
    required this.onSearch,
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
                const Brand(),
                const Spacer(),
                IconButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const WishlistPage(),
                    ),
                  ),
                  icon: const Icon(Icons.favorite_border, size: 29),
                ),
                IconButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const CartPage(),
                    ),
                  ),
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                    size: 29,
                  ),
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
                padding: const EdgeInsets.symmetric(horizontal: 17),
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1E24),
                  borderRadius: BorderRadius.circular(28),
                  border: Border.all(
                    color: const Color(0xFF303640),
                  ),
                ),
                child: const Row(
                  children: [
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
                    Icon(Icons.mic_none),
                  ],
                ),
              ),
            ),
          ),
        ),

        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.fromLTRB(18, 10, 18, 10),
            child: Row(
              children: [
                Benefit(Icons.local_shipping_outlined, 'COD Available'),
                Benefit(Icons.inventory_2_outlined, '7-Day Return'),
                Benefit(Icons.chat_outlined, 'WhatsApp Order'),
              ],
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
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
              padding: const EdgeInsets.fromLTRB(18, 14, 18, 8),
              children: const [
                CircleCat(
                  'assets/images/cat_women_tops.png',
                  'Women Tops',
                ),
                CircleCat(
                  'assets/images/cat_crop_tops.png',
                  'Crop Tops',
                ),
                CircleCat(
                  'assets/images/cat_sarees.png',
                  'Sarees',
                ),
                CircleCat(
                  'assets/images/cat_women_shoes.png',
                  'Women Shoes',
                ),
                CircleCat(
                  'assets/images/cat_suits.png',
                  'Suits',
                ),
                CircleCat(
                  'assets/images/cat_men_shirts.png',
                  'Men Shirts',
                ),
                CircleCat(
                  'assets/images/icon_men_tshirt.png',
                  'Men T-Shirts',
                ),
                CircleCat(
                  'assets/images/best_3.png',
                  'Baggy Jeans',
                ),
              ],
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: SectionTitle(
            title: 'Shop by category',
            button: 'View all →',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const CategoriesPage(),
              ),
            ),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (_, i) => CatCard(
                category: categories[i],
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        CategoryPage(category: categories[i]),
                  ),
                ),
              ),
              childCount: categories.length,
            ),
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 2.1,
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(18, 0, 18, 18),
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
          child: SectionTitle(
            title: 'Best Selling',
            button: 'See all →',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const SearchPage(showAll: true),
              ),
            ),
          ),
        ),

        SliverToBoxAdapter(
          child: SizedBox(
            height: 315,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 18),
              itemCount: 4,
              itemBuilder: (_, i) => ProductCard(
                product: products[i],
              ),
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

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: GridView.builder(
        padding: const EdgeInsets.all(18),
        itemCount: categories.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.55,
        ),
        itemBuilder: (_, i) => CatCard(
          category: categories[i],
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) =>
                  CategoryPage(category: categories[i]),
            ),
          ),
        ),
      ),
    );
  }
}

class SearchPage extends StatefulWidget {
  final bool showAll;

  const SearchPage({
    super.key,
    this.showAll = false,
  });

  @override
  State<SearchPage> createState() => _SearchPageState();
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
        ? (widget.showAll ? products : <Product>[])
        : products.where((p) {
            return p.name.toLowerCase().contains(q) ||
                p.category.toLowerCase().contains(q);
          }).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 8, 18, 12),
            child: TextField(
              controller: controller,
              autofocus: true,
              onChanged: (v) => setState(() => query = v),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                suffixIcon: query.isEmpty
                    ? null
                    : IconButton(
                        onPressed: () {
                          controller.clear();
                          setState(() => query = '');
                        },
                        icon: const Icon(Icons.clear),
                      ),
                hintText: 'Search products...',
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
                ? Center(
                    child: Text(
                      q.isEmpty
                          ? 'Search shirts, sarees, shoes,\nbaggy jeans & more'
                          : 'No products found',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white60,
                        fontSize: 17,
                      ),
                    ),
                  )
                : GridView.builder(
                    padding: const EdgeInsets.fromLTRB(
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
                    itemBuilder: (_, i) =>
                        ProductGrid(product: results[i]),
                  ),
          ),
        ],
      ),
    );
  }
}

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wishlist')),
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
            itemBuilder: (_, i) =>
                ProductGrid(product: store.wishlist[i]),
          );
        },
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
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
                child: ListView.builder(
                  padding: const EdgeInsets.all(14),
                  itemCount: store.cart.length,
                  itemBuilder: (_, i) =>
                      CartTile(item: store.cart[i]),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(18),
                decoration: const BoxDecoration(
                  color: Color(0xFF11151A),
                  border: Border(
                    top: BorderSide(color: Color(0xFF303640)),
                  ),
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
                          '₹${store.total}',
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
                      height: 48,
                      child: FilledButton.icon(
                        onPressed: () {
                          final items = store.cart.map((x) {
                            return '${x.product.name} | ${x.color} | Size ${x.size} | Qty ${x.quantity}';
                          }).join('\n');

                          whatsapp(
                            product:
                                'Cart Order\n$items\nTotal: ₹${store.total}',
                          );
                        },
                        icon: const Icon(Icons.chat),
                        label: const Text(
                          'Order Cart on WhatsApp',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class CategoryPage extends StatelessWidget {
  final String category;

  const CategoryPage({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final items =
        products.where((p) => p.category == category).toList();

    return Scaffold(
      appBar: AppBar(title: Text(category)),
      body: GridView.builder(
        padding: const EdgeInsets.all(14),
        itemCount: items.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: .62,
        ),
        itemBuilder: (_, i) =>
            ProductGrid(product: items[i]),
      ),
    );
  }
}

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
  String size = 'M';
  late String color;
  int quantity = 1;

  @override
  void initState() {
    super.initState();
    color = widget.product.colors.first;
  }

  @override
  Widget build(BuildContext context) {
    final p = widget.product;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Product'),
        actions: [
          AnimatedBuilder(
            animation: store,
            builder: (_, __) => IconButton(
              onPressed: () => store.toggleLike(p),
              icon: Icon(
                store.liked(p)
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: store.liked(p)
                    ? Colors.pinkAccent
                    : null,
              ),
            ),
          ),
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const CartPage(),
              ),
            ),
            icon: const Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              p.image,
              height: 390,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(
                18,
                18,
                18,
                0,
              ),
              child: Text(
                p.name,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(
                18,
                8,
                18,
                18,
              ),
              child: Text(
                p.price,
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),

            const Divider(),

            Option(
              title: 'Colour',
              child: Wrap(
                spacing: 8,
                children: p.colors.map((c) {
                  return ChoiceChip(
                    label: Text(c),
                    selected: color == c,
                    onSelected: (_) =>
                        setState(() => color = c),
                  );
                }).toList(),
              ),
            ),

            Option(
              title: 'Size',
              child: Wrap(
                spacing: 8,
                children: ['S', 'M', 'L', 'XL'].map((s) {
                  return ChoiceChip(
                    label: Text(s),
                    selected: size == s,
                    onSelected: (_) =>
                        setState(() => size = s),
                  );
                }).toList(),
              ),
            ),

            Option(
              title: 'Quantity',
              child: Row(
                children: [
                  RoundButton(
                    icon: Icons.remove,
                    onTap: quantity > 1
                        ? () => setState(() => quantity--)
                        : null,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      '$quantity',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  RoundButton(
                    icon: Icons.add,
                    onTap: () =>
                        setState(() => quantity++),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(
                18,
                12,
                18,
                8,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        store.add(
                          p,
                          color,
                          size,
                          quantity,
                        );
                        ScaffoldMessenger.of(context)
                            .showSnackBar(
                          const SnackBar(
                            content: Text('Added to Cart'),
                            behavior:
                                SnackBarBehavior.floating,
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                      ),
                      label: const Text('Add to Cart'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: FilledButton.icon(
                      onPressed: () => whatsapp(
                        product: p.name,
                        color: color,
                        size: size,
                        quantity: quantity,
                      ),
                      icon: const Icon(Icons.chat),
                      label: const Text('WhatsApp'),
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

class ProductGrid extends StatelessWidget {
  final Product product;

  const ProductGrid({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) =>
              ProductDetailsPage(product: product),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    right: 8,
                    top: 8,
                    child: Heart(product: product),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(
                10,
                8,
                10,
                0,
              ),
              child: Text(
                product.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
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
                  fontWeight: FontWeight.w900,
                  fontSize: 14,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                width: double.infinity,
                height: 34,
                child: FilledButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          ProductDetailsPage(product: product),
                    ),
                  ),
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(
                    'View Product',
                    style: TextStyle(fontSize: 11),
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

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      child: Padding(
        padding: const EdgeInsets.only(right: 12),
        child: ProductGrid(product: product),
      ),
    );
  }
}

class Heart extends StatelessWidget {
  final Product product;

  const Heart({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: store,
      builder: (_, __) {
        final selected = store.liked(product);

        return Material(
          color: Colors.white.withOpacity(.92),
          shape: const CircleBorder(),
          child: InkWell(
            customBorder: const CircleBorder(),
            onTap: () => store.toggleLike(product),
            child: Padding(
              padding: const EdgeInsets.all(8),
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

class CartTile extends StatelessWidget {
  final CartItem item;

  const CartTile({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFF151A20),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFF2A3038),
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
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
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(item.product.price),
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
                    SmallButton(
                      icon: Icons.remove,
                      onTap: () => store.qty(item, -1),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(
                        horizontal: 13,
                      ),
                      child: Text(
                        '${item.quantity}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SmallButton(
                      icon: Icons.add,
                      onTap: () => store.qty(item, 1),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () => store.remove(item),
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

class CatCard extends StatelessWidget {
  final String category;
  final VoidCallback onTap;

  const CatCard({
    super.key,
    required this.category,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(9),
        decoration: BoxDecoration(
          color: const Color(0xFF191D22),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: const Color(0xFF2B3038),
          ),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(11),
              child: Image.asset(
                categoryImage(category),
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
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
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

class CircleCat extends StatelessWidget {
  final String image, title;

  const CircleCat(this.image, this.title, {super.key});

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
            style: const TextStyle(fontSize: 11),
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title, button;
  final VoidCallback onTap;

  const SectionTitle({
    super.key,
    required this.title,
    required this.button,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        18,
        8,
        18,
        12,
      ),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: onTap,
            child: Text(button),
          ),
        ],
      ),
    );
  }
}

class Benefit extends StatelessWidget {
  final IconData icon;
  final String text;

  const Benefit(this.icon, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 18,
            color: const Color(0xFF36A8FF),
          ),
          const SizedBox(width: 5),
          Flexible(
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}

class Brand extends StatelessWidget {
  const Brand({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (r) => const LinearGradient(
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
    );
  }
}

class Option extends StatelessWidget {
  final String title;
  final Widget child;

  const Option({
    super.key,
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
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
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 9),
          child,
        ],
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;

  const RoundButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF1A2027),
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(icon),
        ),
      ),
    );
  }
}

class SmallButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const SmallButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFF39414B),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon, size: 16),
      ),
    );
  }
}
            




      


