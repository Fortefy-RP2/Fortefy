import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'notifier/app_navigation_notifier.dart';

class AppNavigationScreen extends ConsumerStatefulWidget {
  const AppNavigationScreen({Key? key})
  : super(
    key: key,
  );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
}

class AppNavigationScreenState extends ConsumerState<AppNavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFFFFFFF),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.h),
                        child: Text(
                          "App Navigation",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0XFF000000),
                            fontSize: 20.fSize,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Text(
                          "Check your app's UI from the below demo screens of your app.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0XFF888888),
                            fontSize: 16.fSize,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Divider(
                        height: 1.h,
                        thickness: 1.h,
                        color: Color(0XFF000000),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0XFFFFFFFF),
                      ),
                      child: Column(
                        children: [
                          _buildScreenTitle(
                            context,
                            screenTitle: "Agendamento",
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.agendamentoScreen),
                          ),
                          _buildScreenTitle(
                            context,
                            screenTitle: "Search_Personal",
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.searchPersonalScreen),
                          ),
                          _buildScreenTitle(
                            context,
                            screenTitle: "Cadastro",
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.cadastroScreen),
                          ),
                          _buildScreenTitle(
                            context,
                            screenTitle: "Login",
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.loginScreen),
                          ),
                          _buildScreenTitle(
                            context,
                            screenTitle: "Home",
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.homeScreen),
                          ),
                          _buildScreenTitle(
                            context,
                            screenTitle: "Search",
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.searchScreen),
                          ),
                          _buildScreenTitle(
                            context,
                            screenTitle: "Cadastro_Aluno",
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.cadastroAlunoScreen),
                          ),
                          _buildScreenTitle(
                            context,
                            screenTitle: "Splash",
                            onTapScreenTitle: () =>
                                onTapScreenTitle(AppRoutes.splashScreen),
                          ),
                          _buildScreenTitle(
                            context,
                            screenTitle: "Cadastro_Personal",
                            onTapScreenTitle: () => onTapScreenTitle(
                                    AppRoutes.cadastroPersonalScreen),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
          ),
        ),
      ),
    );
  }


  Widget _buildScreenTitle(
      BuildContext context, {
        required String screenTitle,
        Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            Divider(
              height: 1.h,
              thickness: 1.h,
              color: Color(0XFF888888),
            )
          ],
        ),
      ),
    );
  }


  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }

}