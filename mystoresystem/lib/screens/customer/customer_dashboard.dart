import 'package:flutter/material.dart';
import 'transaction_history.dart';
import 'product_list.dart';
import 'package:mystoresystem/screens/customer/product_list.dart';


class CustomerDashboard extends StatelessWidget {
  const CustomerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ProductList()),
                );
              },
              icon: const Icon(Icons.shopping_cart),
              label: const Text('Lihat Produk'),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const TransactionHistory()),
                );
              },
              icon: const Icon(Icons.receipt_long),
              label: const Text('Riwayat Transaksi'),
            ),
          ],
        ),
      ),
    );
  }
}
