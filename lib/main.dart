import 'package:flutter/material.dart';

void main() => runApp(CMasterPro());

class CMasterPro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'C-Master Pro',
      theme: ThemeData.dark(),
      home: LessonListScreen(),
    );
  }
}

class LessonListScreen extends StatelessWidget {
  // هنا سنضع كل دروس لغة C من الألف إلى الياء
  final List<Map<String, dynamic>> allLessons = [
    {
      "category": "الأساسيات",
      "lessons": [
        {"title": "هيكل البرنامج", "icon": "🏗️", "detail": "شرح #include و main()"},
        {"title": "حصيات الرموز", "icon": "💎", "detail": "إتقان %d, %f, %c, %s, %p, %x"},
        {"title": "الرموز الهروبية", "icon": "🚪", "detail": "أسرار \\n, \\t, \\a, \\b, \\r"}
      ]
    },
    {
      "category": "المنطق والذاكرة",
      "lessons": [
        {"title": "المتغيرات", "icon": "📦", "detail": "أنواع البيانات وحجز الذاكرة"},
        {"title": "المؤشرات (Pointers)", "icon": "📍", "detail": "أساس الهكر والوصول المباشر"},
        {"title": "المصفوفات", "icon": "📊", "detail": "تخزين البيانات الضخمة (Week 2)"}
      ]
    },
    {
      "category": "الأوامر المتقدمة",
      "lessons": [
        {"title": "الشروط الذكية", "icon": "⚖️", "detail": "خوارزميات if و switch"},
        {"title": "التكرار اللانهائي", "icon": "🔄", "detail": "تحليل for و while و do-while"}
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("موسوعة C الشاملة")),
      body: ListView.builder(
        itemCount: allLessons.length,
        itemBuilder: (context, index) {
          var category = allLessons[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(category['category'], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.amber)),
              ),
              ...(category['lessons'] as List).map((lesson) => Card(
                child: ListTile(
                  leading: Text(lesson['icon'], style: TextStyle(fontSize: 25)),
                  title: Text(lesson['title']),
                  subtitle: Text(lesson['detail']),
                  onTap: () {
                    // هنا سيظهر الشرح المفصل الذي سنضيفه في ملفات الـ JSON
                  },
                ),
              )).toList(),
            ],
          );
        },
      ),
    );
  }
}
