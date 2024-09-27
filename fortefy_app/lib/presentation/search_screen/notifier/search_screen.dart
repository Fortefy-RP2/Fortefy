import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart'
import '../../widgets/custom_elevated_button.dart'
import '../../widgets/custom_radio_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'notifier/search_notifier.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({Key? key})
    : super(
      key: key,
  );

  @override
  SearchScreenState createState() => SearchScreenState();
}

class SearchScreenState extends ConsumerState<SearchScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
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
            margin: EdgeInsets.only(top: 56.h),
            padding: EdgeInsets.only(top: 4.h),
            child: Column(
              children: [
                SizedBox(height: 16.h),
                Container(
                  width: double.MaxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 38.h),
                  padding: EdgeInsets.all(16.h),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray100,
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "msg_selecione_a_regiao".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                      SizedBox(height: 4.h),
                      _buildRegionSelectionInput(context),
                      SizedBox(height: 10.h),
                      Text(
                        "msg_selecione_o_tipo".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                      SizedBox(height: 4.h),
                      _buildServiceTypeInput(context),
                      SizedBox(height: 8.h),
                      Text(
                        "msg_selecione_o_sexo".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                      SizedBox(height: 12.h),
                      _buildGenderSelectionRadioGroup(context),
                      SizedBox(height: 26.h),
                      Text(
                        "msg_selecione_o_valor".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                      SizedBox(height: 12.h),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(
                          left: 28.h,
                          right: 24.h,
                        ),
                        child: Slider(
                          value: 0.0,
                          min: 0.0,
                          max: 100,0,
                          onChanged: (value) {},
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 56.h),
                          child: Text(
                            "lbl_r_500".tr,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.symmetric(horizontal: 10.h),
                        child: Row(
                          children: [
                            _buildBackButton(context),
                            SizedBox(width: 16.h),
                            _buildSearchButton(context)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomNavigationBar(context),
        ),
      ),
    );
  }

  ///Section Widget
 PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 52.h,
      leading: AppbarLeadingIconButton(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 10.h,
          top: 8.h,
          bottom: 8.h,
        ),
      ),
    );
 }

 ///Section Widget

Widget _buildRegionSelectionInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Consumer(
        builder: (context, ref, _) {
          return CustomTextFormField(
            controller;
              ref.watch(searchNotifier).regionSelectionInputController,
          contentPadding: EdgeInsets.all(12.h),
          borderDecoration: TextFormFieldStyleHelper.fillPrimary,
          fillColor: theme.colorScheme.primary,
          );
        },
      ),
    );
}


Widget _buildServiceTypeInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.h),
      child: Consumer(
        builder: (context, ref, _) {
          return CustomTextFormField(
            controller: ref.watch(searchNotifier).serviceTypeInputController,
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.all(12.h),
            borderDecoration: TextFormFieldStyleHelper.fillPrimary,
            fillColor: theme.colorScheme.primary,
          );
        },
      ),
    );
}


Widget _buildGenderSelectionRadioGroup(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Consumer(
        builder: (context, ref, _) {
          return Row(
            children: [
              CustomRadioButton(
                text: "lbl_masculino".tr,
                value: "lbl_masculino".tr,
                groupValue: ref.watch(searchNotifier).radioGroup,
                onChange: (value) {
                  ref.read(searchNotifier.notifier).changeRadioButton(value);
                },
              ),
              Padding(
                padding: EdgeInsets.only(left: 26.h),
                child: CustomRadioButton(
                  text: "lbl_feminino".tr,
                  value: "lbl_feminino".tr,
                  groupValue: ref.watch(searchNotifier).radioGroup,
                  onChange: (value) {
                    ref.read(searchNotifier.notifier).changeRadioButton(value);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 26.h),
                child: CustomRadioButton(
                  text: "lbl_outros".tr,
                  value: "lbl_outros".tr,
                  groupValue: ref.watch(searchNotifier).radioGroup,
                  onChange: (value) {
                    ref.read(searchNotifier.notifier).changeRadioButton(value);
                  },
                ),
              )
            ],
          );
        },
      ),
    );
}


Widget _buildBackButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 34.h,
        text: "lbl_voltar".tr,
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: CustomTextStyles.titleMediumPrimary,
      ),
    );
}


Widget _buildSearchButton(BuildContext context) {
    return Expanded(
      child: CustomElevatedButton(
        height: 34.h,
        text: "lbl_buscar".tr,
        buttonStyle: CustomButtonStyles.fillBlueGray,
        buttonTextStyle: CustomTextStyles.titleMediumPrimary,
      ),
    );
}


Widget _buildBottomNavigationBar(BuildContext context) {
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


String getCurrentRoute(BottomBarEnum type){
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