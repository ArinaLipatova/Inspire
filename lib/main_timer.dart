import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class TimerApp extends StatefulWidget {
  @override
  _TimerAppState createState() => _TimerAppState();
}

class _TimerAppState extends State<TimerApp> {
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pomodoro Timer'),
        ),
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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TimerApp(),
    );
  }
}
