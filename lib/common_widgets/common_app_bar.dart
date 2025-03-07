import 'package:flutter/material.dart';

import '../config/theme/app_theme.dart';
import '../constants/app_assets.dart';
import 'circle_svg_icon_button.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<Widget>? actions;
  final Widget? leading;
  final bool centerTitle;

  const CommonAppBar({
    super.key,
    this.title,
    this.actions,
    this.leading,
    this.centerTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.of(context);

    return AppBar(
      elevation: 0,
      titleSpacing: 0.0,
      centerTitle: centerTitle,
      backgroundColor: theme.colors.background,
      surfaceTintColor: Colors.transparent,
      leading: Center(
        child: leading ??
            CircleSvgIconButton(
              iconPath: AppIcons.leftArrow,
              onTap: Navigator.of(context).maybePop,
            ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 4.0),
        child: Text(
          title ?? "",
          maxLines: 1,
          style: theme.textTheme.header1,
        ),
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
