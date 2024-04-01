import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:inspire_ver/core/app_export.dart';
import 'package:inspire_ver/widgets/app_bar/appbar_title.dart';
import 'package:inspire_ver/widgets/app_bar/custom_app_bar.dart';
import 'package:inspire_ver/widgets/custom_elevated_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
        ..add(HomeInitialEvent()),
      child: HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.purple50,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(left: 22.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 21.v),
                            child: Column(
                              children: [
                                _buildAppBar(context),
                                SizedBox(height: 23.v),
                                _buildSetPomodoroTimer(context),
                                SizedBox(height: 15.v),
                                _buildGetTheQuoteOf(context),
                                SizedBox(height: 15.v),
                                _buildTaskManager(context),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgLine4,
                          height: 119.v,
                          width: 1.h,
                          margin: EdgeInsets.only(left: 21.h, bottom: 581.v),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }



/// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitle(
            text: "lbl_hello_user".tr, margin: EdgeInsets.only(left: 22.h, right: 22.v)),
        actions: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 22.h, vertical: 22.v),
              decoration: AppDecoration.fillRed
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder27),
              child: Opacity(
                  opacity: 0.4,
                  child: Container(
                      height: 56.adaptSize,
                      width: 56.adaptSize,
                      decoration: BoxDecoration(
                          color: appTheme.blueGray4007e,
                          borderRadius: BorderRadius.circular(28.h)))))
        ]);
  }

  /// Section Widget
  Widget _buildSetPomodoroTimer(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapSetPomodoroTimer(context);
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 2.h),
            padding: EdgeInsets.symmetric(vertical: 34.v),
            decoration: AppDecoration.outlineBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder27),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                  padding: EdgeInsets.only(top: 3.v, bottom: 7.v),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    SizedBox(
                        width: 152.h,
                        child: Text("msg_set_pomodoro_timer".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleLarge)),
                    SizedBox(height: 4.v),
                    SizedBox(
                        width: 160.h,
                        child: Text("msg_it_helps_you_to".tr,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles
                                .labelLargeOnErrorContainer
                                .copyWith(height: 1.07)
                        )
                    )

                  ]
                  )
                  ),


                  // Container(
                  //   height: 131.v,
                  //   width: 131.h,
                  //   margin: EdgeInsets.only(bottom: 3.v),
                  //   decoration: AppDecoration.outlineBlack90001,
                  //   child:
                  //   Stack(
                  //       alignment: Alignment.center, children: [
                  //     Align(
                  //     alignment: Alignment.center,
                  //     child: SizedBox(
                  //       height: 131.v,
                  //       width: 131.h,
                  //       child: CircularProgressIndicator(
                  //       value: 0.5,
                  //       backgroundColor: appTheme.indigo50)
                  //       )
                  //     ),
                  //     Align(
                  //     alignment: Alignment.center,
                  //     child: Text("lbl_32_10".tr,
                  //     style: theme.textTheme.headlineLarge))
                  //     ]
                  //   )
                  // )
                  Container(
                    height: 131.v,
                    width: 131.h,
                    margin: EdgeInsets.only(bottom: 3.v),
                    decoration: AppDecoration.outlineBlack90001,
                    child: AspectRatio(
                      aspectRatio: 1.0, // Соотношение сторон 1:1
                      child: Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: double.infinity,
                          width: double.infinity,
                          child: CircularProgressIndicator(
                            value: 0.5,
                            backgroundColor: appTheme.indigo50,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
            )
        )
    );
  }

  /// Section Widget
  Widget _buildGetTheQuoteOf(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapGetTheQuoteOf(context);
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 2.h),
            padding: EdgeInsets.symmetric(vertical: 13.v),
            decoration: AppDecoration.outlineBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder27),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 148.h,
                            child: Text("msg_get_the_quote_of".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleLarge)),
                        SizedBox(
                            width: 209.h,
                            child: Text("msg_the_right_phrase".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .labelLargeOnErrorContainer
                                    .copyWith(height: 1.07)))
                      ]),
                  CustomImageView(
                      imagePath: ImageConstant.imgLampLight,
                      height: 78.adaptSize,
                      width: 78.adaptSize,
                      margin: EdgeInsets.only(top: 2.v, bottom: 3.v))
                ])));
  }

  /// Section Widget
  Widget _buildTaskManager(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapTaskManager(context);
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 2.h),
            padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 13.v),
            decoration: AppDecoration.outlineBlack
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder27),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("msg_special_thoughts".tr,
                                  style: theme.textTheme.titleLarge),
                              Text("msg_to_keep_your_mind".tr,
                                  style: CustomTextStyles
                                      .labelLargeOnErrorContainer)
                            ]),
                        CustomElevatedButton(
                            height: 30.v,
                            width: 99.h,
                            text: "lbl_add_new".tr,
                            margin: EdgeInsets.only(bottom: 13.v),
                            rightIcon: Container(
                                margin: EdgeInsets.only(left: 3.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgClose,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize)),
                            buttonStyle: CustomButtonStyles.fillErrorContainer,
                            buttonTextStyle:
                                CustomTextStyles.labelLargeOnPrimary,
                            onPressed: (){
                              onTapAddnew(context);
              }
                        )

                      ])),
              SizedBox(height: 13.v),
              Container(
                  width: 303.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 2.v),
                  decoration: AppDecoration.fillBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Text("msg_it_s_better_to_have".tr,
                      style: theme.textTheme.labelLarge)),
              SizedBox(height: 6.v),
              Container(
                  margin: EdgeInsets.only(left: 3.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 2.v),
                  decoration: AppDecoration.fillBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        SizedBox(
                            width: 279.h,
                            child: Text("msg_it_s_better_to_have2".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.labelLarge!
                                    .copyWith(height: 1.07)))
                      ])),
              SizedBox(height: 7.v),
              Container(
                  width: 303.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 2.v),
                  decoration: AppDecoration.fillBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Text("msg_it_s_better_to_have".tr,
                      style: theme.textTheme.labelLarge)),
              SizedBox(height: 6.v),
              Container(
                  margin: EdgeInsets.only(left: 3.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 2.v),
                  decoration: AppDecoration.fillBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        SizedBox(
                            width: 279.h,
                            child: Text("msg_it_s_better_to_have3".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.labelLarge!
                                    .copyWith(height: 1.07)))
                      ]))
            ])));
  }

  /// Navigates to the setPomodoroTimerContainerScreen when the action is triggered.
  onTapSetPomodoroTimer(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.setPomodoroTimerContainerScreen,
    );
  }

  /// Navigates to the getQuoteScreen when the action is triggered.
  onTapGetTheQuoteOf(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.getQuoteScreen,
    );
  }

  onTapAddnew(BuildContext context){
    NavigatorService.pushNamed(
      AppRoutes.specialThoughtsTwoScreen
    );
  }


  /// Navigates to the specialThoughtsOneScreen when the action is triggered.
  onTapTaskManager(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.specialThoughtsOneScreen,
    );
  }
}
