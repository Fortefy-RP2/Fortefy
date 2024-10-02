import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'notifier/agendamento_notifier.dart';

class AgendamentoScreen extends ConsumerStatefulWidget {
	const AgendamentoScreen({Key? key})
	: super(
		key: key,
	);

	@override
	AgendamentoScreenState createState() => AgendamentoScreenState();
}

class AgendamentoScreenState extends ConsumerState<AgendamentoScreen> {
	GlobalKey<NavigatorState> navigatorKey = GlobalKey();

	@override
	Widget build(BuildContext context) {
		return SafeArea(
			child: Scaffold(
				extendBody: true,
				extendBodyBehindAppBar: true,
				body: Container(
					width: double.maxFinite,
					height: SizeUtils.height,
					decoration: BoxDecoration(
						gradient: LinearGradient(
							begin: Alignment(0.5, 0),
							end: Alignment(0.5, 1),
							colors: [
								appTheme.tealA4001e.withOpacity(0.41),
								appTheme.cyanA70068
							],
						),
					),
					child: Container(
						padding: EdgeInsets.only(top: 4.h),
						child: Column(
							children: [
								SizedBox(height: 4.h),
								Expanded(
									child: Padding(
										padding: EdgeInsets.symmetric(horizontal: 8.h),
										child: SingleChildScrollView(
											child: Container(
												width: double.maxFinite,
												padding: EdgeInsets.only(top: 4.h),
												decoration: BoxDecoration(
													color: appTheme.blueGray100,
													borderRadius: BorderRadiusStyle.roundedBorder12,
												),
												child: Column(
													mainAxisSize: MainAxisSize.min,
													children: [
														Container(
															width: double.maxFinite,
															margin: EdgeInsets.symmetric(horizontal: 38.h),
															child: Column(
																children: [
																	Text(
																		"msg_confirmar_agendamento".tr,
																		style: CustomTextStyles.bodyMediumRegular,
																	)
																],
															),
														),
														SizedBox(height: 2.h),
														SizedBox(
															width: double.maxFinite,
															child: Divider(
																color: appTheme.teall800,
															),
														),
														SizedBox(height: 4.h),
														_buildPersonalTrainerSection(context),
														SizedBox(height: 18.h),
														SizedBox(
															width: double.maxFinite,
															child: Divider(
																color: appTheme.teall800,
															),
														),
														SizedBox(height: 6.h),
														Align(
															alignment: Alignment.centerLeft,
															child: Padding(
																padding: EdgeInsets.only(left: 8.h),
																child: Text(
																	"lbl_agendamento".tr,
																	style: theme.textTheme.titleLarge,
																),
															),
														),
														SizedBox(height: 8.h),
														Text(
															"msg_data".tr,
															style: theme.textTheme.bodyMedium,
														),
														SizedBox(height: 8.h),
														Text(
															"msg_data".tr,
															style: theme.textTheme.bodyMedium,
														),
														SizedBox(height: 10.h),
														Align(
															alignment: Alignment.centerRight,
															child: Container(
																margin: EdgeInsets.only(right: 12.h),
																padding: EdgeInsets.symmetric(
																	horizontal: 10.h,
																	vertical: 2.h,
																),
																decoration: BoxDecoration(
																	color: appTheme.teal80001,
																	borderRadius:
																		BorderRadiusStyle.roundedBorder8,
																),
																child: Text(
																	"lbl_alterar".tr,
																	textAlign: TextAlign.center,
																	style:
																		CustomTextStyles.bodyMediumPrimaryRegular,
																),
															),
														),
														SizedBox(height: 16.h),
														Text(
															"msg_qtd_de_horas".tr,
															style: theme.textTheme.bodyMedium,
														),
														SizedBox(height: 10.h),
														CustomElevatedButton(
															height: 20.h,
															width: 64.h,
															text: "lbl_alterar".tr,
															margin: EdgeInsets.only(right: 12.h),
															buttonStyle: CustomButtonStyles.fillTeal,
															buttonTextStyle:
																CustomTextStyles.bodyMediumPrimaryRegular,
															alignment: Alignment.centerRight,
														),
														SizedBox(height: 18.h),
														Text(
															"msg_subtotal".tr,
															style: theme.textTheme.bodyMedium,
														),
														SizedBox(height: 18.h),
														SizedBox(
															width: double.maxFinite,
															child: Divider(
																color: appTheme.teal800,
															),
														),
														SizedBox(height: 6.h),
														_buildPaymentSection(context),
														SizedBox(height: 8.h)
													],
												),
											),
										),
									),
								),
								SizedBox(height: 16.h)
							],
						),
					),
				),
				bottomNavigationBar: SizedBox(
					width: double.maxFinite,
					child: _buildBottomNavigation(context),
				),
			),
		);
	}

	Widget _buildPersonalTrainerSection(BuildContext context) {
		return Container(
			width: double.maxFinite,
			margin: EdgeInsets.only(
				left: 8.h,
				right: 14.h,
			),
			child: Row(
				children: [
					SizedBox(
						width: 126.h,
						child: Column(
							crossAxisAlignment: CrossAxisAlignment.end,
							children: [
								Text(
									"lbl_seu_personal".tr,
									style: theme.textTheme.titleLarge,
								),
								SizedBox(height: 2.h),
								CustomImageView(
									imagePath: ImageConstante.imgRenCari1,
									height: 94.h,
									width: double.maxFinite,
									radius: BorderRadius.circular(
										14.h,
									),
									margin: EdgeInsets.only(left: 12.h),
								)
							],
						),
					),
					SizedBox(width: 6.h),
					Expanded(
						child: Align(
							alignment: Alignmen.bottomLeft,
							child: Padding(
								padding: EdgeInsets.only(bottom: 4.h),
								child: Column(
									crossAxisAlignment: CrossAxisAlignment.start,
									children: [
										SizedBox(
											width: double.maxFinite,
											child: Row(
												crossAxisAlignment: CrossAxisAlignment.end,
												children: [
													Align(
														alignment: Alignment.center,
														child: Text(
															"lbl_renato_cariani".tr,
															style: CustomTextStyles.titleMediumExtraBold,
														),
													),
													CustomImageView(
														imagePath: ImageConstant.imrgStar1,
														height: 6.h,
														width: 6.h,
														margin: EdgeInsets.only(
															left: 12.h,
															bottom: 6.h,
														),
													),
													Padding(
														padding: EdgeInsets.only(bottom: 4.h),
														child: Text(
															"lbl_5_0_300".tr,
															style: theme.textTheme.bodySmall,
														),
													)
												],
											),
										),
										SizedBox(height: 6.h),
										Container(
											width: double.maxFinite,
											margin: EdgeInsets.symmetric(horizontal: 2.h),
											child: Row(
												mainAxisAlignment: MainAxisAlignment.center,
												children: [
													Expanded(
														child: Column(
															crossAxisAlignment: CrossAxisAlignment.start,
															children: [
																Text(
																	"msg_fisiculturismo".tr,
																	maxLines: 2,
																	overflow: TextOverFlow.ellipsis,
																	style: theme.textTheme.bodySmall,
																),
																SizedBox(height: 6.h),
																Text(
																	"lbl_r_560_p_hora".tr,
																	style: theme.textTheme.bodySmall,
																)
															],
														),
													),
													CustomElevatedButton(
														height: 16.h,
														width: 50.h,
														text: "lbl_veja_mais".tr,
														buttonStyle: CustomButtonStyles.fillTeal,
														buttonTextStyle: CustomTextStyles.bodySmallPrimary,
														alignment: Alignment.bottomCenter,
													)
												],
											),
										),
										SizedBox(height: 12.h),
										Padding(
											padding: EdgeInsets.only(left: 2.h),
											child: Text(
												"msg_s_o_paulo_s_o_caetano".tr,
												style: theme.textTheme.bodySmall,
											),
										)
									],
								),
							),
						),
					)
				],
			),
		);
	}

	Widget _buildPaymentSection(BuildContext context){
		return Container(
			width: double.maxFinite,
			margin: EdgeInsets.only(
				left: 8.h,
				right: 14.h,
			),
			child: Column(
				children: [
					Align(
						alignment: Alignment.centerLeft,
						child: Text(
							"lbl_pagamento".tr,
							style: theme.textTheme.titleLarge,
						),
					),
					SizedBox(height: 10.h),
					Text(
						"msg_total".tr,
						style: theme.textTheme.bodyMedium,
					),
					SizedBox(height: 24.h),
					Container(
						width: double.maxFinite,
						margin: EdgeInsets.only(
							left: 30.h,
							right: 26,h,
						),
						child:Column(
							children: [
								CustomElevatedButton(
									height: 20.h,
									width: 58.h,
									text: "lbl_pagar".tr,
									buttonStyle: CustomButtonStyles.fillTeal,
									buttonTextStyle: CustomTextStyles.bodyMediumPrimaryRegular,
								)
							],
						),
					),
					SizedBox(height: 24.h),
					RichText(
						text: TextSpan(
							children: [
								TextSpan(
									text: "msg_lembrando_que_ser2".tr,
									style: CustomTextStyles.bodySmall10_1,
								),
								TextSpan(
									text: "msg_n_o_ser_o_cobradas".tr,
									style: CustomTextStyles.labelMediumBold,
								),
							],
						),
						textAlign: TextAlign.center,
						maxLines: 2,
						overflow: TextOverflow.ellipsis,
					)
				],
			),
		);
	}

	Widget _builderBottomNavigation(BuildContext context) {
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
