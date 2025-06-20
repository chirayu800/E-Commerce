// // lib/core/widgets/dashboard_page.dart
// import 'package:flutter/material.dart';

// class DashboardPage extends StatelessWidget {
//   const DashboardPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Dashboard")),
//       body: const Center(child: Text("Welcome to the Dashboard!")),
//     );
//   }
// }

import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: [
          _DashboardCard(
            imageUrl: 'https://cdn-icons-png.flaticon.com/512/1170/1170678.png',
            label: 'Cart',
            onTap: () {
              // TODO: Navigate to Cart Screen
            },
          ),
          _DashboardCard(
            imageUrl: 'https://cdn-icons-png.flaticon.com/512/1077/1077063.png',
            label: 'Profile',
            onTap: () {
              // TODO: Navigate to Profile Screen
            },
          ),
          _DashboardCard(
            imageUrl: 'https://cdn-icons-png.flaticon.com/512/891/891462.png',
            label: 'Orders',
            onTap: () {
              // TODO: Navigate to Orders Screen
            },
          ),
          _DashboardCard(
            imageUrl: 'https://cdn-icons-png.flaticon.com/512/891/891419.png',
            label: 'Products',
            onTap: () {
              // TODO: Navigate to Products Screen
            },
          ),
        ],
      ),
    );
  }
}

class _DashboardCard extends StatelessWidget {
  final String imageUrl;
  final String label;
  final VoidCallback onTap;

  const _DashboardCard({
    required this.imageUrl,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue.shade50,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(imageUrl, height: 60, width: 60),
              const SizedBox(height: 12),
              Text(
                label,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
