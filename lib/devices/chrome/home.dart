import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mansa/core/routes/route.dart';
import 'package:mansa/core/utils/constans.dart';
import 'package:mansa/models/courses_model.dart';
import 'package:mansa/views/myProfile/view.dart';
import 'package:mansa/views/widgets/header_widet.dart';
import 'package:mansa/views/widgets/item_courses_widget.dart';
import '../../core/assets.dart';
import '../../core/res/responsive.dart';
import '../../core/utils/utils.dart';
import '../../views/widgets/body_user_details_view.dart';
import '../mobile/auth/widgets/text_auth.dart';
import '../mobile/myProfile/view.dart';
import '../mobile/myProfile/views/aboutApp.dart';
import '../mobile/myProfile/views/charge.dart';
import '../mobile/myProfile/views/myAcc.dart';
import '../mobile/myProfile/views/myCourses.dart';
import '../mobile/myProfile/views/results.dart';
import '../mobile/myProfile/views/suggestions.dart';

class WebHomeView extends StatefulWidget {
   WebHomeView({super.key, required this.type});
  final String type;

  @override
  State<WebHomeView> createState() => _WebHomeViewState();
}

class _WebHomeViewState extends State<WebHomeView> {

  List<Widget> icons = [
    SvgPicture.asset(AppImage.user),
    SvgPicture.asset(AppImage.courses),
    SvgPicture.asset(AppImage.results),
    SvgPicture.asset(AppImage.chargeWallet),
    SvgPicture.asset(AppImage.faq),
    const FaIcon(FontAwesomeIcons.circleQuestion, color: Color(0xff4EB7F2)),
    const Icon(
      Icons.language,
      color: Color(0xff4EB7F2),
    ),
    SvgPicture.asset(AppImage.logout),
  ];
  int index=0;
 late  List<Widget> views = [
    HomeGridView(type: widget.type,),
    MyAcc(),
    MyCourses(),
    Results(),
    ChargeWallet(),
    Suggestions(),
    Aboutapp(),
  ];
  List<String> addresses = [
    "Myaccount",
    "courses",
    "results",
    "recharge",
    "FAQ",
    "aboutApp",
    "changeLang",
    "logOut"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Drawer(
            backgroundColor: Colors.white,
            // child: MobileMyProfile(
            //   type: widget.type,
            // ),
            child: ListView.builder (
              padding: EdgeInsets.only(top: 20,right: 20),
              itemBuilder: (context, i) =>
                  ListTile(onTap: (){
                                  setState(() {
                  index=i;
                  index++;
                                 print(index);});
                                 }
                                ,
                  leading: icons[i],
                  title: TextAuth(text: addresses[i])
                  
                                  ,),
              itemCount: views.length,

            ),
          ),
          views[index],
        ]));
  }
}
class HomeGridView extends StatefulWidget {
  const HomeGridView({super.key,required this.type});
final String type;
  @override
  State<HomeGridView> createState() => _HomeGridViewState();
}

class _HomeGridViewState extends State<HomeGridView> {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
        child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: HomeModel.labelOfCourses.length,
            scrollDirection: Axis.vertical,
            padding:
            const EdgeInsets.symmetric(vertical: 20, horizontal:20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: Utils.sizeOfItemWeb(context),
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ItemCoursesWidget(
                  type: widget.type,
                  labels: HomeModel.labelOfCourses[index]),
            )));

  }
}
class Hello extends StatelessWidget {
  const Hello({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
