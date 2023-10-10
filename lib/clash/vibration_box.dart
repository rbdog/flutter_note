import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// 左右に揺れるアニメーション
class VibrationBox extends HookWidget {
  const VibrationBox({
    super.key,
    this.repeatTimes,
    this.antiphase = false,
    this.amplitude = 10,
    this.periodMillisec = 200,
    required this.child,
  });

  // 繰り返し回数
  final int? repeatTimes;
  // 逆向きに動かす
  final bool antiphase;
  // 揺れ幅
  final double amplitude;
  // 一往復の時間
  final int periodMillisec;
  // 揺らしたいウィジェット
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final animation = useVibration(
      repeatTimes: repeatTimes,
      antiphase: antiphase,
      periodMillisec: periodMillisec,
    );

    return AnimatedBuilder(
      animation: animation,
      builder: (_, child) => Transform.translate(
        offset: Offset(animation.value * amplitude, 0),
        child: child,
      ),
      child: child,
    );
  }
}

/// アニメーションを繰り返す用の拡張
extension RepeatTimes on AnimationController {
  TickerFuture repeatTimes(int? times) {
    final endCount = times ?? double.infinity;
    var count = 0;
    addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          reverse();
        }
        if (status == AnimationStatus.dismissed) {
          count++;
          if (count < endCount) forward();
        }
      },
    );
    return forward();
  }
}

/// カスタムHook
class _Hook extends Hook<Animation<double>> {
  const _Hook({
    required this.period,
    required this.repeatTimes,
    required this.antiphase,
    required this.controller,
  });

  final int period;
  final int? repeatTimes;
  final bool antiphase;
  final AnimationController controller;

  @override
  _State createState() => _State();
}

class _State extends HookState<Animation<double>, _Hook> {
  late Animation<double> _animation;

  @override
  void initHook() {
    super.initHook();
    final tween = Tween(
      begin: hook.antiphase ? 1.0 : -1.0,
      end: hook.antiphase ? -1.0 : 1.0,
    );
    final curved = CurvedAnimation(
      parent: hook.controller,
      curve: Curves.linear,
    );
    _animation = tween.animate(curved);
    hook.controller.repeatTimes(hook.repeatTimes);
  }

  @override
  Animation<double> build(BuildContext context) {
    return _animation;
  }
}

Animation<double> useVibration({
  required int periodMillisec,
  required int? repeatTimes,
  required bool antiphase,
}) {
  final duration = Duration(milliseconds: periodMillisec);
  final controller = useAnimationController(duration: duration);
  return use(
    _Hook(
      repeatTimes: repeatTimes,
      antiphase: antiphase,
      period: periodMillisec,
      controller: controller,
    ),
  );
}
