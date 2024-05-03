/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/add.svg
  SvgGenImage get add => const SvgGenImage('assets/icons/add.svg');

  /// File path: assets/icons/calendar.svg
  SvgGenImage get calendar => const SvgGenImage('assets/icons/calendar.svg');

  /// File path: assets/icons/change.svg
  SvgGenImage get change => const SvgGenImage('assets/icons/change.svg');

  /// File path: assets/icons/check_circle.svg
  SvgGenImage get checkCircle =>
      const SvgGenImage('assets/icons/check_circle.svg');

  /// File path: assets/icons/close.svg
  SvgGenImage get close => const SvgGenImage('assets/icons/close.svg');

  /// File path: assets/icons/earth.svg
  SvgGenImage get earth => const SvgGenImage('assets/icons/earth.svg');

  /// File path: assets/icons/filter.svg
  SvgGenImage get filter => const SvgGenImage('assets/icons/filter.svg');

  /// File path: assets/icons/hot.svg
  SvgGenImage get hot => const SvgGenImage('assets/icons/hot.svg');

  /// File path: assets/icons/hotel.svg
  SvgGenImage get hotel => const SvgGenImage('assets/icons/hotel.svg');

  /// File path: assets/icons/left_arrow.svg
  SvgGenImage get leftArrow => const SvgGenImage('assets/icons/left_arrow.svg');

  /// File path: assets/icons/location.svg
  SvgGenImage get location => const SvgGenImage('assets/icons/location.svg');

  /// File path: assets/icons/notifications.svg
  SvgGenImage get notifications =>
      const SvgGenImage('assets/icons/notifications.svg');

  /// File path: assets/icons/person.svg
  SvgGenImage get person => const SvgGenImage('assets/icons/person.svg');

  /// File path: assets/icons/plane.svg
  SvgGenImage get plane => const SvgGenImage('assets/icons/plane.svg');

  /// File path: assets/icons/plane2.svg
  SvgGenImage get plane2 => const SvgGenImage('assets/icons/plane2.svg');

  /// File path: assets/icons/profile.svg
  SvgGenImage get profile => const SvgGenImage('assets/icons/profile.svg');

  /// File path: assets/icons/right_arrow.svg
  SvgGenImage get rightArrow =>
      const SvgGenImage('assets/icons/right_arrow.svg');

  /// File path: assets/icons/route.svg
  SvgGenImage get route => const SvgGenImage('assets/icons/route.svg');

  /// File path: assets/icons/schedule.svg
  SvgGenImage get schedule => const SvgGenImage('assets/icons/schedule.svg');

  /// File path: assets/icons/search.svg
  SvgGenImage get search => const SvgGenImage('assets/icons/search.svg');

  /// File path: assets/icons/share.svg
  SvgGenImage get share => const SvgGenImage('assets/icons/share.svg');

  /// File path: assets/icons/tooltip.svg
  SvgGenImage get tooltip => const SvgGenImage('assets/icons/tooltip.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        add,
        calendar,
        change,
        checkCircle,
        close,
        earth,
        filter,
        hot,
        hotel,
        leftArrow,
        location,
        notifications,
        person,
        plane,
        plane2,
        profile,
        rightArrow,
        route,
        schedule,
        search,
        share,
        tooltip
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
