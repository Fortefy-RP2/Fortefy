import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'notifier/cadastro_aluno_notifier.dart';

class CadastroAlunoScreen extends ConsumerStatefulWidget{
  const CadastroAlunoScreen({Key? key})
    : super(
      key: key,
    );

  @override
  CadastroAlunoScreenState createState() => CadastroAlunoScreenState();
}

class CadastroAlunoScreenState extends ConsumerState<CadastroAlunoScreen> {
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
              colors: [appTheme.tealA4001e, theme.colorScheme.errorContainer],
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildLogoSection(context),
                  SizedBox(height: 10.h,),
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 46.h),
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Column(
                      children: [
                        _buildBirthdateInput(context),
                        SizedBox(height: 16.h),
                        _buildEmailInput(context),
                        SizedBox(height: 16.h),
                        _buildPasswordInput(context),
                        SizedBox(height: 14.h),
                        _buildRepeatPasswordInput(context),
                        SizedBox(height: 38.h),
                        _buildRegisterButton(context)
                      ],
                    ),
                  ),
                  SizedBox(height: 4.h)
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildPersonalTrainerPrompt(context),
      ),
    );
  }

  Widget _buildFullNameInput(BuildContext context) {
    return Expanded(
      child: Consumer(
        builder: (context, ref, _) {
          return CustomTextFormField(
            controller:
              ref.watch(cadastroAlunoNotifier)._buildFullNameInputController,
            hintText: "lbl_nome_completo".tr,
            contentPadding: EdgeInsets.fromLTRB(14.h, 8.h, 14.h, 6.h),
          );
        },
      ),
    );
  }

  Widget _buildLogoSection(BuildContext context) {
    return SizedBox(
      height: 218.h,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 6.h),
                      padding: EdgeInsets.symmetric(horizontal: 54.h),
                      child: Row(
                        children: [_buildFullNameInput(context)],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFortefyLogo1218x360,
            height: 218.h,
            width: double.maxFinite,
          )
        ],
      ),
    );
  }

  Widget _buildBirthdateInput(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(cadastroAlunoNotifier).birthdateInputController,
          hintText: "msg_data_de_nascimento".tr,
          contentPadding: EdgeInsets.fromLTRB(14.h, 8.h, 14.h, 6.h),
        );
      },
    );
  }

  Widget _buildEmailInput(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller: ref.watch(cadastroAlunoNotifier).emailInputController,
          hintText: "lbl_email".tr,
          TextInputType: TextInputType.emailAddress,
          contentPadding: EdgeInsets.fromLTRB(14.h, 8.h, 14.h, 6.h),
          validator: (value) {
            if(value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email";
            }
            return null;
          },
        );
      },
    );
  }

  Widget _buildPasswordInput(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return CustomTextFormField(
          controller:
            ref.watch(cadastroAlunoNotifier).repeatPasswordInputController,
          hintText: "msg_repita_sua_senha".tr,
          TextInputAction: TextInputAction.done,
          contentPadding: EdgeInsets.fromLTRB(14.h, 8.h, 14.h, 6.h),
        );
      },
    );
  }

  Widget _buildRegisterButton(BuildContext context) {
    return CustomElevatedButton(
      height: 44.h,
      width: 108.h,
      text: "lbl_cadastrar".tr,
    );
  }

  Widget _buildPersonalTrainerPrompt(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 12.h),
            child: Text(
              "msg_voc_personal".tr,
              style: CustomTextStyles.bodyMediumPrimaryExtraLight.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
    );
  }
}