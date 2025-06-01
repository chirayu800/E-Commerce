// import 'package:flutter/material.dart';

// class DashboardScreen extends StatelessWidget {
//   const DashboardScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1,
//         title: Row(
//           children: [
//             Image.asset('assets/images/f.jpeg', height: 30),
//             const SizedBox(width: 8),
//             const Text(
//               'SHOPPER',
//               style: TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//               ),
//             ),
//             const Spacer(),
//             _navItem('Shop'),
//             _navItem('Men'),
//             _navItem('Women'),
//             _navItem('Kids'),
//             const SizedBox(width: 16),
//             OutlinedButton(
//               onPressed: () {

//               },
//               child: const Text("Logout"),
//             ),
//             const SizedBox(width: 8),
//             IconButton(
//               onPressed: () {

//               },
//               icon: const Icon(Icons.shopping_cart_outlined),
//               color: Colors.black,
//             ),
//           ],
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Row(
//           children: [
//             Expanded(
//               flex: 3,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     "NEW ARRIVALS ONLY",
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.black54,
//                       letterSpacing: 2,
//                     ),
//                   ),
//                   const SizedBox(height: 16),
//                   const Text.rich(
//                     TextSpan(
//                       children: [
//                         TextSpan(
//                           text: "new 👋\n",
//                           style: TextStyle(
//                             fontSize: 48,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         TextSpan(
//                           text: "collections\n",
//                           style: TextStyle(
//                             fontSize: 48,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         TextSpan(
//                           text: "for everyone",
//                           style: TextStyle(
//                             fontSize: 48,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   ElevatedButton(
//                     onPressed: () {
//                       // TODO: Navigate to collection
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.redAccent,
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 24,
//                         vertical: 14,
//                       ),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                     child: const Text(
//                       "Latest Collection ➝",
//                       style: TextStyle(fontSize: 16),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(width: 20),
//             Expanded(
//               flex: 2,
//               child: Image.asset('assets/images/f.jpeg', fit: BoxFit.contain),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _navItem(String title) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: TextButton(
//         onPressed: () {},
//         child: Text(
//           title,
//           style: const TextStyle(color: Colors.black87, fontSize: 16),
//         ),
//       ),
//     );
//   }
// }
// // import 'package:flutter/material.dart';

// // class DashboardPage extends StatefulWidget {
// //   const DashboardPage({Key? key}) : super(key: key);

// //   @override
// //   State<DashboardPage> createState() => _DashboardPageState();
// // }

// // class _DashboardPageState extends State<DashboardPage> {
// //   int _selectedIndex = 0;

// //   final List<Widget> _pages = [
// //     Center(child: Text("Home Page", style: TextStyle(fontSize: 24))),
// //     Center(child: Text("Categories", style: TextStyle(fontSize: 24))),
// //     Center(child: Text("Cart", style: TextStyle(fontSize: 24))),
// //     Center(child: Text("Account", style: TextStyle(fontSize: 24))),
// //   ];

// //   void _onItemTapped(int index) {
// //     setState(() {
// //       _selectedIndex = index;
// //     });
// //   }

// //   BottomNavigationBarItem _buildNavItem(IconData icon, String label) {
// //     return BottomNavigationBarItem(icon: Icon(icon), label: label);
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: _pages[_selectedIndex],
// //       bottomNavigationBar: BottomNavigationBar(
// //         currentIndex: _selectedIndex,
// //         onTap: _onItemTapped,
// //         selectedItemColor: Colors.red,
// //         unselectedItemColor: Colors.grey,
// //         items: [
// //           _buildNavItem(Icons.home, 'Home'),
// //           _buildNavItem(Icons.category, 'Categories'),
// //           _buildNavItem(Icons.shopping_cart, 'Cart'),
// //           _buildNavItem(Icons.person, 'Account'),
// //         ],
// //         type: BottomNavigationBarType.fixed,
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter/views/home_screen.dart';

// class DashboardScreen extends StatefulWidget {
//   const DashboardScreen({super.key});

//   @override
//   State<DashboardScreen> createState() => _DashboardScreenState();
// }

// class _DashboardScreenState extends State<DashboardScreen> {
//   int _selectedIndex = 0;

//   final List<Widget> _pages = <Widget>[
//     const Center(child: Text('Home')),
//     const Center(child: Text('Categories')),
//     const Center(child: Text('Cart')),
//     const Center(child: Text('Account')),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: _pages[_selectedIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Colors.red,
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.grid_view),
//             label: 'Categories',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Cart',
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'views/home_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    HomeScreen(), // ✅ make sure this is NOT a string or Center
    const Center(child: Text('Categories')),
    const Center(child: Text('Cart')),
    const Center(child: Text('Account')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
