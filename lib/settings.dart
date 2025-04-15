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
      home: SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.only(top: 21),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 16),
                  Text(
                    '9:41',
                    style: TextStyle(
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w600,
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
            
            // Header
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
              width: double.infinity,
              child: const Text(
                'マイページ',
                style: TextStyle(
                  fontFamily: 'Pretendard JP',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFF121212),
                ),
              ),
            ),
            
            // Contents
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // First Section
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildListItem(
                            title: '이름',
                            value: 'Juksun',
                            showDivider: true,
                          ),
                          _buildListItem(
                            title: '通知設定',
                            value: 'ON',
                            showDivider: true,
                          ),
                          _buildListItem(
                            title: '連携中アカウント',
                            value: 'LINE',
                            showDivider: false,
                          ),
                        ],
                      ),
                      
                      // Divider
                      Container(
                        width: double.infinity,
                        height: 1,
                        color: const Color(0xFFF2F3F5),
                        margin: const EdgeInsets.symmetric(vertical: 24),
                      ),
                      
                      // Second Section Title
                      const Text(
                        'サービス管理',
                        style: TextStyle(
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          letterSpacing: 0.15,
                          color: Color(0xFF878788),
                        ),
                      ),
                      const SizedBox(height: 12),
                      
                      // Service Information
                      _buildListItem(
                        title: 'サービス情報',
                        showValue: false,
                        showDivider: false,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
            // Home Indicator
            Container(
              width: 134,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
              ),
              margin: const EdgeInsets.only(bottom: 8),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget _buildListItem({
    required String title,
    String? value,
    bool showValue = true,
    bool showDivider = true,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontFamily: 'Pretendard JP',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  letterSpacing: 0.15,
                  color: Color(0xFF2A2A2A),
                ),
              ),
              Row(
                children: [
                  if (showValue && value != null)
                    Text(
                      value,
                      style: const TextStyle(
                        fontFamily: 'Pretendard JP',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        letterSpacing: 0.15,
                        color: Color(0xFF2A2A2A),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  const SizedBox(width: 4),
                  const Icon(
                    Icons.chevron_right,
                    color: Color(0xFF878788),
                    size: 24,
                  ),
                ],
              ),
            ],
          ),
        ),
        if (showDivider)
          const Divider(
            height: 1,
            thickness: 1,
            color: Color(0xFFF2F3F5),
          ),
      ],
    );
  }
} 