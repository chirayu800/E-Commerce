// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:e_commerce/features/cart/presentation/view_model/cart_view_model.dart';
// import 'package:e_commerce/features/products/presentation/view_model/product_view_model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class ProductDetailView extends ConsumerStatefulWidget {
//   final String id;
//   const ProductDetailView({super.key, required this.id});

//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() =>
//       _ProductDetailViewState();
// }

// class _ProductDetailViewState extends ConsumerState<ProductDetailView> {
//   int quantity = 1;
//   bool isInCart = false;

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) async {
//       await ref
//           .read(productViewModelProvider.notifier)
//           .fetchProductByID(id: widget.id);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final productState = ref.watch(productViewModelProvider);
//     final cartVM = ref.read(cartViewModelProvider.notifier);

//     final product = productState.singleProduct;

//     return Scaffold(
//       appBar: AppBar(title: const Text("Product Detail")),
//       body: productState.isLoading
//           ? const Center(child: CircularProgressIndicator())
//           : product == null
//               ? const Center(child: Text("Product not found"))
//               : SingleChildScrollView(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       /// 📸 Image Carousel
//                       if (product.image != null && product.image!.isNotEmpty)
//                         CarouselSlider(
//                           options: CarouselOptions(
//                             height: 300,
//                             viewportFraction: 1.0,
//                             autoPlay: true,
//                           ),
//                           items: product.image!.map((img) {
//                             return Container(
//                               width: double.infinity,
//                               decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                   image: NetworkImage(img),
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             );
//                           }).toList(),
//                         ),
//                       const SizedBox(height: 16),

//                       /// 📝 Name and Price
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 16),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               product.name ?? "",
//                               style: const TextStyle(
//                                 fontSize: 22,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             const SizedBox(height: 8),
//                             Text(
//                               "Rs. ${product.price}",
//                               style: const TextStyle(
//                                 fontSize: 20,
//                                 color: Colors.green,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                             const SizedBox(height: 16),

//                             /// 📂 Category and Subcategory
//                             Row(
//                               children: [
//                                 Chip(
//                                   label: Text(product.category ?? ""),
//                                   backgroundColor: Colors.blue.shade50,
//                                 ),
//                                 const SizedBox(width: 8),
//                                 Chip(
//                                   label: Text(product.subCategory ?? ""),
//                                   backgroundColor: Colors.orange.shade50,
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(height: 16),

//                             /// 📐 Sizes
//                             if (product.sizes != null &&
//                                 product.sizes!.isNotEmpty)
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   const Text(
//                                     "Available Sizes:",
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                   const SizedBox(height: 8),
//                                   Wrap(
//                                     spacing: 8,
//                                     children: product.sizes!
//                                         .map((size) => Chip(label: Text(size)))
//                                         .toList(),
//                                   ),
//                                   const SizedBox(height: 16),
//                                 ],
//                               ),

//                             /// 📄 Description
//                             const Text(
//                               "Description",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                             const SizedBox(height: 8),
//                             Text(
//                               product.description ?? "No description provided.",
//                               style: const TextStyle(fontSize: 14, height: 1.5),
//                             ),
//                           ],
//                         ),
//                       ),

//                       const SizedBox(height: 24),

//                       /// 🔢 Quantity selector
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 16),
//                         child: Row(
//                           children: [
//                             const Text(
//                               "Quantity:",
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             const SizedBox(width: 12),
//                             Row(
//                               children: [
//                                 IconButton(
//                                   onPressed: () {
//                                     if (quantity > 1) {
//                                       setState(() => quantity--);
//                                     }
//                                   },
//                                   icon: const Icon(Icons.remove),
//                                 ),
//                                 Text(quantity.toString(),
//                                     style: const TextStyle(fontSize: 16)),
//                                 IconButton(
//                                   onPressed: () {
//                                     setState(() => quantity++);
//                                   },
//                                   icon: const Icon(Icons.add),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),

//                       const SizedBox(height: 20),

//                       /// 🛒 Add to Cart Button
//                       Padding(
//                         padding: const EdgeInsets.all(16.0),
//                         child: SizedBox(
//                           width: double.infinity,
//                           child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor:
//                                   isInCart ? Colors.grey : Colors.deepOrange,
//                             ),
//                             onPressed: isInCart
//                                 ? null
//                                 : () async {
//                                     await cartVM.addToCart(
//                                         productId: product.id!,
//                                         quantity: quantity,
//                                         context: context);

//                                     final error =
//                                         ref.read(cartViewModelProvider).error;
//                                     if (error != null) {
//                                       ScaffoldMessenger.of(context)
//                                           .showSnackBar(
//                                         SnackBar(
//                                             content: Text("Error: $error")),
//                                       );
//                                     } else {
//                                       setState(() {
//                                         isInCart = true;
//                                       });
//                                     }
//                                   },
//                             child: Text(
//                               isInCart ? "In Cart" : "Add to Cart",
//                               style: const TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//     );
//   }
// }
