// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // 🔍 Search Bar
//             Padding(
//               padding: const EdgeInsets.all(12),
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: "Search anything...",
//                   prefixIcon: const Icon(Icons.search),
//                   filled: true,
//                   fillColor: Colors.grey.shade200,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//               ),
//             ),

//             // 📦 Categories
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 12),
//               child: Wrap(
//                 spacing: 10,
//                 runSpacing: 10,
//                 children: [
//                   _buildCategory("Women Dress"),
//                   _buildCategory("Girls Dresses"),
//                   _buildCategory("Boys Glasses"),
//                   _buildCategory("Mobile Phone"),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 20),

//             // 🌟 Featured Products
//             Container(
//               color: Colors.orange,
//               padding: const EdgeInsets.all(10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     "Featured Product",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   SizedBox(
//                     height: 200,
//                     child: ListView.builder(
//                       scrollDirection: Axis.horizontal,
//                       itemCount: 4,
//                       itemBuilder: (context, index) {
//                         return _buildFeaturedProductCard();
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 20),

//             // 📢 Banner (Updated to load from internet)
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 12),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(12),
//                 child: Image.network(
//                   'https://images.unsplash.com/photo-1517336714731-489689fd1ca8', // laptop image from Unsplash
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),

//             const SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildCategory(String title) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         border: Border.all(color: Colors.grey.shade300),
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
//     );
//   }

//   Widget _buildFeaturedProductCard() {
//     return Container(
//       width: 140,
//       margin: const EdgeInsets.only(right: 10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: const [
//           BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
//         ],
//       ),
//       child: Column(
//         children: [
//           Image.network(
//             'https://images.unsplash.com/photo-1517336714731-489689fd1ca8', // same image
//             height: 100,
//             fit: BoxFit.cover,
//           ),
//           const SizedBox(height: 5),
//           const Text("Laptop 4GB/64GB"),
//           const Text(
//             "\$600",
//             style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔍 Search Bar
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search anything...",
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            // 📦 Categories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _buildCategory("Women Dress"),
                  _buildCategory("Girls Dresses"),
                  _buildCategory("Boys Glasses"),
                  _buildCategory("Mobile Phone"),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // 🌟 Featured Products
            Container(
              color: Colors.orange,
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Featured Product",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildFeaturedProductCard(
                          imageUrl:
                              'https://images.unsplash.com/photo-1517336714731-489689fd1ca8',
                          title: "Laptop 4GB/64GB",
                          price: "\$600",
                        ),
                        _buildFeaturedProductCard(
                          imageUrl:
                              'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9',
                          title: "Smartphone 8GB RAM",
                          price: "\$499",
                        ),
                        _buildFeaturedProductCard(
                          imageUrl:
                              'https://images.unsplash.com/photo-1516321497487-e288fb19713f',
                          title: "Headphones Noise Cancelling",
                          price: "\$120",
                        ),
                        _buildFeaturedProductCard(
                          imageUrl:
                              'https://images.unsplash.com/photo-1512820790803-83ca734da794',
                          title: "MacBook Pro 256GB",
                          price: "\$1299",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // 📢 Banner
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://images.unsplash.com/photo-1517336714731-489689fd1ca8',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
    );
  }

  Widget _buildFeaturedProductCard({
    required String imageUrl,
    required String title,
    required String price,
  }) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          Image.network(imageUrl, height: 100, fit: BoxFit.cover),
          const SizedBox(height: 5),
          Text(title, textAlign: TextAlign.center),
          Text(
            price,
            style: const TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
