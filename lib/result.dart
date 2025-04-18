import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '스마타베',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFFF7949)),
        useMaterial3: true,
        fontFamily: 'Pretendard JP',
      ),
      home: const ResultScreen(),
    );
  }
}

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Top Navigation
            Container(
              padding: const EdgeInsets.only(top: 21),
              height: 54,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      '9:41',
                      style: TextStyle(
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  Container(
                    width: 124,
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: Row(
                      children: [
                        Icon(Icons.signal_cellular_alt, size: 16),
                        SizedBox(width: 7),
                        Icon(Icons.wifi, size: 16),
                        SizedBox(width: 7),
                        Icon(Icons.battery_std, size: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Main Content
            Expanded(
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.arrow_back_ios),
                              onPressed: () => Navigator.pop(context),
                            ),
                            const Text(
                              '3月 19日 昼ご飯',
                              style: TextStyle(
                                fontFamily: 'Pretendard JP',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(Icons.more_horiz),
                          onPressed: () {},
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // Food Image
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/food_image.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Calories Info
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF7F8FA),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '合計カロリー',
                                style: TextStyle(
                                  fontFamily: 'Pretendard JP',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFF585859),
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    '361',
                                    style: TextStyle(
                                      fontFamily: 'Pretendard JP',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(width: 2),
                                  const Text(
                                    'kcal',
                                    style: TextStyle(
                                      fontFamily: 'Pretendard JP',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xFF585859),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Divider(height: 24, color: Color(0xFFF2F3F5)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '要注意カロリー',
                                style: TextStyle(
                                  fontFamily: 'Pretendard JP',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xFFF54547),
                                ),
                              ),
                              Row(
                                children: [
                                  const Text(
                                    '321',
                                    style: TextStyle(
                                      fontFamily: 'Pretendard JP',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Color(0xFFF54547),
                                    ),
                                  ),
                                  const SizedBox(width: 2),
                                  const Text(
                                    'kcal',
                                    style: TextStyle(
                                      fontFamily: 'Pretendard JP',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: Color(0xFFF54547),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(
                                Icons.info_outline,
                                color: Color(0xFFB6B7B8),
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              const Text(
                                '1人前の基準で計算されています',
                                style: TextStyle(
                                  fontFamily: 'Pretendard JP',
                                  fontSize: 12,
                                  color: Color(0xFF878788),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Warning Foods Section
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/warning_icon.png',
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          '気をつけたい食べ物',
                          style: TextStyle(
                            fontFamily: 'Pretendard JP',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(0xFFFF7949),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Warning Food Items
                    _buildFoodItem(
                      '돼지고기김치찌개',
                      '202 kcal',
                      '고칼로리, 튀김',
                      true,
                    ),

                    const SizedBox(height: 16),

                    // OK Foods Section
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/ok_icon.png',
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'OKな食べ物',
                          style: TextStyle(
                            fontFamily: 'Pretendard JP',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(0xFF00A84F),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // OK Food Items
                    _buildFoodItem(
                      '무나물',
                      '202 kcal',
                      '저칼로리, 건강식',
                      false,
                    ),

                    const SizedBox(height: 24),

                    // Meal Points Section
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/star_icon.png',
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          '食事のポイント!',
                          style: TextStyle(
                            fontFamily: 'Pretendard JP',
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(0xFFFF7949),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    const Text(
                      '무말랭이무침을 드실 때에는 액상과당 함유로 인한 체중 증가 가능성을 염두에 두시면 좋겠습니다. 당 섭취량 사항에 대한 주의를 기울이시고, 저설탕 식단을 선택한다면 체중 감소에도 이로운 효과를 기대하실 수 있습니다. 건강을 생각하는 조심스런 식사 선택을 부탁드립니다.\n\n물엿의 고당분 성분이 때때로 비만 같은 부정적 영향을 미칠 수 있는 점, 유념하시면 좋겠습니다.',
                      style: TextStyle(
                        fontFamily: 'Pretendard JP',
                        fontSize: 16,
                        color: Color(0xFF2A2A2A),
                        height: 1.6,
                      ),
                    ),

                    const SizedBox(height: 40),

                    // Share Button
                    SizedBox(
                      width: 312,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFF7949),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text(
                          '식사 기록 공유하기',
                          style: TextStyle(
                            fontFamily: 'Pretendard JP',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFoodItem(
      String name, String calories, String note, bool isWarning) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F8FA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Row(
                children: [
                  Text(
                    calories,
                    style: const TextStyle(
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF585859),
                    ),
                  ),
                  Icon(
                    isWarning ? Icons.arrow_upward : Icons.arrow_downward,
                    color: const Color(0xFF878788),
                    size: 16,
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Nutrition Info
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildNutritionItem('탄수화물', '7.3g'),
              _buildNutritionItem('단백질', '47.8g'),
              _buildNutritionItem('지방', '30.4g'),
              _buildNutritionItem('당류', '0.5g'),
            ],
          ),

          const Divider(height: 24, color: Color(0xFFE5E5E7)),

          // Note
          Row(
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/food_image.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 4),
              Text(
                note,
                style: const TextStyle(
                  fontFamily: 'Pretendard JP',
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xFFF54547),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNutritionItem(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Pretendard JP',
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Color(0xFF585859),
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontFamily: 'Pretendard JP',
            fontSize: 14,
            color: Color(0xFF585859),
          ),
        ),
      ],
    );
  }
}
