import 'package:inspire_ver/presentation/home_screen/home_screen.dart';

import 'bloc/onboarding_bloc.dart';
import 'models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:inspire_ver/core/app_export.dart';
import 'package:inspire_ver/widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
        create: (context) => OnboardingBloc(
            OnboardingState(onboardingModelObj: OnboardingModel()))
          ..add(OnboardingInitialEvent()),
        child: OnboardingScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 7.h),
                  child: Column(children: [
                    _buildOnboardingStack(context),
                    SizedBox(height: 5.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            width: 259.h,
                            margin: EdgeInsets.only(left: 19.h),
                            child: Text("msg".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.headlineLarge!
                                    .copyWith(height: 1.15)))),
                    SizedBox(height: 8.v),
                    Container(
                        width: 333.h,
                        margin: EdgeInsets.only(left: 19.h, right: 23.h),
                        child: Text("msg_lorem_ipsum_dolor".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodyMedium!
                                .copyWith(height: 1.42))),
                    SizedBox(height: 13.v),
                    CustomElevatedButton(
                        height: 64.v,
                        text: "lbl_start".tr,
                        margin: EdgeInsets.symmetric(horizontal: 15.h),
                        buttonStyle: CustomButtonStyles.fillPrimary,
                        buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
                        onPressed: () {
                          onTapStart(context);
                        }),
                    SizedBox(height: 5.v)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildOnboardingStack(BuildContext context) {
    return SizedBox(
        height: 419.v,
        width: 376.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 400.v,
                  width: 376.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(34.h),
                      border:
                          Border.all(color: appTheme.black90001, width: 2.h)))),
          CustomImageView(
              imagePath: ImageConstant.imgTheLittleThings,
              height: 398.v,
              width: 330.h,
              alignment: Alignment.topCenter)
        ]));
  }

  // void onTapStart(BuildContext context) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => HomeScreen()),
  //   );
  // }
  onTapStart(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
