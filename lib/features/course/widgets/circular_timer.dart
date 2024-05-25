import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

class CircularTimer extends StatefulWidget {
  final int? initialDurationSeconds;
  final int? reps;

  const CircularTimer({Key? key, this.initialDurationSeconds, this.reps})
      : super(key: key);

  @override
  _CircularTimerState createState() => _CircularTimerState();
}

class _CircularTimerState extends State<CircularTimer> {
  late Timer _timer;
  late double _secondsRemaining;
  bool _isTimerRunning = false;

  @override
  void initState() {
    super.initState();
    if (widget.initialDurationSeconds != null) {
      _secondsRemaining = widget.initialDurationSeconds!.toDouble();
    }
  }

  @override
  void dispose() {
    if (_isTimerRunning) {
      _timer.cancel();
    }
    super.dispose();
  }

  void _startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      if (_secondsRemaining <= 0) {
        timer.cancel();
        setState(() {
          _isTimerRunning = false;
        });
      } else {
        setState(() {
          _secondsRemaining -= 1;
        });
      }
    });
    setState(() {
      _isTimerRunning = true;
    });
  }

  void _stopTimer() {
    _timer.cancel();
    setState(() {
      _isTimerRunning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomPaint(
            painter: TimerPainter(
              percent: widget.initialDurationSeconds != null
                  ? _secondsRemaining / widget.initialDurationSeconds!
                  : 1.0,
              strokeWidth: 5,
              isReps: widget.reps != null,
            ),
            child: Container(
              width: 175,
              height: 175,
              alignment: Alignment.center,
              child: Text(
                widget.reps != null
                    ? '${widget.reps} reps'
                    : '${_secondsRemaining.toInt()}',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF),
                ),
              ),
            ),
          ),
          if (widget.initialDurationSeconds != null)
            const SizedBox(height: 40),
          if (widget.initialDurationSeconds != null)
            InkWell(
              onTap: () {
                setState(() {
                  if (_isTimerRunning) {
                    _stopTimer();
                  } else {
                    _startTimer();
                  }
                });
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: _isTimerRunning
                        ? IconButton(
                            key: const Key('stop'),
                            iconSize: 40,
                            onPressed: _stopTimer,
                            icon: const Icon(Icons.stop, color: Colors.white),
                          )
                        : IconButton(
                            key: const Key('play'),
                            iconSize: 40,
                            onPressed: _startTimer,
                            icon: const Icon(Icons.play_arrow,
                                color: Colors.white),
                          ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class TimerPainter extends CustomPainter {
  final double percent;
  final double strokeWidth;
  final bool isReps;

  TimerPainter({
    required this.percent,
    required this.strokeWidth,
    required this.isReps,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint bgPaint = Paint()
      ..color = const Color(0xFF2C2C2E)
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: size.width / 2),
      0,
      2 * pi,
      false,
      bgPaint,
    );

    if (!isReps) {
      final Paint progressPaint = Paint()
        ..color = const Color(0xFFFF2424)
        ..strokeWidth = strokeWidth
        ..strokeCap = StrokeCap.round
        ..style = PaintingStyle.stroke;

      canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2),
            radius: size.width / 2),
        -pi / 2,
        2 * pi * percent,
        false,
        progressPaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
