import 'bloc/get_quote_bloc.dart';
import 'models/get_quote_model.dart';
import 'package:flutter/material.dart';
import 'package:inspire_ver/core/app_export.dart';
import 'package:inspire_ver/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inspire_ver/widgets/app_bar/appbar_subtitle.dart';
import 'package:inspire_ver/widgets/app_bar/custom_app_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GetQuoteScreen extends StatelessWidget {
  const GetQuoteScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<GetQuoteBloc>(
        create: (context) =>
            GetQuoteBloc(GetQuoteState(getQuoteModelObj: GetQuoteModel()))
              ..add(GetQuoteInitialEvent()),
        child: GetQuoteScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetQuoteBloc, GetQuoteState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  height: 733.v,
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.h, vertical: 25.v),
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            height: 12.v,
                            margin: EdgeInsets.only(top: 243.v),
                            child: AnimatedSmoothIndicator(
                                activeIndex: 0,
                                count: 4,
                                effect: ScrollingDotsEffect(
                                    spacing: 4,
                                    activeDotColor: appTheme.gray50,
                                    dotColor: appTheme.gray50.withOpacity(0.46),
                                    activeDotScale: 1.7142857142857142,
                                    dotHeight: 7.v,
                                    dotWidth: 7.h)))),
                    Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 71.h, vertical: 215.v),
                            decoration: AppDecoration.fillPurple.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder27),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(height: 94.v),
                                  Text("lbl_tap_me".tr,
                                      style: theme.textTheme.displayLarge)
                                ])))
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
        title: AppbarSubtitle(text: "lbl_get_quote".tr));
  }




  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
