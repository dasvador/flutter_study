import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Step 4 App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const Step4Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Step4Screen extends StatelessWidget {
  const Step4Screen({Key? key}) : super(key: key);

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
        child: Stack(
          children: [
            Column(
              children: [
                // 상단 상태바
                Container(
                  padding: const EdgeInsets.only(top: 21),
                  height: 54,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text(
                          '9:41',
                          style: TextStyle(
                            fontFamily: 'SF Pro',
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const SizedBox(width: 134),
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
                
                // 컨텐츠 영역
                Expanded(
                  child: Column(
                    children: [
                      // 사용자 이름 영역
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Juksun',
                              style: TextStyle(
                                fontFamily: 'Pretendard JP',
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Color(0xFF121212),
                              ),
                            ),
                            Container(
                              height: 24,
                              width: 24,
                              child: Icon(
                                Icons.account_circle,
                                color: Color(0xFF121212),
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // 날짜 영역
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '4月',
                            style: TextStyle(
                              fontFamily: 'Pretendard JP',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xFF121212),
                            ),
                          ),
                        ),
                      ),
                      
                      // 식단 목록 영역
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                          color: const Color(0xFFE6F7EB),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                // 첫 번째 행
                                buildFoodRow([
                                  _buildFoodItem('assets/images/food_image_1.jpg', '4/14 昼', '273Kcal / 243Kcal'),
                                  _buildFoodItem('assets/images/food_image_2.jpg', '4/14 朝', '290Kcal / 250Kcal'),
                                  _buildFoodItem('assets/images/food_image_3.jpg', '4/13 昼', '310Kcal / -'),
                                ]),
                                const SizedBox(height: 2),
                                
                                // 두 번째 행
                                buildFoodRow([
                                  _buildFoodItem('assets/images/food_image_4.jpg', '4/13 朝', '273Kcal / 243Kcal'),
                                  _buildFoodItem('assets/images/food_image_5.jpg', '4/11 朝', '273Kcal / 243Kcal'),
                                  _buildFoodItem('assets/images/food_image_6.jpg', '4/10 夕', '273Kcal / 243Kcal'),
                                ]),
                                const SizedBox(height: 2),
                                
                                // 추가 행들 (같은 방식으로 계속)
                                buildFoodRow([
                                  _buildFoodItem('assets/images/food_image_1.jpg', '4/10 昼', '273Kcal / 243Kcal'),
                                  _buildFoodItem('assets/images/food_image_2.jpg', '4/9 朝', '273Kcal / 243Kcal'),
                                  _buildFoodItem('assets/images/food_image_3.jpg', '4/8 夕', '273Kcal / 243Kcal'),
                                ]),
                                const SizedBox(height: 2),
                                
                                buildFoodRow([
                                  _buildFoodItem('assets/images/food_image_4.jpg', '4/8 昼', '273Kcal / 243Kcal'),
                                  _buildFoodItem('assets/images/food_image_5.jpg', '4/8 朝', '273Kcal / 243Kcal'),
                                  _buildFoodItem('assets/images/food_image_6.jpg', '4/7 夕', '273Kcal / 243Kcal'),
                                ]),
                                const SizedBox(height: 2),
                                
                                buildFoodRow([
                                  _buildFoodItem('assets/images/food_image_1.jpg', '4/11 昼', '273Kcal / 243Kcal'),
                                  _buildFoodItem('assets/images/food_image_2.jpg', '4/11 朝', '273Kcal / 243Kcal'),
                                  _buildFoodItem('assets/images/food_image_3.jpg', '4/10 夕', '273Kcal / 243Kcal'),
                                ]),
                                const SizedBox(height: 2),
                                
                                buildFoodRow([
                                  _buildFoodItem('assets/images/food_image_1.jpg', '4/11 昼', '273Kcal / 243Kcal'),
                                  _buildFoodItem('assets/images/food_image_2.jpg', '4/11 朝', '273Kcal / 243Kcal'),
                                  _buildFoodItem('assets/images/food_image_6.jpg', '4/10 夕', '273Kcal / 243Kcal'),
                                ]),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                
                // 하단 홈 인디케이터
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Center(
                    child: Container(
                      width: 134,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            
            // 플로팅 버튼
            Positioned(
              right: 24,
              bottom: 24,
              child: Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: const Color(0xFF00BE5C),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 24,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget buildFoodRow(List<Widget> children) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: children,
    );
  }
  
  Widget _buildFoodItem(String imagePath, String dateText, String calorieText) {
    return Container(
      width: 118.67,
      height: 118.67,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // 음식 이미지
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          
          // 날짜 라벨
          Positioned(
            left: 8,
            top: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              decoration: BoxDecoration(
                color: const Color(0xFF00BE5C).withOpacity(0.8),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                dateText,
                style: TextStyle(
                  fontFamily: 'Pretendard JP',
                  fontSize: 8,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  letterSpacing: 0.125,
                ),
              ),
            ),
          ),
          
          // 칼로리 라벨
          Positioned(
            left: 8,
            bottom: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                calorieText,
                style: TextStyle(
                  fontFamily: 'Pretendard JP',
                  fontSize: 8,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  letterSpacing: 0.125,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
} 