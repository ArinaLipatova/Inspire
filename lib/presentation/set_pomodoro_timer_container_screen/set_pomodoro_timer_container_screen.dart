import 'bloc/set_pomodoro_timer_container_bloc.dart';
import 'models/set_pomodoro_timer_container_model.dart';
import 'package:flutter/material.dart';
import 'package:inspire_ver/core/app_export.dart';
import 'package:inspire_ver/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inspire_ver/widgets/app_bar/appbar_subtitle.dart';
import 'package:inspire_ver/widgets/app_bar/custom_app_bar.dart';
import 'package:inspire_ver/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:async';

// class SetPomodoroTimerContainerScreen extends StatefulWidget {
//   const SetPomodoroTimerContainerScreen({Key? key}) : super(key: key);

// class SetPomodoroTimerContainerScreen extends StatefulWidget {
//   @override
//   _SetPomodoroTimerContainerScreenState createState() => _SetPomodoroTimerContainerScreenState();
// }

class SetPomodoroTimerContainerScreen extends StatefulWidget {
  static Widget builder(BuildContext context) {
    return SetPomodoroTimerContainerScreen(); // Замените на вашу реализацию
  }

  @override
  _SetPomodoroTimerContainerScreenState createState() =>
      _SetPomodoroTimerContainerScreenState();
}


//   static Widget builder(BuildContext context) {
//     return BlocProvider<SetPomodoroTimerContainerBloc>(
//         create: (context) => SetPomodoroTimerContainerBloc(
//             SetPomodoroTimerContainerState(
//                 setPomodoroTimerContainerModelObj:
//                     SetPomodoroTimerContainerModel()))
//           ..add(SetPomodoroTimerContainerInitialEvent()),
//         child: SetPomodoroTimerContainerScreen());
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<SetPomodoroTimerContainerBloc,
//         SetPomodoroTimerContainerState>(builder: (context, state) {
//       return SafeArea(
//           child: Scaffold(
//               appBar: _buildAppBar(context),
//               body: Container(
//                   width: double.maxFinite,
//                   padding: EdgeInsets.only(left: 62.h, top: 93.v, right: 62.h),
//                   child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                             height: 220.adaptSize,
//                             width: 220.adaptSize,
//                             margin: EdgeInsets.only(left: 18.h),
//                             child:
//                                 Stack(alignment: Alignment.center, children: [
//                               Align(
//                                   alignment: Alignment.bottomCenter,
//                                   child: Container(
//                                       height: 12.v,
//                                       margin: EdgeInsets.only(bottom: 33.v),
//                                       child: AnimatedSmoothIndicator(
//                                           activeIndex: 0,
//                                           count: 4,
//                                           effect: ScrollingDotsEffect(
//                                               spacing: 4,
//                                               activeDotColor: appTheme.gray50,
//                                               dotColor: appTheme.gray50
//                                                   .withOpacity(0.46),
//                                               activeDotScale:
//                                                   1.7142857142857142,
//                                               dotHeight: 7.v,
//                                               dotWidth: 7.h)))),
//                               Align(
//                                   alignment: Alignment.center,
//                                   child: SizedBox(
//                                       height: 220.adaptSize,
//                                       width: 220.adaptSize,
//                                       child: Stack(
//                                           alignment: Alignment.center,
//                                           children: [
//                                             Align(
//                                                 alignment: Alignment.center,
//                                                 child: SizedBox(
//                                                     height: 220.adaptSize,
//                                                     width: 220.adaptSize,
//                                                     child:
//                                                         CircularProgressIndicator(
//                                                             value: 0.3,
//                                                             backgroundColor:
//                                                                 appTheme
//                                                                     .indigo50))),
//                                             Align(
//                                                 alignment: Alignment.center,
//                                                 child: Text("lbl_32_10".tr,
//                                                     style: theme.textTheme
//                                                         .displayMedium))
//                                           ])))
//                             ])),
//                         SizedBox(height: 80.v),
//                         Padding(
//                             padding: EdgeInsets.only(left: 10.h),
//                             child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   _buildQuit(context, quitText: "lbl_pause".tr),
//                                   _buildQuit(context, quitText: "lbl_quit".tr)
//                                 ])),
//                         SizedBox(height: 5.v)
//                       ]))));
//     });
//   }
//
//   /// Section Widget
//   PreferredSizeWidget _buildAppBar(BuildContext context) {
//     return CustomAppBar(
//         leadingWidth: 76.h,
//         leading: AppbarLeadingIconbutton(
//             imagePath: ImageConstant.imgArrowLeft,
//             margin: EdgeInsets.only(left: 22.h, top: 1.v, bottom: 1.v),
//             onTap: () {
//               onTapArrowLeft(context);
//             }),
//         centerTitle: true,
//         title: AppbarSubtitle(text: "lbl_pomodoro_timer".tr));
//   }
//
//   /// Common widget
//   Widget _buildQuit(
//     BuildContext context, {
//     required String quitText,
//   }) {
//     return Column(children: [
//       CustomIconButton(
//           height: 75.adaptSize,
//           width: 75.adaptSize,
//           padding: EdgeInsets.all(22.h),
//           decoration: IconButtonStyleHelper.fillIndigo,
//           child: CustomImageView(imagePath: ImageConstant.imgSquare)),
//       SizedBox(height: 21.v),
//       Opacity(
//           opacity: 0.7,
//           child: Text(quitText,
//               style: theme.textTheme.titleMedium!
//                   .copyWith(color: appTheme.black900.withOpacity(0.6))))
//     ]);
//   }
//
//   /// Navigates to the previous screen.
//   onTapArrowLeft(BuildContext context) {
//     NavigatorService.goBack();
//   }
// }





// void main() {
//   runApp(MyApp());
// }
//
// class SetPomodoroTimerContainerScreen extends StatefulWidget {
//   @override
//   _SetPomodoroTimerContainerScreenState createState() => _SetPomodoroTimerContainerScreenState();
// }
//
class _SetPomodoroTimerContainerScreenState extends State<SetPomodoroTimerContainerScreen> {
  late Timer _timer;
  int _seconds = 45 * 60; // 5 минут в секундах
  bool _isRunning = false;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), _updateTimer);
  }

  void _updateTimer(Timer timer) {
    if (_seconds > 0 && _isRunning) {
      setState(() {
        _seconds--;
      });
    } else {
      _timer.cancel();
      _isRunning = false;
      setState(() {
        _seconds = 45 * 60; // Сброс таймера до изначального значения
      });
    }
  }

  void _startPauseTimer() {
    setState(() {
      if (_isRunning) {
        _timer.cancel();
      } else {
        _timer = Timer.periodic(Duration(seconds: 1), _updateTimer);
      }
      _isRunning = !_isRunning;
    });
  }

  void _stopTimer() {
    _timer.cancel();
    _isRunning = false;
    setState(() {
      _seconds = 45 * 60; // Сброс таймера до изначального значения
    });
  }


  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 76.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 22.h, top: 1.v, bottom: 1.v),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
      centerTitle: true,
    );
  }


  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: Text('Pomodoro Timer'),
  //       ),
  //       body: Center(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: _buildAppBar(context), // добавлен вызов _buildAppBar в AppBar
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${(_seconds ~/ 60).toString().padLeft(2, '0')}:${(_seconds % 60).toString().padLeft(2, '0')}',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _startPauseTimer,
                child: Text(_isRunning ? 'Pause' : 'Start'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: _stopTimer,
                child: Text('Stop'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

