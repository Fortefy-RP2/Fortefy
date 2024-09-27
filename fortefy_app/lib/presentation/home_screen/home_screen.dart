import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_icon/button.dart';
import '../../widgets/custom_search_view.dart';
import 'notifier/home_notifier.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key})
    :super(
      key: key,
    );
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumertState<HomeScreen> {
  GlobalKey<NavigationState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.cyan4001e,
                appTheme.greenA4001e,
                theme.colorScheme.primaryContainer
              ],
            ),
          ),
          child: Container(
            padding: EdgeInsets.only(
              left: 10,
              top: 22,
              right: 10,
            ),
            child: Column(
              children: [
                _buildSearchSection(context),
                SizedBox(height: 48),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  child: Column(
                    children: [
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                          horizontal: 54,
                          vertical: 42,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.blueGray100,
                          borderRadius: BorderRadiusStyle.roundedBorder20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "msg_voc_ainda_n_o_tem".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.labelMediumOnPrimary,
                            ),
                            SizedBox(height: 292)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 4)
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildButtomNavigation(context),
        ),
      ),
    );
  }

  Widget _buildSearchSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 40,
            width: 42,
            padding: EdgeInsets.all(10),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowDown,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Consumer(
              builder: (context, ref, _) {
                return CustomSearchView(
                  controller: ref.watch(homeNotifier).searchController,
                  hintText: "meg_escreva_o_servi_o".tr,
                  contentPadding: EdgeInsets.fromLTRB(12, 8, 16, 8),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBottomNavigation(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
        },
      ),
    );
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.User:
        return AppRoutes.searchPersonalInitialPage;
      case BottomBarEnum.Close:
        return "/";
      default:
        return "/";
    }
  }
}