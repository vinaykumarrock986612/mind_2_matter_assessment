import 'package:flutter/material.dart';

import 'app_state_widget.dart';
import 'gap.dart';

class FixedCrossAxisCountBuilder extends StatefulWidget {
  final int crossAxisCount;
  final int? itemCount;
  final NullableIndexedWidgetBuilder? itemBuilder;
  final List<Widget>? children;
  final double spacing;
  final double runSpacing;

  const FixedCrossAxisCountBuilder({
    super.key,
    required this.crossAxisCount,
    required this.itemCount,
    required this.itemBuilder,
    this.spacing = 0.0,
    this.runSpacing = 0.0,
  }) : children = null;

  const FixedCrossAxisCountBuilder.fromChildren({
    super.key,
    required this.crossAxisCount,
    required this.children,
    this.spacing = 0.0,
    this.runSpacing = 0.0,
  })  : itemBuilder = null,
        itemCount = null;

  @override
  State<FixedCrossAxisCountBuilder> createState() => _FixedCrossAxisCountBuilderState();
}

class _FixedCrossAxisCountBuilderState extends AppState<FixedCrossAxisCountBuilder> {
  @override
  Widget build(BuildContext context) {
    final itemCount = widget.itemCount ?? widget.children?.length ?? 0;
    final rowCount = (itemCount / widget.crossAxisCount).ceil();
    int k = 0;
    return Column(
      children: [
        for (int i = 0; i < rowCount; i++) ...[
          /// Vertical Spacing
          if (i != 0 && i < rowCount) VerticalGap(gap: widget.runSpacing),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int j = 0; j < widget.crossAxisCount; {j++, k++}) ...[
                /// Horizontal Spacing
                if (j != 0 && j < widget.crossAxisCount) HorizontalGap(gap: widget.spacing),

                /// Child
                Expanded(
                  child: (() {
                    if (k >= itemCount) return mNil;
                    return widget.itemBuilder?.call(context, k) ?? widget.children?[k] ?? const SizedBox();
                  }()),
                ),
              ],
            ],
          ),
        ],
      ],
    );
  }
}
