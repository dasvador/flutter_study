import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '스마 식품',
      home: Step2Screen(),
    );
  }
}

class Step2Screen extends StatelessWidget {
  const Step2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Top Navigation
            Container(
              height: 58,
              padding: const EdgeInsets.only(top: 21),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 16),
                  Text(
                    '9:41',
                    style: TextStyle(
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.signal_cellular_alt, size: 16),
                      SizedBox(width: 7),
                      Icon(Icons.wifi, size: 16),
                      SizedBox(width: 7),
                      Icon(Icons.battery_std, size: 16),
                      SizedBox(width: 16),
                    ],
                  ),
                ],
              ),
            ),
            // Progress Bar
            Container(
              height: 2,
              color: const Color(0xFFF7F8FA),
            ),
            // Contents
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Page Title
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Display Name',
                              style: TextStyle(
                                fontFamily: 'Pretendard JP',
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Color(0xFF00A84F),
                              ),
                            ),
                            const Text(
                              'を',
                              style: TextStyle(
                                fontFamily: 'Pretendard JP',
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Color(0xFF121212),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          '入力してください',
                          style: TextStyle(
                            fontFamily: 'Pretendard JP',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Color(0xFF121212),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Input Field
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F8FA),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: const Color(0xFF00BE5C),
                          width: 1,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Juksun',
                          hintStyle: TextStyle(
                            fontFamily: 'Pretendard JP',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFF2A2A2A),
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                        ),
                        style: TextStyle(
                          fontFamily: 'Pretendard JP',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xFF2A2A2A),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Bottom Navigation
            Container(
              padding: const EdgeInsets.fromLTRB(24, 12, 24, 12),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFF00BE5C),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: const Center(
                      child: Text(
                        '次へ',
                        style: TextStyle(
                          fontFamily: 'Pretendard JP',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    width: 134,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
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