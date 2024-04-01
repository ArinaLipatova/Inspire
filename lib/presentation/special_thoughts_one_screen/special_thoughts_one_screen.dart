import 'bloc/special_thoughts_one_bloc.dart';
import 'models/special_thoughts_one_model.dart';
import 'package:flutter/material.dart';
import 'package:inspire_ver/core/app_export.dart';
import 'package:inspire_ver/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inspire_ver/widgets/app_bar/appbar_subtitle.dart';
import 'package:inspire_ver/widgets/app_bar/custom_app_bar.dart';
import 'package:inspire_ver/widgets/custom_elevated_button.dart';

class SpecialThoughtsOneScreen extends StatelessWidget {
  const SpecialThoughtsOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SpecialThoughtsOneBloc>(
        create: (context) => SpecialThoughtsOneBloc(SpecialThoughtsOneState(
            specialThoughtsOneModelObj: SpecialThoughtsOneModel()))
          ..add(SpecialThoughtsOneInitialEvent()),
        child: SpecialThoughtsOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecialThoughtsOneBloc, SpecialThoughtsOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.purple50,
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 23.h, vertical: 29.v),
                  child: Column(children: [
                    _buildFrameThirtyNine(context),
                    SizedBox(height: 6.v),
                    _buildFrameForty(context),
                    SizedBox(height: 7.v),
                    _buildFrameFortyOne(context),
                    SizedBox(height: 6.v),
                    _buildFrameFortyTwo(context),
                    Spacer(),
                    SizedBox(height: 94.v),
                    CustomElevatedButton(
                        height: 52.v,
                        width: 197.h,
                        text: "lbl_add_new".tr,
                        rightIcon: Container(
                            margin: EdgeInsets.only(left: 6.h),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgClose,
                                height: 28.adaptSize,
                                width: 28.adaptSize)),
                        buttonTextStyle:
                            CustomTextStyles.headlineSmallOnPrimary,
                        onPressed: () {
                          onTapAddNew(context);
                        })
                  ]))));
    });
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
  Widget _buildFrameThirtyNine(BuildContext context) {
    return Container(
        width: 342.h,
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 2.v),
        decoration: AppDecoration.fillBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text("msg_it_s_better_to_have".tr,
                  style: theme.textTheme.labelLarge)
            ]));
  }

  /// Section Widget
  Widget _buildFrameForty(BuildContext context) {
    return Container(
        width: 342.h,
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 2.v),
        decoration: AppDecoration.fillBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Container(
                  width: 298.h,
                  margin: EdgeInsets.only(right: 19.h),
                  child: Text("msg_it_s_better_to_have2".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.labelLarge!.copyWith(height: 1.07)))
            ]));
  }

  /// Section Widget
  Widget _buildFrameFortyOne(BuildContext context) {
    return Container(
        width: 342.h,
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 2.v),
        decoration: AppDecoration.fillBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text("msg_it_s_better_to_have".tr,
                  style: theme.textTheme.labelLarge)
            ]));
  }

  /// Section Widget
  Widget _buildFrameFortyTwo(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 2.v),
        decoration: AppDecoration.fillBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              SizedBox(
                  width: 318.h,
                  child: Text("msg_it_s_better_to_have3".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style:
                          theme.textTheme.labelLarge!.copyWith(height: 1.07)))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the specialThoughtsTwoScreen when the action is triggered.
  onTapAddNew(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.specialThoughtsTwoScreen,
    );
  }
}
