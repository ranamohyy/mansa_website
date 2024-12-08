import 'package:flutter/material.dart';
import 'package:mansa/core/routes/route.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/devices/mobile/home/course_details.dart';
import 'package:mansa/views/widgets/app_bar_helper.dart';
import 'package:mansa/views/widgets/item_courses_widget.dart';

class CourseView extends StatelessWidget {
  CourseView({super.key, required this.appBar});
  final String appBar;

  List<String> labels = [
    "شرح الدرس الأول",
    "شرح الدرس الثاني",
    "شرح الدرس الثالث",
    "شرح الدرس الرابع",
  ];
  List<String> captions =[
    "ركز على العناصر الانتقالية. يشرح مفهومها، خواصها الفيزيائية والكيميائية، وأهميتها الصناعية والبيولوجية. كما يتناول توزيعها الإلكتروني وعلاقتها بتعدد حالات الأكسدة.",
" السبائك. يشرح مفهوم السبيكة، أنواعها، وطرق تكوينها، مع توضيح أهميتها في تحسين خواص المواد. كما يناقش أمثلة على سبائك شائعة مثل البرونز والصلب واستخداماتها العملية.",
    "ركز على العناصر الانتقالية. يشرح مفهومها، خواصها الفيزيائية والكيميائية، وأهميتها الصناعية والبيولوجية. كما يتناول توزيعها الإلكتروني وعلاقتها بتعدد حالات الأكسدة.",
" السبائك. يشرح مفهوم السبيكة، أنواعها، وطرق تكوينها، مع توضيح أهميتها في تحسين خواص المواد. كما يناقش أمثلة على سبائك شائعة مثل البرونز والصلب واستخداماتها العملية."];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBarHelper(text: appBar),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: List.generate(
                  captions.length,
                  (i) => GestureDetector(
                      onTap: () {
                        AppRouter.navigateTo(
                            CourseDetailsView(
                            cousreLable: labels[i],
                            details: captions[i]
                            ));
                                },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ItemCoursesWidget(
                         widget: "me",
                            type: ourStudent,
                            labels: labels[i]),
                      ))),
            ),
          ),
        ));
  }
}
