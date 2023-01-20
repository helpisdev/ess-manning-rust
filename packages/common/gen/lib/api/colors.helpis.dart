// GENERATED CODE FILE -- DO NOT EDIT BY HAND!!!

// ignore_for_file: public_member_api_docs

import 'dart:core';
import 'dart:ui';
import './colors.gen.dart';

/// User defined available themes for ess.
enum $Theme {
  light,
  dark;
}

enum ColorProperty {
  primary,
  primaryContainer,
  secondary,
  secondaryContainer,
  tertiary,
  tertiaryContainer,
  appBarColor,
  error;
}

/// Predefined theme properties. You can use the [ThemeColor.of] static
/// method to retrieve the [ThemeColor.color] for a specified property by
/// providing a [ThemeColor.tag] for a given [$Theme].
enum ThemeColor {
  lightSteelBlue(
    color: ColorName.lightSteelBlue,
    tags: <ColorProperty>{ColorProperty.primary},
    theme: $Theme.light,
  ),
  babyBlueEyes(
    color: ColorName.babyBlueEyes,
    tags: <ColorProperty>{ColorProperty.primary},
    theme: $Theme.dark,
  ),
  palePink(
    color: ColorName.palePink,
    tags: <ColorProperty>{ColorProperty.primaryContainer},
    theme: $Theme.light,
  ),
  prussianBlue(
    color: ColorName.prussianBlue,
    tags: <ColorProperty>{ColorProperty.primaryContainer},
    theme: $Theme.dark,
  ),
  coconut(
    color: ColorName.coconut,
    tags: <ColorProperty>{ColorProperty.secondary},
    theme: $Theme.light,
  ),
  macaroniAndCheese(
    color: ColorName.macaroniAndCheese,
    tags: <ColorProperty>{ColorProperty.secondary},
    theme: $Theme.dark,
  ),
  quickSilver(
    color: ColorName.quickSilver,
    tags: <ColorProperty>{
      ColorProperty.secondaryContainer,
      ColorProperty.appBarColor
    },
    theme: $Theme.light,
  ),
  kenyanCopper(
    color: ColorName.kenyanCopper,
    tags: <ColorProperty>{
      ColorProperty.secondaryContainer,
      ColorProperty.appBarColor
    },
    theme: $Theme.dark,
  ),
  paleChestnut(
    color: ColorName.paleChestnut,
    tags: <ColorProperty>{ColorProperty.tertiary},
    theme: $Theme.light,
  ),
  middleBlue(
    color: ColorName.middleBlue,
    tags: <ColorProperty>{ColorProperty.tertiary},
    theme: $Theme.dark,
  ),
  rhythm(
    color: ColorName.rhythm,
    tags: <ColorProperty>{ColorProperty.tertiaryContainer},
    theme: $Theme.light,
  ),
  midnightGreen(
    color: ColorName.midnightGreen,
    tags: <ColorProperty>{ColorProperty.tertiaryContainer},
    theme: $Theme.dark,
  ),
  alabamaCrimson(
    color: ColorName.alabamaCrimson,
    tags: <ColorProperty>{ColorProperty.error},
    theme: $Theme.light,
  ),
  cinnamonSatin(
    color: ColorName.cinnamonSatin,
    tags: <ColorProperty>{ColorProperty.error},
    theme: $Theme.dark,
  );

  const ThemeColor({
    required this.color,
    required this.tags,
    this.theme,
  });

  final Color color;
  final Set<ColorProperty> tags;
  final $Theme? theme;

  /// Returns the [color] of the [ThemeColor] that matches the specified
  /// [tag] and an optional [theme]. If [theme] isn't specified, and multiple
  /// matching properties are found, then a [StateError] is thrown. If [theme]
  /// is specified, but no [ThemeColor] of [tag] with a non-null
  /// [ThemeColor.theme] matches that [theme], then a [ThemeColor] of
  /// [tag] with a null [ThemeColor.theme] is returned if it exists, else an
  /// [UnsupportedError] is thrown. If the property isn't defined, then an
  /// [UnimplementedError] is thrown.
  static Color of(final ColorProperty tag, final $Theme? theme) {
    final List<ThemeColor> matches = ThemeColor.values
        .where(
          (final ThemeColor p) => p.tags.contains(tag),
        )
        .toList();
    if (matches.isNotEmpty) {
      if (matches.any((final ThemeColor p) => p.theme == theme)) {
        return matches
            .firstWhere(
              (final ThemeColor p) => p.theme == theme,
            )
            .color;
      }
      if (matches.any((final ThemeColor p) => p.theme == null)) {
        return matches
            .firstWhere(
              (final ThemeColor p) => p.theme == null,
            )
            .color;
      }
      throw UnsupportedError(
        'No property of tag: "${tag.name}" and theme: "$theme" '
        'or fallback property is found.',
      );
    }
    throw UnimplementedError('There is no property of tag: "${tag.name}".');
  }
}

/// Theme color properties of ess.
class EssColors {
  EssColors(this.theme);

  final $Theme? theme;

  Color get primary => ThemeColor.of(ColorProperty.primary, theme);
  Color get primaryContainer =>
      ThemeColor.of(ColorProperty.primaryContainer, theme);
  Color get secondary => ThemeColor.of(ColorProperty.secondary, theme);
  Color get secondaryContainer =>
      ThemeColor.of(ColorProperty.secondaryContainer, theme);
  Color get tertiary => ThemeColor.of(ColorProperty.tertiary, theme);
  Color get tertiaryContainer =>
      ThemeColor.of(ColorProperty.tertiaryContainer, theme);
  Color get appBarColor => ThemeColor.of(ColorProperty.appBarColor, theme);
  Color get error => ThemeColor.of(ColorProperty.error, theme);
}
