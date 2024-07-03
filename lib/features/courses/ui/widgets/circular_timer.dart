import 'dart:async';
import 'dart:math';
import 'package:fithub/res/constants/constants.dart';
import 'package:flutter/material.dart';

class CircularTimer extends StatefulWidget {
  final int? initialDurationSeconds;
  final int? reps;
  final ValueNotifier<bool> timerNotifier;

  const CircularTimer({Key? key, this.initialDurationSeconds, this.reps, required this.timerNotifier})
      : super(key: key);

  @override
  _CircularTimerState createState() => _CircularTimerState();
}

class _CircularTimerState extends State<CircularTimer> {
  Timer? _timer;
  late double _secondsRemaining;
  bool _isTimerRunning = true;

  @override
  void initState() {
    super.initState();
    _secondsRemaining = widget.initialDurationSeconds?.toDouble() ?? 0.0;
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining <= 0) {
        timer.cancel();
        setState(() {
          _isTimerRunning = false;
        });
        if (widget.initialDurationSeconds != null) {
          widget.timerNotifier.value = true;
        }
      } else {
        setState(() {
          _secondsRemaining -= 1;
        });
      }
    });
    setState(() {
      _isTimerRunning = true;
      widget.timerNotifier.value = false;
    });
  }

  void _stopTimer() {
    _timer?.cancel();
    setState(() {
      _isTimerRunning = false;
    });
    widget.timerNotifier.value = false;
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
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: widget.reps != null
                        ? '${widget.reps}'
                        : '${_secondsRemaining.toInt()}',
                      style: courseSubtitleStyle.copyWith(
                        fontSize: 80, fontWeight: FontWeight.w100, color: Colors.white, height: 1
                      ),
                    ),
                    TextSpan(
                      text: widget.reps != null
                        ? '\nrep'
                        : '\nsec',
                      style: courseSubtitleStyle.copyWith(
                        fontSize: 24, fontWeight: FontWeight.w300, color: Colors.white, height: 1
                      ),
                    )
                  ]
                ),
              ),
            ),
          ),
          if (widget.initialDurationSeconds != null)
            const SizedBox(height: 40),
          if (widget.initialDurationSeconds != null)
            InkWell(
              onTap: () {
                if (_isTimerRunning) {
                  _stopTimer();
                } else {
                  _startTimer();
                }
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