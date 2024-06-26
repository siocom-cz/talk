import "package:flutter/material.dart";
import "package:talk/ui/scheme.ext.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff8f4a4c),
      surfaceTint: Color(0xff8f4a4c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdad9),
      onPrimaryContainer: Color(0xff3b080e),
      secondary: Color(0xff775656),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdad9),
      onSecondaryContainer: Color(0xff2c1515),
      tertiary: Color(0xff8c4a5f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffd9e2),
      onTertiaryContainer: Color(0xff3a071d),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfffff8f7),
      onBackground: Color(0xff221919),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff221919),
      surfaceVariant: Color(0xfff4dddd),
      onSurfaceVariant: Color(0xff524343),
      outline: Color(0xff857372),
      outlineVariant: Color(0xffd7c1c1),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2e),
      inverseOnSurface: Color(0xffffedec),
      inversePrimary: Color(0xffffb3b3),
      primaryFixed: Color(0xffffdad9),
      onPrimaryFixed: Color(0xff3b080e),
      primaryFixedDim: Color(0xffffb3b3),
      onPrimaryFixedVariant: Color(0xff733336),
      secondaryFixed: Color(0xffffdad9),
      onSecondaryFixed: Color(0xff2c1515),
      secondaryFixedDim: Color(0xffe6bdbc),
      onSecondaryFixedVariant: Color(0xff5d3f3f),
      tertiaryFixed: Color(0xffffd9e2),
      onTertiaryFixed: Color(0xff3a071d),
      tertiaryFixedDim: Color(0xffffb1c7),
      onTertiaryFixedVariant: Color(0xff703348),
      surfaceDim: Color(0xffe8d6d5),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f0),
      surfaceContainer: Color(0xfffceae9),
      surfaceContainerHigh: Color(0xfff6e4e3),
      surfaceContainerHighest: Color(0xfff0dede),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff6e2f32),
      surfaceTint: Color(0xff8f4a4c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffaa5f61),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff583b3b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff8f6c6c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff6b2f44),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffa65f76),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff8f7),
      onBackground: Color(0xff221919),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff221919),
      surfaceVariant: Color(0xfff4dddd),
      onSurfaceVariant: Color(0xff4e3f3f),
      outline: Color(0xff6c5b5b),
      outlineVariant: Color(0xff897676),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2e),
      inverseOnSurface: Color(0xffffedec),
      inversePrimary: Color(0xffffb3b3),
      primaryFixed: Color(0xffaa5f61),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff8d474a),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff8f6c6c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff745454),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xffa65f76),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff89475d),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe8d6d5),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f0),
      surfaceContainer: Color(0xfffceae9),
      surfaceContainerHigh: Color(0xfff6e4e3),
      surfaceContainerHighest: Color(0xfff0dede),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff440f14),
      surfaceTint: Color(0xff8f4a4c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6e2f32),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff341b1c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff583b3b),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff420e23),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff6b2f44),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      background: Color(0xfffff8f7),
      onBackground: Color(0xff221919),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff000000),
      surfaceVariant: Color(0xfff4dddd),
      onSurfaceVariant: Color(0xff2e2121),
      outline: Color(0xff4e3f3f),
      outlineVariant: Color(0xff4e3f3f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2e),
      inverseOnSurface: Color(0xffffffff),
      inversePrimary: Color(0xffffe6e6),
      primaryFixed: Color(0xff6e2f32),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff52191d),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff583b3b),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff402626),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff6b2f44),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff50192e),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe8d6d5),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f0),
      surfaceContainer: Color(0xfffceae9),
      surfaceContainerHigh: Color(0xfff6e4e3),
      surfaceContainerHighest: Color(0xfff0dede),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb3b3),
      surfaceTint: Color(0xffffb3b3),
      onPrimary: Color(0xff561d21),
      primaryContainer: Color(0xff733336),
      onPrimaryContainer: Color(0xffffdad9),
      secondary: Color(0xffe6bdbc),
      onSecondary: Color(0xff44292a),
      secondaryContainer: Color(0xff5d3f3f),
      onSecondaryContainer: Color(0xffffdad9),
      tertiary: Color(0xffffb1c7),
      onTertiary: Color(0xff541d31),
      tertiaryContainer: Color(0xff703348),
      onTertiaryContainer: Color(0xffffd9e2),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff1a1111),
      onBackground: Color(0xfff0dede),
      surface: Color(0xff1a1111),
      onSurface: Color(0xfff0dede),
      surfaceVariant: Color(0xff524343),
      onSurfaceVariant: Color(0xffd7c1c1),
      outline: Color(0xffa08c8c),
      outlineVariant: Color(0xff524343),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dede),
      inverseOnSurface: Color(0xff382e2e),
      inversePrimary: Color(0xff8f4a4c),
      primaryFixed: Color(0xffffdad9),
      onPrimaryFixed: Color(0xff3b080e),
      primaryFixedDim: Color(0xffffb3b3),
      onPrimaryFixedVariant: Color(0xff733336),
      secondaryFixed: Color(0xffffdad9),
      onSecondaryFixed: Color(0xff2c1515),
      secondaryFixedDim: Color(0xffe6bdbc),
      onSecondaryFixedVariant: Color(0xff5d3f3f),
      tertiaryFixed: Color(0xffffd9e2),
      onTertiaryFixed: Color(0xff3a071d),
      tertiaryFixedDim: Color(0xffffb1c7),
      onTertiaryFixedVariant: Color(0xff703348),
      surfaceDim: Color(0xff1a1111),
      surfaceBright: Color(0xff423736),
      surfaceContainerLowest: Color(0xff140c0c),
      surfaceContainerLow: Color(0xff221919),
      surfaceContainer: Color(0xff271d1d),
      surfaceContainerHigh: Color(0xff322827),
      surfaceContainerHighest: Color(0xff3d3232),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb9b9),
      surfaceTint: Color(0xffffb3b3),
      onPrimary: Color(0xff340309),
      primaryContainer: Color(0xffcb7a7c),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffebc1c0),
      onSecondary: Color(0xff261010),
      secondaryContainer: Color(0xffad8887),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffffb7cb),
      onTertiary: Color(0xff330217),
      tertiaryContainer: Color(0xffc67b92),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff1a1111),
      onBackground: Color(0xfff0dede),
      surface: Color(0xff1a1111),
      onSurface: Color(0xfffff9f9),
      surfaceVariant: Color(0xff524343),
      onSurfaceVariant: Color(0xffdcc6c5),
      outline: Color(0xffb29e9e),
      outlineVariant: Color(0xff917f7e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dede),
      inverseOnSurface: Color(0xff322827),
      inversePrimary: Color(0xff743437),
      primaryFixed: Color(0xffffdad9),
      onPrimaryFixed: Color(0xff2c0105),
      primaryFixedDim: Color(0xffffb3b3),
      onPrimaryFixedVariant: Color(0xff5e2326),
      secondaryFixed: Color(0xffffdad9),
      onSecondaryFixed: Color(0xff200b0b),
      secondaryFixedDim: Color(0xffe6bdbc),
      onSecondaryFixedVariant: Color(0xff4a2f2f),
      tertiaryFixed: Color(0xffffd9e2),
      onTertiaryFixed: Color(0xff2b0012),
      tertiaryFixedDim: Color(0xffffb1c7),
      onTertiaryFixedVariant: Color(0xff5c2237),
      surfaceDim: Color(0xff1a1111),
      surfaceBright: Color(0xff423736),
      surfaceContainerLowest: Color(0xff140c0c),
      surfaceContainerLow: Color(0xff221919),
      surfaceContainer: Color(0xff271d1d),
      surfaceContainerHigh: Color(0xff322827),
      surfaceContainerHighest: Color(0xff3d3232),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9f9),
      surfaceTint: Color(0xffffb3b3),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffb9b9),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9f9),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffebc1c0),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9f9),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffffb7cb),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      background: Color(0xff1a1111),
      onBackground: Color(0xfff0dede),
      surface: Color(0xff1a1111),
      onSurface: Color(0xffffffff),
      surfaceVariant: Color(0xff524343),
      onSurfaceVariant: Color(0xfffff9f9),
      outline: Color(0xffdcc6c5),
      outlineVariant: Color(0xffdcc6c5),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dede),
      inverseOnSurface: Color(0xff000000),
      inversePrimary: Color(0xff4e171b),
      primaryFixed: Color(0xffffe0df),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb9b9),
      onPrimaryFixedVariant: Color(0xff340309),
      secondaryFixed: Color(0xffffe0df),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffebc1c0),
      onSecondaryFixedVariant: Color(0xff261010),
      tertiaryFixed: Color(0xffffdfe6),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffffb7cb),
      onTertiaryFixedVariant: Color(0xff330217),
      surfaceDim: Color(0xff1a1111),
      surfaceBright: Color(0xff423736),
      surfaceContainerLowest: Color(0xff140c0c),
      surfaceContainerLow: Color(0xff221919),
      surfaceContainer: Color(0xff271d1d),
      surfaceContainerHigh: Color(0xff322827),
      surfaceContainerHighest: Color(0xff3d3232),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }

  static MaterialScheme lightGreenScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff436900),
      surfaceTint: Color(0xff436900),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff8fd31f),
      onPrimaryContainer: Color(0xff223700),
      secondary: Color(0xff486819),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffccf394),
      onSecondaryContainer: Color(0xff355302),
      tertiary: Color(0xff006d36),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff24dc77),
      onTertiaryContainer: Color(0xff003b1a),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfff7fbe8),
      onBackground: Color(0xff191d12),
      surface: Color(0xfff7fbe8),
      onSurface: Color(0xff191d12),
      surfaceVariant: Color(0xffdee6cb),
      onSurfaceVariant: Color(0xff424936),
      outline: Color(0xff727a64),
      outlineVariant: Color(0xffc2cab0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d3226),
      inverseOnSurface: Color(0xffeff3e0),
      inversePrimary: Color(0xff95da27),
      primaryFixed: Color(0xffb0f746),
      onPrimaryFixed: Color(0xff111f00),
      primaryFixedDim: Color(0xff95da27),
      onPrimaryFixedVariant: Color(0xff324f00),
      secondaryFixed: Color(0xffc8ef90),
      onSecondaryFixed: Color(0xff111f00),
      secondaryFixedDim: Color(0xffadd377),
      onSecondaryFixedVariant: Color(0xff324f00),
      tertiaryFixed: Color(0xff60ff99),
      onTertiaryFixed: Color(0xff00210c),
      tertiaryFixedDim: Color(0xff30e27d),
      onTertiaryFixedVariant: Color(0xff005227),
      surfaceDim: Color(0xffd8dcca),
      surfaceBright: Color(0xfff7fbe8),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f6e3),
      surfaceContainer: Color(0xffecf0dd),
      surfaceContainerHigh: Color(0xffe6ead8),
      surfaceContainerHighest: Color(0xffe0e5d2),
    );
  }

  ThemeData lightGreen() {
    return theme(lightGreenScheme().toColorScheme());
  }

  static MaterialScheme darkGreenScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffa6ed3b),
      surfaceTint: Color(0xff95da27),
      onPrimary: Color(0xff213600),
      primaryContainer: Color(0xff80c100),
      onPrimaryContainer: Color(0xff182900),
      secondary: Color(0xffadd377),
      onSecondary: Color(0xff213600),
      secondaryContainer: Color(0xff2c4600),
      onSecondaryContainer: Color(0xffbae083),
      tertiary: Color(0xff4bf58d),
      onTertiary: Color(0xff003919),
      tertiaryContainer: Color(0xff00c96a),
      onTertiaryContainer: Color(0xff002b12),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff10150a),
      onBackground: Color(0xffe0e5d2),
      surface: Color(0xff10150a),
      onSurface: Color(0xffe0e5d2),
      surfaceVariant: Color(0xff424936),
      onSurfaceVariant: Color(0xffc2cab0),
      outline: Color(0xff8c947c),
      outlineVariant: Color(0xff424936),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e5d2),
      inverseOnSurface: Color(0xff2d3226),
      inversePrimary: Color(0xff436900),
      primaryFixed: Color(0xffb0f746),
      onPrimaryFixed: Color(0xff111f00),
      primaryFixedDim: Color(0xff95da27),
      onPrimaryFixedVariant: Color(0xff324f00),
      secondaryFixed: Color(0xffc8ef90),
      onSecondaryFixed: Color(0xff111f00),
      secondaryFixedDim: Color(0xffadd377),
      onSecondaryFixedVariant: Color(0xff324f00),
      tertiaryFixed: Color(0xff60ff99),
      onTertiaryFixed: Color(0xff00210c),
      tertiaryFixedDim: Color(0xff30e27d),
      onTertiaryFixedVariant: Color(0xff005227),
      surfaceDim: Color(0xff10150a),
      surfaceBright: Color(0xff363b2e),
      surfaceContainerLowest: Color(0xff0b1006),
      surfaceContainerLow: Color(0xff191d12),
      surfaceContainer: Color(0xff1d2116),
      surfaceContainerHigh: Color(0xff272c1f),
      surfaceContainerHighest: Color(0xff32362a),
    );
  }

  ThemeData darkGreen() {
    return theme(darkGreenScheme().toColorScheme());
  }

  static MaterialScheme lightBlueScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(0xff004ab0),
      surfaceTint: Color(0xff0057ce),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff306fe5),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff4b5d8b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffbfcfff),
      onSecondaryContainer: Color(0xff283b67),
      tertiary: Color(0xff7e2597),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffa84fc0),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      background: Color(0xfffaf8ff),
      onBackground: Color(0xff191b23),
      surface: Color(0xfffaf8ff),
      onSurface: Color(0xff191b23),
      surfaceVariant: Color(0xffdfe2f2),
      onSurfaceVariant: Color(0xff424654),
      outline: Color(0xff737785),
      outlineVariant: Color(0xffc2c6d6),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3038),
      inverseOnSurface: Color(0xfff0f0fa),
      inversePrimary: Color(0xffb1c5ff),
      primaryFixed: Color(0xffdae2ff),
      onPrimaryFixed: Color(0xff001946),
      primaryFixedDim: Color(0xffb1c5ff),
      onPrimaryFixedVariant: Color(0xff00419e),
      secondaryFixed: Color(0xffdae2ff),
      onSecondaryFixed: Color(0xff021944),
      secondaryFixedDim: Color(0xffb3c6fa),
      onSecondaryFixedVariant: Color(0xff334572),
      tertiaryFixed: Color(0xfffcd7ff),
      onTertiaryFixed: Color(0xff340043),
      tertiaryFixedDim: Color(0xfff2afff),
      onTertiaryFixedVariant: Color(0xff73188d),
      surfaceDim: Color(0xffd9d9e3),
      surfaceBright: Color(0xfffaf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f3fd),
      surfaceContainer: Color(0xffededf7),
      surfaceContainerHigh: Color(0xffe7e7f2),
      surfaceContainerHighest: Color(0xffe1e2ec),
    );
  }

  ThemeData lightBlue() {
    return theme(lightBlueScheme().toColorScheme());
  }

  static MaterialScheme darkBlueScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb1c5ff),
      surfaceTint: Color(0xffb1c5ff),
      onPrimary: Color(0xff002c70),
      primaryContainer: Color(0xff2768df),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xffb3c6fa),
      onSecondary: Color(0xff1b2f5a),
      secondaryContainer: Color(0xff293c68),
      onSecondaryContainer: Color(0xffc0d0ff),
      tertiary: Color(0xfff2afff),
      onTertiary: Color(0xff55006b),
      tertiaryContainer: Color(0xffa249ba),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      background: Color(0xff11131a),
      onBackground: Color(0xffe1e2ec),
      surface: Color(0xff11131a),
      onSurface: Color(0xffe1e2ec),
      surfaceVariant: Color(0xff424654),
      onSurfaceVariant: Color(0xffc2c6d6),
      outline: Color(0xff8c909f),
      outlineVariant: Color(0xff424654),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e2ec),
      inverseOnSurface: Color(0xff2e3038),
      inversePrimary: Color(0xff0057ce),
      primaryFixed: Color(0xffdae2ff),
      onPrimaryFixed: Color(0xff001946),
      primaryFixedDim: Color(0xffb1c5ff),
      onPrimaryFixedVariant: Color(0xff00419e),
      secondaryFixed: Color(0xffdae2ff),
      onSecondaryFixed: Color(0xff021944),
      secondaryFixedDim: Color(0xffb3c6fa),
      onSecondaryFixedVariant: Color(0xff334572),
      tertiaryFixed: Color(0xfffcd7ff),
      onTertiaryFixed: Color(0xff340043),
      tertiaryFixedDim: Color(0xfff2afff),
      onTertiaryFixedVariant: Color(0xff73188d),
      surfaceDim: Color(0xff11131a),
      surfaceBright: Color(0xff373941),
      surfaceContainerLowest: Color(0xff0c0e15),
      surfaceContainerLow: Color(0xff191b23),
      surfaceContainer: Color(0xff1d1f27),
      surfaceContainerHigh: Color(0xff272a31),
      surfaceContainerHighest: Color(0xff32343c),
    );
  }

  ThemeData darkBlue() {
    return theme(darkBlueScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.surfaceTint,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.onSecondaryContainer,
    required this.tertiary,
    required this.onTertiary,
    required this.tertiaryContainer,
    required this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    required this.surfaceVariant,
    required this.onSurfaceVariant,
    required this.outline,
    required this.outlineVariant,
    required this.shadow,
    required this.scrim,
    required this.inverseSurface,
    required this.inverseOnSurface,
    required this.inversePrimary,
    required this.primaryFixed,
    required this.onPrimaryFixed,
    required this.primaryFixedDim,
    required this.onPrimaryFixedVariant,
    required this.secondaryFixed,
    required this.onSecondaryFixed,
    required this.secondaryFixedDim,
    required this.onSecondaryFixedVariant,
    required this.tertiaryFixed,
    required this.onTertiaryFixed,
    required this.tertiaryFixedDim,
    required this.onTertiaryFixedVariant,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
