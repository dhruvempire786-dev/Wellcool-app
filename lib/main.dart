import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const whatsappNumber = '918707631837';

void main() => runApp(const WellcoolApp());

class WellcoolApp extends StatelessWidget {
  const WellcoolApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'wellcool.',
    theme: ThemeData(brightness: Brightness.dark, scaffoldBackgroundColor: const Color(0xFF080A0D), useMaterial3: true),
    home: const Shell(),
  );
}

class Shell extends StatefulWidget { const Shell({super.key}); @override State<Shell> createState()=>_ShellState(); }
class _ShellState extends State<Shell> {
  int tab=0;
  final pages=const [HomePage(), CategoriesPage(), SearchPage(), WishlistPage(), CartPage()];
  @override Widget build(BuildContext context)=>Scaffold(
    body: SafeArea(child: pages[tab]),
    bottomNavigationBar: NavigationBar(
      backgroundColor: const Color(0xFF07090C), indicatorColor: const Color(0xFF102A48), selectedIndex: tab,
      onDestinationSelected:(i)=>setState(()=>tab=i),
      destinations: const [
        NavigationDestination(icon:Icon(Icons.home_outlined),selectedIcon:Icon(Icons.home),label:'Home'),
        NavigationDestination(icon:Icon(Icons.grid_view_outlined),selectedIcon:Icon(Icons.grid_view),label:'Categories'),
        NavigationDestination(icon:Icon(Icons.search),label:'Search'),
        NavigationDestination(icon:Icon(Icons.favorite_border),selectedIcon:Icon(Icons.favorite),label:'Wishlist'),
        NavigationDestination(icon:Icon(Icons.shopping_cart_outlined),selectedIcon:Icon(Icons.shopping_cart),label:'Cart'),
      ],
    ),
  );
}

const cats=[
 ['Women Tops','Trendy & Comfortable','assets/images/products/p09.jpg'],
 ['Women Crop Tops','Stylish Everyday','assets/images/products/p02.jpg'],
 ['Women Sarees','Traditional & Modern','assets/images/products/p06.jpg'],
 ['Women Shoes / Sandals','Casual & Premium','assets/images/products/p15.jpg'],
 ['Men Shirts','Casual & Formal','assets/images/products/p07.jpg'],
 ['Men T-Shirts','Everyday Essentials','assets/images/products/p03.jpg'],
 ['Women Suits','Elegant & Modern','assets/images/products/p01.jpg'],
 ['Men Shoes','Comfort & Style','assets/images/products/p20.jpg'],
 ['Men Baggy Jeans','Relaxed Fit','assets/images/products/p04.jpg'],
];

const products=[
 ['Embroidered Peach Suit','₹1,499','Women Suits','assets/images/products/p01.jpg'],
 ['Sage Green Puff Sleeve Crop Top','₹799','Women Crop Tops','assets/images/products/p02.jpg'],
 ['Sky Blue Graphic T-Shirt','₹699','Men T-Shirts','assets/images/products/p03.jpg'],
 ['Classic Blue Baggy Jeans','₹1,099','Men Baggy Jeans','assets/images/products/p04.jpg'],
 ['White Wide-Leg Pants','₹999','Men Baggy Jeans','assets/images/products/p05.jpg'],
 ['Teal Designer Saree','₹1,299','Women Sarees','assets/images/products/p06.jpg'],
 ['Light Blue Casual Shirt','₹899','Men Shirts','assets/images/products/p07.jpg'],
 ['Black Graphic Crop Top','₹699','Women Crop Tops','assets/images/products/p08.jpg'],
 ['Yellow Puff Sleeve Top','₹749','Women Tops','assets/images/products/p09.jpg'],
 ['Dusty Pink Casual Shirt','₹899','Men Shirts','assets/images/products/p10.jpg'],
 ['Olive Floral Crop Top','₹799','Women Crop Tops','assets/images/products/p11.jpg'],
 ['Wine Border Saree','₹1,199','Women Sarees','assets/images/products/p12.jpg'],
 ['Royal Blue Suit Set','₹1,399','Women Suits','assets/images/products/p13.jpg'],
 ['White Black Stripe T-Shirt','₹699','Men T-Shirts','assets/images/products/p14.jpg'],
 ['Black Chunky Sneakers','₹1,199','Women Shoes / Sandals','assets/images/products/p15.jpg'],
 ['White Casual Sneakers','₹999','Women Shoes / Sandals','assets/images/products/p16.jpg'],
 ['White Navy Sneakers','₹1,099','Women Shoes / Sandals','assets/images/products/p17.jpg'],
 ['Boston Oversized T-Shirt','₹749','Men T-Shirts','assets/images/products/p18.jpg'],
 ['Washed Black Baggy Jeans','₹1,099','Men Baggy Jeans','assets/images/products/p19.jpg'],
 ['White Grey High-Top Sneakers','₹1,299','Men Shoes','assets/images/products/p20.jpg'],
 ['White Navy Running Sneakers','₹1,199','Women Shoes / Sandals','assets/images/products/p21.jpg'],
 ['Cream Graphic T-Shirt','₹749','Men T-Shirts','assets/images/products/p22.jpg'],
 ['Blue Printed Suit Set','₹1,399','Women Suits','assets/images/products/p23.jpg'],
 ['Pink Casual Embroidered Top','₹799','Women Tops','assets/images/products/p24.jpg'],
 ['Grey Orange Sport Sneakers','₹1,299','Men Shoes','assets/images/products/p25.jpg'],
 ['Black Casual Shirt','₹899','Men Shirts','assets/images/products/p26.jpg'],
 ['Light Blue Loose Baggy Jeans','₹1,099','Men Baggy Jeans','assets/images/products/p27.jpg'],
 ['White Floral Puff Sleeve Top','₹799','Women Tops','assets/images/products/p28.jpg'],
 ['Maroon Casual Shirt','₹899','Men Shirts','assets/images/products/p29.jpg'],
];

const best=[
 ['Embroidered Peach Suit','₹1,499','assets/images/products/p01.jpg'],
 ['Sage Green Crop Top','₹799','assets/images/products/p02.jpg'],
 ['Sky Blue T-Shirt','₹699','assets/images/products/p03.jpg'],
 ['Classic Blue Baggy Jeans','₹1,099','assets/images/products/p04.jpg'],
];

Future<void> order(String product) async {
  final u=Uri.parse('https://wa.me/$whatsappNumber?text=${Uri.encodeComponent('Hi Wellcool, I want to order $product.')}');
  await launchUrl(u, mode: LaunchMode.externalApplication);
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override Widget build(BuildContext context)=>CustomScrollView(slivers:[
    SliverToBoxAdapter(child: Padding(padding:const EdgeInsets.fromLTRB(18,12,18,8),child:Row(children:[
      const Icon(Icons.menu,size:31),const SizedBox(width:14),
      const ShaderMask(shaderCallback:(r)=>const LinearGradient(colors:[Color(0xFF00B7FF),Color(0xFF8B5CFF),Color(0xFFFF38D1)]).createShader(r),child:Text('wellcool.',style:TextStyle(fontSize:31,fontWeight:FontWeight.w900,color:Colors.white))),
      const Spacer(),IconButton(onPressed:(){},icon:const Icon(Icons.favorite_border,size:30)),IconButton(onPressed:(){},icon:const Icon(Icons.shopping_cart_outlined,size:30)),
    ]))),
    SliverToBoxAdapter(child: Padding(padding:const EdgeInsets.symmetric(horizontal:18,vertical:6),child:Container(height:52,decoration:BoxDecoration(color:const Color(0xFF1A1E24),borderRadius:BorderRadius.circular(28),border:Border.all(color:const Color(0xFF303640))),child:const Row(children:[SizedBox(width:17),Icon(Icons.search,size:28),SizedBox(width:12),Expanded(child:Text('Search for products, brands & more',style:TextStyle(color:Colors.white70,fontSize:16))),Icon(Icons.mic_none,size:24),SizedBox(width:14)]))))),
    SliverToBoxAdapter(child:Padding(padding:const EdgeInsets.fromLTRB(18,10,18,10),child:Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children:const[_Benefit(Icons.local_shipping_outlined,'COD Available'),_Benefit(Icons.inventory_2_outlined,'7-Day Return / Exchange'),_Benefit(Icons.chat_outlined,'Order on WhatsApp')]))),
    SliverToBoxAdapter(child:Padding(padding:const EdgeInsets.symmetric(horizontal:18),child:ClipRRect(borderRadius:BorderRadius.circular(22),child:Image.asset('assets/images/hero.png',height:400,width:double.infinity,fit:BoxFit.cover)))),
    SliverToBoxAdapter(child:SizedBox(height:125,child:ListView(scrollDirection:Axis.horizontal,padding:const EdgeInsets.fromLTRB(18,14,18,8),children:const[
      _Circle('assets/images/cat_women_tops.png','Women Tops'),_Circle('assets/images/cat_crop_tops.png','Crop Tops'),_Circle('assets/images/cat_sarees.png','Sarees'),_Circle('assets/images/cat_women_shoes.png','Women Shoes'),_Circle('assets/images/cat_suits.png','Suits'),_Circle('assets/images/cat_men_shirts.png','Men Shirts'),_Circle('assets/images/icon_men_tshirt.png','Men T-Shirts'),_Circle('assets/images/best_3.png','Baggy Jeans')]))),
    SliverToBoxAdapter(child:Padding(padding:const EdgeInsets.fromLTRB(18,8,18,12),child:Row(children:[const Text('Shop by category',style:TextStyle(fontSize:25,fontWeight:FontWeight.w900)),const Spacer(),Text('View all →',style:TextStyle(color:Color(0xFF3D9BFF),fontSize:16,fontWeight:FontWeight.bold))]))),
    SliverPadding(padding:const EdgeInsets.fromLTRB(18,0,18,18),sliver:SliverGrid(delegate:SliverChildBuilderDelegate((c,i)=>_CatCard(cats[i]),childCount:cats.length),gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,crossAxisSpacing:12,mainAxisSpacing:12,childAspectRatio:2.15))),
    SliverToBoxAdapter(child:Padding(padding:const EdgeInsets.fromLTRB(18,0,18,18),child:ClipRRect(borderRadius:BorderRadius.circular(20),child:Image.asset('assets/images/new_arrivals.png',height:165,width:double.infinity,fit:BoxFit.cover)))),
    SliverToBoxAdapter(child:Padding(padding:const EdgeInsets.fromLTRB(18,0,18,12),child:Row(children:[const Text('Best Selling',style:TextStyle(fontSize:25,fontWeight:FontWeight.w900)),const Spacer(),Text('See all →',style:TextStyle(color:Color(0xFF3D9BFF),fontWeight:FontWeight.bold))]))),
    SliverToBoxAdapter(child:SizedBox(height:260,child:ListView.builder(scrollDirection:Axis.horizontal,padding:const EdgeInsets.symmetric(horizontal:18),itemCount:best.length,itemBuilder:(c,i)=>_Product(best[i])))),
    const SliverToBoxAdapter(child:SizedBox(height:18)),
  ]);
}

class CategoriesPage extends StatelessWidget { const CategoriesPage({super.key}); @override Widget build(BuildContext c)=>Scaffold(body:CustomScrollView(slivers:[const SliverToBoxAdapter(child:_PageTitle('Categories')),SliverPadding(padding:const EdgeInsets.all(18),sliver:SliverGrid(delegate:SliverChildBuilderDelegate((ctx,i)=>GestureDetector(onTap:()=>Navigator.push(ctx,MaterialPageRoute(builder:(_)=>CategoryProductsPage(category:cats[i][0]))),child:_CatCard(cats[i])),childCount:cats.length),gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,crossAxisSpacing:12,mainAxisSpacing:12,childAspectRatio:1.7))) ])); }
class SearchPage extends StatelessWidget { const SearchPage({super.key}); @override Widget build(BuildContext c)=>Scaffold(body:Padding(padding:const EdgeInsets.all(18),child:Column(children:[const _PageTitle('Search'),const SizedBox(height:12),TextField(decoration:InputDecoration(prefixIcon:const Icon(Icons.search),hintText:'Search fashion...',filled:true,fillColor:Color(0xFF191D22),border:OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(18)),borderSide:BorderSide.none))),const SizedBox(height:20),const Text('Try: shirts, sarees, shoes, baggy jeans',style:TextStyle(color:Colors.white60))]))); }
class WishlistPage extends StatelessWidget { const WishlistPage({super.key}); @override Widget build(BuildContext c)=>const Scaffold(body:Center(child:Text('Wishlist\nSave your favourite styles here',textAlign:TextAlign.center,style:TextStyle(fontSize:22,fontWeight:FontWeight.bold)))); }
class CartPage extends StatelessWidget { const CartPage({super.key}); @override Widget build(BuildContext c)=>const Scaffold(body:Center(child:Text('Your Cart is empty\nAdd products from Best Selling',textAlign:TextAlign.center,style:TextStyle(fontSize:22,fontWeight:FontWeight.bold)))); }

class CategoryProductsPage extends StatelessWidget {
  final String category;
  const CategoryProductsPage({super.key,required this.category});
  @override Widget build(BuildContext c){
    final items=products.where((p)=>p[2]==category).toList();
    return Scaffold(appBar:AppBar(title:Text(category)),body:GridView.builder(padding:const EdgeInsets.all(14),itemCount:items.length,gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,crossAxisSpacing:12,mainAxisSpacing:12,childAspectRatio:.68),itemBuilder:(c,i)=>_ProductGrid(items[i])));
  }
}

class _ProductGrid extends StatelessWidget {
  final List<String> d; const _ProductGrid(this.d);
  @override Widget build(BuildContext c)=>Container(decoration:BoxDecoration(color:Colors.white,borderRadius:BorderRadius.circular(16)),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[
    Expanded(child:Stack(children:[ClipRRect(borderRadius:const BorderRadius.vertical(top:Radius.circular(16)),child:Image.asset(d[3],width:double.infinity,height:210,fit:BoxFit.cover)),Positioned(right:7,top:7,child:CircleAvatar(radius:17,backgroundColor:Colors.white70,child:const Icon(Icons.favorite_border,color:Colors.black,size:20)))])),
    Padding(padding:const EdgeInsets.fromLTRB(10,7,10,0),child:Text(d[0],style:const TextStyle(color:Colors.black,fontWeight:FontWeight.bold,fontSize:12),maxLines:2,overflow:TextOverflow.ellipsis)),
    Padding(padding:const EdgeInsets.fromLTRB(10,3,10,0),child:Text(d[1],style:const TextStyle(color:Colors.black,fontWeight:FontWeight.w800,fontSize:13))),
    Padding(padding:const EdgeInsets.all(8),child:FilledButton(onPressed:()=>order(d[0]),style:FilledButton.styleFrom(backgroundColor:Colors.black,minimumSize:const Size.fromHeight(32),padding:const EdgeInsets.symmetric(horizontal:8)),child:const Text('Order on WhatsApp',style:TextStyle(fontSize:11))))
  ]));
}

class _PageTitle extends StatelessWidget { final String t; const _PageTitle(this.t); @override Widget build(BuildContext c)=>Padding(padding:const EdgeInsets.fromLTRB(18,20,18,0),child:Text(t,style:const TextStyle(fontSize:30,fontWeight:FontWeight.w900))); }
class _Benefit extends StatelessWidget { final IconData i; final String t; const _Benefit(this.i,this.t); @override Widget build(BuildContext c)=>Flexible(child:Row(mainAxisSize:MainAxisSize.min,children:[Icon(i,size:18,color:const Color(0xFF36A8FF)),const SizedBox(width:5),Flexible(child:Text(t,style:const TextStyle(fontSize:10),overflow:TextOverflow.ellipsis))])); }
class _Circle extends StatelessWidget { final String img,t; const _Circle(this.img,this.t); @override Widget build(BuildContext c)=>SizedBox(width:112,child:Column(children:[Container(width:70,height:70,decoration:BoxDecoration(shape:BoxShape.circle,border:Border.all(color:const Color(0xFF303640),width:2)),child:ClipOval(child:Image.asset(img,fit:BoxFit.cover))),const SizedBox(height:6),Text(t,textAlign:TextAlign.center,style:const TextStyle(fontSize:11),maxLines:2)])); }
class _CatCard extends StatelessWidget { final List<String> d; const _CatCard(this.d); @override Widget build(BuildContext c)=>Container(padding:const EdgeInsets.all(10),decoration:BoxDecoration(color:const Color(0xFF191D22),borderRadius:BorderRadius.circular(16),border:Border.all(color:const Color(0xFF2B3038))),child:Row(children:[SizedBox(width:62,height:62,child:Image.asset(d[2],fit:BoxFit.contain)),const SizedBox(width:8),Expanded(child:Column(mainAxisAlignment:MainAxisAlignment.center,crossAxisAlignment:CrossAxisAlignment.start,children:[Text(d[0],style:const TextStyle(fontWeight:FontWeight.bold,fontSize:12),maxLines:2),const SizedBox(height:3),Text(d[1],style:const TextStyle(color:Colors.white54,fontSize:10),maxLines:2)])),const Icon(Icons.chevron_right,color:Colors.white60)])); }
class _Product extends StatelessWidget { final List<String> d; const _Product(this.d); @override Widget build(BuildContext c)=>Container(width:178,margin:const EdgeInsets.only(right:12),decoration:BoxDecoration(color:Colors.white,borderRadius:BorderRadius.circular(16)),child:Column(crossAxisAlignment:CrossAxisAlignment.start,children:[Expanded(child:Stack(children:[ClipRRect(borderRadius:const BorderRadius.vertical(top:Radius.circular(16)),child:Image.asset(d[2],width:178,height:190,fit:BoxFit.cover)),Positioned(right:8,top:8,child:CircleAvatar(backgroundColor:Colors.white70,child:const Icon(Icons.favorite_border,color:Colors.black)))])),Padding(padding:const EdgeInsets.fromLTRB(12,8,12,0),child:Text(d[0],style:const TextStyle(color:Colors.black,fontWeight:FontWeight.bold))),Padding(padding:const EdgeInsets.fromLTRB(12,3,12,0),child:Text(d[1],style:const TextStyle(color:Colors.black,fontWeight:FontWeight.w800))),Padding(padding:const EdgeInsets.all(10),child:FilledButton(onPressed:()=>order(d[0]),style:FilledButton.styleFrom(backgroundColor:Colors.black,minimumSize:const Size.fromHeight(34)),child:const Text('Order on WhatsApp')))])); }
