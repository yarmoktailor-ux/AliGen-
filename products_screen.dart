import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'المنتجات',
              style: TextStyle(
                color: Color(0xFF002347),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(width: 10),
            // أيقونة التاغ البرتقالية الصغيرة
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.orange.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.local_offer, color: Colors.orange, size: 20),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // صورة الصندوق (Empty State Illustration)
            // ملاحظة: يمكنك استبدال Icon بصورة SVG إذا كانت متوفرة لديك
            Opacity(
              opacity: 0.6,
              child: Icon(
                Icons.inventory_2_outlined,
                size: 150,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 40),
            
            // النصوص التوضيحية
            Text(
              "لم تقم بإنشاء أي منتج حتى الآن",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF002347),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "اضغط على زر \"إضافة منتج جديد\" أدناه لإضافة منتجك الأول",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            
            SizedBox(height: 40),
            
            // زر أضف منتج
            _buildCustomButton(
              text: "أضف منتج",
              icon: Icons.add_circle_outline,
              onPressed: () {},
            ),
            
            SizedBox(height: 15),
            
            // زر أنشئ مجموعة
            _buildCustomButton(
              text: "أنشئ مجموعة",
              icon: Icons.add_circle_outline,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  // Widget مساعد لإنشاء الأزرار بنفس التصميم
  Widget _buildCustomButton({required String text, required IconData icon, required VoidCallback onPressed}) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF5E5CE6), // اللون البنفسجي المائل للأزرق
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
