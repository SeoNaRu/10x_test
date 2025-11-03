import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../providers/inventory_provider.dart';

class BookingView extends StatelessWidget {
  const BookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('호텔 예약'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '방콕 호텔 예약 페이지',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                '이것은 더미 예약 페이지입니다.\n아래 버튼을 눌러 예약을 확정하고 [미니 툭툭] 아이템을 받으세요!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              onPressed: () {
                final inventoryProvider =
                    Provider.of<InventoryProvider>(context, listen: false);
                inventoryProvider.addItem('[미니 툭툭]');
                
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('예약이 확정되었습니다! [미니 툭툭] 아이템이 인벤토리에 추가되었습니다.'),
                    duration: Duration(seconds: 2),
                  ),
                );
                
                context.go('/');
              },
              icon: const Icon(Icons.check_circle),
              label: const Text('예약 확정'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                textStyle: const TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                context.go('/');
              },
              child: const Text('뒤로 가기'),
            ),
          ],
        ),
      ),
    );
  }
}

