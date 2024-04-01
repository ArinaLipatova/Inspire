import 'bloc/special_thoughts_two_bloc.dart';
import 'models/special_thoughts_two_model.dart';
import 'package:flutter/material.dart';
import 'package:inspire_ver/core/app_export.dart';
import 'package:inspire_ver/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inspire_ver/widgets/app_bar/appbar_subtitle.dart';
import 'package:inspire_ver/widgets/app_bar/custom_app_bar.dart';
import 'package:inspire_ver/widgets/custom_elevated_button.dart';
import 'package:inspire_ver/widgets/custom_text_form_field.dart';

class SpecialThoughtsTwoScreen extends StatelessWidget {
  const SpecialThoughtsTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SpecialThoughtsTwoBloc>(
        create: (context) => SpecialThoughtsTwoBloc(SpecialThoughtsTwoState(
            specialThoughtsTwoModelObj: SpecialThoughtsTwoModel()))
          ..add(SpecialThoughtsTwoInitialEvent()),
        child: SpecialThoughtsTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.purple50,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 29.v),
                child: Column(children: [
                  _buildTypeTheText(context),
                  SizedBox(height: 17.v),
                  _buildCancelRow(context),
                  Spacer(),
                  SizedBox(height: 94.v),
                  _buildAddNewButton(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 76.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 22.h, top: 1.v, bottom: 1.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "msg_special_thoughts".tr));
  }

  /// Section Widget
  Widget _buildTypeTheText(BuildContext context) {
    return BlocSelector<SpecialThoughtsTwoBloc, SpecialThoughtsTwoState,
            TextEditingController?>(
        selector: (state) => state.typeTheTextController,
        builder: (context, typeTheTextController) {
          return CustomTextFormField(
              controller: typeTheTextController,
              hintText: "msg_type_the_text".tr,
              textInputAction: TextInputAction.done,
              maxLines: 14);
        });
  }

  /// Section Widget
  Widget _buildCancelButton(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "lbl_cancel".tr,
            margin: EdgeInsets.only(right: 5.h),
            buttonStyle: CustomButtonStyles.fillRedA));
  }

  /// Section Widget
  Widget _buildOkButton(BuildContext context) {
    return Expanded(
        child: CustomElevatedButton(
            text: "lbl_ok".tr,
            margin: EdgeInsets.only(left: 5.h),
            buttonStyle: CustomButtonStyles.fillGreen));
  }

  /// Section Widget
  Widget _buildCancelRow(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_buildCancelButton(context), _buildOkButton(context)]);
  }

  /// Section Widget
  Widget _buildAddNewButton(BuildContext context) {
    return CustomElevatedButton(
        height: 52.v,
        width: 197.h,
        text: "lbl_add_new".tr,
        rightIcon: Container(
            margin: EdgeInsets.only(left: 6.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgClose,
                height: 28.adaptSize,
                width: 28.adaptSize)),
        buttonTextStyle: CustomTextStyles.headlineSmallOnPrimary);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
