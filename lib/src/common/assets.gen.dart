/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsAnimationGen {
  const $AssetsAnimationGen();

  $AssetsAnimationLottieGen get lottie => const $AssetsAnimationLottieGen();
  $AssetsAnimationRiveGen get rive => const $AssetsAnimationRiveGen();
}

class $AssetsColorGen {
  const $AssetsColorGen();

  /// File path: assets/color/colors.xml
  String get colors => 'assets/color/colors.xml';

  /// List of all assets
  List<String> get values => [colors];
}

class $AssetsFontGen {
  const $AssetsFontGen();

  /// File path: assets/font/empty.md
  String get empty => 'assets/font/empty.md';

  /// List of all assets
  List<String> get values => [empty];
}

class $AssetsImageGen {
  const $AssetsImageGen();

  $AssetsImageRasterGen get raster => const $AssetsImageRasterGen();
  $AssetsImageVectorGen get vector => const $AssetsImageVectorGen();
}

class $AssetsMultimediaGen {
  const $AssetsMultimediaGen();

  $AssetsMultimediaAudioGen get audio => const $AssetsMultimediaAudioGen();
  $AssetsMultimediaVideoGen get video => const $AssetsMultimediaVideoGen();
}

class $AssetsPdfGen {
  const $AssetsPdfGen();

  /// File path: assets/pdf/empty.pdf
  String get empty => 'assets/pdf/empty.pdf';

  /// List of all assets
  List<String> get values => [empty];
}

class $AssetsTxtGen {
  const $AssetsTxtGen();

  /// File path: assets/txt/empty.md
  String get empty => 'assets/txt/empty.md';

  /// List of all assets
  List<String> get values => [empty];
}

class $AssetsAnimationLottieGen {
  const $AssetsAnimationLottieGen();

  /// File path: assets/animation/lottie/empty.md
  String get empty => 'assets/animation/lottie/empty.md';

  /// List of all assets
  List<String> get values => [empty];
}

class $AssetsAnimationRiveGen {
  const $AssetsAnimationRiveGen();

  /// File path: assets/animation/rive/empty.md
  String get empty => 'assets/animation/rive/empty.md';

  /// List of all assets
  List<String> get values => [empty];
}

class $AssetsImageRasterGen {
  const $AssetsImageRasterGen();

  /// File path: assets/image/raster/agile-naming.jpg
  AssetGenImage get agileNaming =>
      const AssetGenImage('assets/image/raster/agile-naming.jpg');

  /// File path: assets/image/raster/improving-names.png
  AssetGenImage get improvingNames =>
      const AssetGenImage('assets/image/raster/improving-names.png');

  /// File path: assets/image/raster/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/image/raster/logo.png');

  /// File path: assets/image/raster/naming-as-a-process.png
  AssetGenImage get namingAsAProcess =>
      const AssetGenImage('assets/image/raster/naming-as-a-process.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [agileNaming, improvingNames, logo, namingAsAProcess];
}

class $AssetsImageVectorGen {
  const $AssetsImageVectorGen();

  /// File path: assets/image/vector/empty.md
  String get empty => 'assets/image/vector/empty.md';

  /// List of all assets
  List<String> get values => [empty];
}

class $AssetsMultimediaAudioGen {
  const $AssetsMultimediaAudioGen();

  /// File path: assets/multimedia/audio/empty.md
  String get empty => 'assets/multimedia/audio/empty.md';

  /// List of all assets
  List<String> get values => [empty];
}

class $AssetsMultimediaVideoGen {
  const $AssetsMultimediaVideoGen();

  /// File path: assets/multimedia/video/empty.md
  String get empty => 'assets/multimedia/video/empty.md';

  /// List of all assets
  List<String> get values => [empty];
}

class Assets {
  Assets._();

  static const $AssetsAnimationGen animation = $AssetsAnimationGen();
  static const $AssetsColorGen color = $AssetsColorGen();
  static const $AssetsFontGen font = $AssetsFontGen();
  static const $AssetsImageGen image = $AssetsImageGen();
  static const $AssetsMultimediaGen multimedia = $AssetsMultimediaGen();
  static const $AssetsPdfGen pdf = $AssetsPdfGen();
  static const $AssetsTxtGen txt = $AssetsTxtGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
