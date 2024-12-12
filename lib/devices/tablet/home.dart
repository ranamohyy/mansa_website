import 'package:flutter/material.dart';
import '../../core/routes/route.dart';
import '../../core/utils/constans.dart';
import '../../core/utils/utils.dart';
import '../../models/courses_model.dart';
import '../../views/widgets/custom_app_bar.dart';
import '../../views/widgets/header_widet.dart';
import '../../views/widgets/item_courses_widget.dart';
import '../mobile/home/course_view.dart';
import '../mobile/myProfile/view.dart';
import '../mobile/myProfile/views/charge.dart';

class TabletHomeView extends StatelessWidget {
  const TabletHomeView({super.key, required this.type});
  final String type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: false,
        appBar: MyAppBar(
            text: "home",
            W: Builder(builder: (context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu));
            })),
        drawer:  Drawer(
          child: MobileMyProfile(
            type: type,
          ),
        ),
        body: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: HeaderWidget(
                radius: 12,
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
              ),
            ),
          ),
          SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  childAspectRatio: Utils.sizeOfItem(context),
                  crossAxisSpacing: 10,
                ),
                delegate: SliverChildBuilderDelegate(
                  childCount: HomeModel.labelOfCourses.length,
                  (context, i) {
                    return GestureDetector(
                      onTap: () {
                        if (type == ourStudent) {
                          AppRouter.navigateTo(CourseView());
                        } else if (type == notOurStudent) {
                          AppRouter.navigateTo(const ChargeWallet());
                        } else {
                          return;
                        }
                      },
                      child: ItemCoursesWidget(
                        labels: HomeModel.labelOfCourses[i],
                        type: type,
                      ),
                    );
                  },
                ),
              ))
        ]));
  }
}
