import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_movie_app/presentation/style/colors.dart';

class ShimmerWidget extends StatefulWidget {
  final double height;

  const ShimmerWidget({
    super.key,
    required this.height,
  });

  @override
  State<ShimmerWidget> createState() => _ShimmerWidgetState();
}

class _ShimmerWidgetState extends State<ShimmerWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    )..addStatusListener((AnimationStatus status) {
        if (status != AnimationStatus.completed) {
          return;
        }
        _controller.repeat();
      });
    _controller.forward();
  }

  @override
  void didUpdateWidget(ShimmerWidget oldWidget) {
    _controller.forward();
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      child: Container(height: widget.height, color: gray950),
      builder: (BuildContext context, Widget? child) => _Shimmer(
        percent: _controller.value,
        child: child,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

@immutable
class _Shimmer extends SingleChildRenderObjectWidget {
  final double percent;

  const _Shimmer({
    super.child,
    required this.percent,
  });

  @override
  _ShimmerFilter createRenderObject(BuildContext context) {
    return _ShimmerFilter(percent);
  }

  @override
  void updateRenderObject(BuildContext context, _ShimmerFilter shimmer) {
    shimmer.percent = percent;
  }
}

class _ShimmerFilter extends RenderProxyBox {
  double _percent;

  _ShimmerFilter(this._percent);

  Gradient _gradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [gray950, gray850.withOpacity(0.9), gray950],
    stops: const [0.0, 0.5, 1.0],
  );

  @override
  ShaderMaskLayer? get layer => super.layer as ShaderMaskLayer?;

  @override
  bool get alwaysNeedsCompositing => child != null;

  set percent(double newValue) {
    if (newValue == _percent) {
      return;
    }
    _percent = newValue;
    markNeedsPaint();
  }

  set gradient(Gradient newValue) {
    if (newValue == _gradient) {
      return;
    }
    _gradient = newValue;
    markNeedsPaint();
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    assert(needsCompositing);

    final double width = child!.size.width;
    final double height = child!.size.height;
    double dx = _offset(-width, width, _percent);
    double dy = 0.0;
    Rect rect = Rect.fromLTWH(dx - width, dy, 3 * width, height);

    layer ??= ShaderMaskLayer();
    layer!
      ..shader = _gradient.createShader(rect)
      ..maskRect = offset & size
      ..blendMode = BlendMode.srcIn;
    context.pushLayer(layer!, super.paint, offset);
  }

  double _offset(double start, double end, double percent) {
    return start + (end - start) * percent;
  }
}
