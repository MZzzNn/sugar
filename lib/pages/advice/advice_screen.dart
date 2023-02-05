import 'package:flutter/material.dart';

class AdviceScreen extends StatelessWidget {
  const AdviceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        itemBuilder: (_, i) {
          return Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Text(advises[i]),
          );
        },
        separatorBuilder: (_, i) => const SizedBox(height: 22),
        itemCount: advises.length
    );
  }
}



List<String> advises = [
  'وضع خطة غذائية واتباع برنامج وجبات طعام متوازنة ومُراجعة مُختص التغذية مرّة في السنة على الأقل',
  'على المريض معرفة التسميات العلمية والتجارية للأدوية التي يأخذها وطريقة عملها والاحتفاظ بقائمة أدويته معه طوال الوقت',
  'فحص مستوى الغلوكوز بانتظام حسب توصيات مُقدم الرعاية الصحية، وزيادة عدد مرات هذا الفحص عند الإصابة بمرض ما',
  'الخضوع لفحص هيموغلوبين السكري مرتين في السنة على الأقل أو بشكل متكرر حسب توصيات الطبيب',
  'قياس مستوى الكوليسترول ومُستويات الدهون الثُلاثية، أي تحليل الدهون، مرّة في السّنة',
  'ممارسة التمارين الرياضيّة لمدّة 30 دقيقة خمس مرّات على الأقل في الأسبوع. وقبل البدء بممارسة الرياضة، ينبغي التحدّث مع الطبيب واطلاعه على نوع التمارين التي يُريد المريض ممارستها ليتم تعديل مواعيد أخذ الأدوية أو وجبات الطعام إذا كانت هناك حاجة لذلك',
  'التوقّف عن التدخين والمشروبات الكحولية',
  'التوقّف عن تناول الأطعمة السريعة والمقلية والمُحمّرة',
  'التوقّف عن تناول الأطعمة الغنية بالدهون والسكّر',
  'اتباع مواعيد أخذ الأدوية حسب وصفة الطبيب',
  'الاتصال بالطبيب إذا كان مستوى غلوكوز الدم أعلى من 16.6 مليمول، أي 300 ملغرام/ديسيلتر، وفحص البول للبحث عن الكيتونات إذا ما نصح الطبيب بذلك'
];