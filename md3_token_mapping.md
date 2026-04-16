# MD3 Token Mapping

## Scope

This file defines the current semantic mapping between:

- Compose `MaterialTheme.colorScheme`
- legacy XML theme items in `styles.xml`
- custom legacy attrs in `attrs.xml`
- the active theme mode chosen by `e.al(context)`

It is intended to be the working baseline for P0 theme alignment.

## Theme Modes

| Theme index | Meaning | Compose scheme | XML theme |
| --- | --- | --- | --- |
| `0` | Light Pink | `LightColors` | `AppTheme` |
| `1` | Dark Red | `DarkColors` | `AppThemeBlack` |
| `2` | Miracle Neon | `NeonLightColors` or `NeonDarkColors` | `AppThemeNeon` or `AppThemeNeonDark` |

## Theme Entry Points

- Preference source: `e.al(context)`
- Compose theme switch: `app/src/main/java/com/picacomic/fregata/compose/PicaComposeTheme.kt`
- Application theme switch: `app/src/main/java/com/picacomic/fregata/MyApplication.java`
- Legacy helper theme switch: `app/src/main/java/com/picacomic/fregata/utils/g.java`
- Settings write-back: `app/src/main/java/com/picacomic/fregata/compose/viewmodels/SettingsViewModel.kt`

## Current Architecture Status

The theme layer is currently shared by both:

- pure Compose screens
- Compose component wrappers
- Compose-hosted legacy Fragments via `LegacyFragmentHost.kt`

This means token changes must keep Compose and legacy Fragment pages visually aligned at the same time.

## Component Layer Status

The current Compose component baseline includes:

| 文件 | 导出组件 | 阶段 |
| --- | --- | --- |
| `PicaTopBar.kt` | `PicaTopBar` | P1 ✅ |
| `PicaButtons.kt` | `PicaPrimaryButton` | P1 ✅ |
| `PicaFields.kt` | `PicaTextField` | P1 ✅ |
| `PicaSurfaceContainers.kt` | `PicaScreenContainer` / `PicaSecondaryScreen` / `PicaCardSection` | P1 ✅ |
| `PicaListItem.kt` | `PicaValueListItem` / `PicaSwitchListItem` / `PicaRadioListItem` | P1 ✅ |
| `PicaDialogs.kt` | `PicaConfirmDialog` / `PicaSingleChoiceDialog` | P1 ✅ |
| `PicaFeedback.kt` | `PicaLoadingIndicator` / `PicaEmptyState` | P1 ✅ |

`SettingsScreen` 中原有的私有组件 `SettingsSingleChoiceDialog` / `SettingsValueRow` / `SettingsSwitchRow` 已替换为公共组件，并删除原私有实现。

## Secondary Route Status

In `MainActivity.kt`, several secondary routes currently use `LegacyFragmentHost` instead of direct Compose business pages, including:

- `Notification`
- `ComicList`
- `ComicDetail`
- `ProfileEdit`
- `ChangePin`
- `ChangePassword`
- `GameDetail`
- `Comment`
- `PicaApp`
- `PicaAppList`
- `ApkVersionList`
- `AnnouncementList`
- `Leaderboard`

Rule:

- Theme work must remain compatible with both Compose-hosted screens and Fragment-hosted screens.
- Component unification can continue in Compose, but interaction-heavy pages should not bypass proven Fragment behavior unless the matching ViewModel split is complete.

## Canonical Source Order

1. Compose semantic source: `PicaComposeTheme.kt`
2. Theme value source: `ComposeColors.kt`
3. Legacy theme binding: `styles.xml`
4. Legacy semantic attrs: `attrs.xml`

Rule:

- New UI should bind to semantic tokens first.
- Legacy XML should prefer theme attrs or custom semantic attrs, not direct fixed color resources.
- Direct `@color/colorPrimary*`, `@color/pink*`, `@color/peach` usage should be treated as migration debt unless the color is intentionally content-specific.

## Core Token Mapping

| MD3 token | Compose token | XML theme item | Legacy semantic attr | Notes |
| --- | --- | --- | --- | --- |
| `primary` | `colorScheme.primary` | `colorPrimary` | use `?colorPrimary` | Main brand/action color |
| `onPrimary` | `colorScheme.onPrimary` | none | none | Mostly Compose-only today |
| `primaryContainer` | `colorScheme.primaryContainer` | no direct Material item in current XML theme | `?custom_primary_container_color` | Use for chips, soft pills, top gradients |
| `onPrimaryContainer` | `colorScheme.onPrimaryContainer` | none | none | Compose-only today |
| `secondary` | `colorScheme.secondary` | `colorSecondary`, `colorAccent` | use `?colorSecondary` when possible | Secondary accent/action |
| `onSecondary` | `colorScheme.onSecondary` | none | none | Compose-only today |
| `secondaryContainer` | `colorScheme.secondaryContainer` | no direct Material item in current XML theme | `?custom_secondary_container_color` | Use for secondary soft chips |
| `tertiary` | `colorScheme.tertiary` | `colorTertiary` | use `?colorTertiary` | Reserved for special highlights |
| `background` | `colorScheme.background` | `android:windowBackground` | none | App/page background |
| `onBackground` | `colorScheme.onBackground` | none | none | Compose-only today |
| `surface` | `colorScheme.surface` | `colorSurface` | `?custom_background_color` in many legacy pages | Main card/panel surface |
| `surfaceVariant` | `colorScheme.surfaceVariant` | `colorSurfaceVariant` | `?custom_background_color_dark` | Secondary panel/background split |
| `onSurface` | `colorScheme.onSurface` | partial legacy binding through text items | `?custom_text_black_color`, `?custom_text_black_color_dark` | Main readable text |
| `onSurfaceVariant` | `colorScheme.onSurfaceVariant` | none | `?custom_text_black_color_light` | Hint, secondary text, outlines |
| `outline` | `colorScheme.outline` | `colorOutline` | none | Borders and separators |
| `error` | `colorScheme.error` | none | none | Error states |
| `surfaceTint` | `colorScheme.surfaceTint` | none | none | Compose elevation tint |

## Legacy Custom Attr Mapping

These attrs are the current semantic bridge for XML pages:

| Attr | Meaning | Preferred MD3 source |
| --- | --- | --- |
| `custom_background_color` | main surface container | `surface` |
| `custom_background_color_dark` | secondary surface container | `surfaceVariant` |
| `custom_text_black_color` | primary foreground text | `onSurface` |
| `custom_text_black_color_dark` | strong foreground text | `onSurface` |
| `custom_text_black_color_light` | muted foreground text | `onSurfaceVariant` |
| `custom_transparent_white` | translucent overlay on top of mixed/chat surfaces | theme-specific helper |
| `custom_primary_container_color` | soft primary chip/pill/container | `primaryContainer` |
| `custom_secondary_container_color` | soft secondary chip/pill/container | `secondaryContainer` |
| `custom_primary_overlay_color` | translucent pressed/highlight using primary hue | helper derived from `primary` |
| `custom_secondary_overlay_color` | translucent mention/highlight using secondary hue | helper derived from `secondary` |
| `chatroom_reply_color` | chat reply strip background | theme-specific helper, nearest to `surfaceVariant` |

## Typography Mapping

Typography now follows the same source-of-truth order as color:

1. Compose semantic source: `PicaTypography.kt`
2. Compose binding: `PicaComposeTheme.kt`
3. Legacy semantic text appearances: `styles.xml` `TextAppearance.Pica.*`
4. Legacy compatibility wrappers: `TextBaseStyle*`

Rule:

- Text role and text color are separate concerns.
- New Compose UI should prefer `MaterialTheme.typography.*`.
- Legacy XML should prefer semantic `TextAppearance.Pica.*` or wrappers built on them, instead of mixing role names with color names.

### Canonical Typography Roles

| Semantic role | Compose token | XML semantic style | Legacy size source | Typical usage |
| --- | --- | --- | --- | --- |
| app bar / page title | `titleLarge` | `TextAppearance.Pica.TitleLarge` | `textsize_title_1` (`22sp`) | top bars, top-level page titles |
| dialog / strong card title | `headlineSmall` | `TextAppearance.Pica.HeadlineSmall` | `textsize_title_2` (`20sp`) | dialog titles, dense highlighted titles |
| section title | `titleMedium` | `TextAppearance.Pica.TitleMedium` | `textsize_title_3` (`18sp`) | section headers, grouped list headings |
| compact title / emphasized label | `titleSmall` | `TextAppearance.Pica.TitleSmall` | `textsize_content_2` (`14sp`) | compact titles, short headings |
| primary body | `bodyLarge` | `TextAppearance.Pica.BodyLarge` | `textsize_content_1` (`16sp`) | main content, list row label |
| secondary body | `bodyMedium` | `TextAppearance.Pica.BodyMedium` | `textsize_content_2` (`14sp`) | supporting text, row value |
| tertiary body | `bodySmall` | `TextAppearance.Pica.BodySmall` | `textsize_content_3` (`12sp`) | hints, helper copy, compact metadata |
| primary action label | `labelLarge` | `TextAppearance.Pica.LabelLarge` | `textsize_content_2` (`14sp`) | buttons, tabs, segmented controls |
| compact label | `labelMedium` | `TextAppearance.Pica.LabelMedium` | `textsize_content_3` (`12sp`) | chips, small controls |
| timestamp / tiny metadata | `labelSmall` | `TextAppearance.Pica.LabelSmall` | `textsize_timestamp_1` (`10sp`) | timestamps, counters, badges |

### Legacy Wrapper Status

The first migration batch now maps these legacy wrappers onto semantic text appearances:

- `TextBaseStyleGrayContent*`
- `TextBaseStyleGrayDarkContent*`
- `TextBaseStyleGrayDarkTitle*`
- `TextBaseStyleGrayTitle*`
- `TextBaseStyleGrayTimestamp1`
- `TextBaseStyleGrayDarkTimestamp1`
- `TextBaseStylesWhiteContent*`
- `TextBaseStylesWhiteTitle*`
- `TextBaseStylesWhiteTimestamp1`
- `TextViewComicListFilterStyle`

The second migration batch extends semantic size mapping to compatibility color wrappers while preserving their original colors:

- `TextBaseStyleBlueContent1`
- `TextBaseStyleBlueTitle1`
- `TextBaseStyleOrangeContent1`
- `TextBaseStyleOrangeTitle1`
- `TextBaseStylePeachTitle1`
- `TextBaseStylePeachTitle2`
- `TextBaseStylePinkContent*`
- `TextBaseStylePinkTitle*`
- `TextBaseStylePinkDarkContent*`
- `TextBaseStylePinkDarkTitle2`
- `TextBaseStylePinkLightContent*`
- `TextBaseStylePinkLightTitle3`
- `EditTextStandardSingleLinePeach`
- `EditTextStandardSingleLinePeachSetting`

Compatibility rule:

- Color-named wrappers such as `TextBaseStylePink*`, `TextBaseStylePeach*`, `TextBaseStyleBlue*`, `TextBaseStyleOrange*` are still compatibility styles and should be treated as migration debt until their semantic text role is classified.

## Theme Value Snapshot

Only the highest-impact tokens are listed here.

### Light Pink

| Token | Compose value | XML color resource | XML value |
| --- | --- | --- | --- |
| `primary` | `#C43D74` | `@color/theme_light_primary` | `#FFC43D74` ✅ |
| `primaryContainer` | `#FDE0EC` | `@color/theme_light_primary_container` | `#FFFDE0EC` ✅ |
| `secondary` | `#75565F` | `@color/theme_light_secondary` | `#FF75565F` ✅ |
| `secondaryContainer` | `#FCCFDF` | `@color/theme_light_secondary_container` | `#FFFCCFDF` ✅ |
| `background` | `#FFF5F8` | `@color/theme_light_surface` | `#FFFFF5F8` ✅ |
| `surface` | `#FFF5F8` | `@color/theme_light_surface` | `#FFFFF5F8` ✅ |
| `surfaceVariant` | `#E8D6DB` | `@color/theme_light_surface_variant` | `#FFE8D6DB` ✅ |
| `onSurface` | `#1F1A1C` | `@color/theme_light_on_surface` | `#FF1F1A1C` ✅ |
| `onSurfaceVariant` | `#4C4447` | `@color/theme_light_on_surface_variant` | `#FF4C4447` ✅ |
| `outline` | `#7E7478` | `@color/theme_light_outline` | `#FF7E7478` ✅ |

### Dark Red

| Token | Compose value | XML color resource | XML value |
| --- | --- | --- | --- |
| `primary` | `#F4A6C1` | `@color/theme_dark_primary` | `#FFF4A6C1` ✅ |
| `primaryContainer` | `#A32E5E` | `@color/theme_dark_primary_container` | `#FFA32E5E` ✅ |
| `secondary` | `#D6A3AF` | `@color/theme_dark_secondary` | `#FFD6A3AF` ✅ |
| `secondaryContainer` | `#6B2347` | `@color/theme_dark_secondary_container` | `#FF6B2347` ✅ |
| `background` | `#1E0F16` | `@color/theme_dark_surface` | `#FF1E0F16` ✅ |
| `surface` | `#1E0F16` | `@color/theme_dark_surface` | `#FF1E0F16` ✅ |
| `surfaceVariant` | `#4C4447` | `@color/theme_dark_surface_variant` | `#FF4C4447` ✅ |
| `onSurface` | `#F1DDE2` | `@color/theme_dark_on_surface` | `#FFF1DDE2` ✅ |
| `onSurfaceVariant` | `#D1C2C7` | `@color/theme_dark_on_surface_variant` | `#FFD1C2C7` ✅ |
| `outline` | `#9B8F94` | `@color/theme_dark_outline` | `#FF9B8F94` ✅ |

### Miracle Neon Light

| Token | Compose value | XML color resource | XML value |
| --- | --- | --- | --- |
| `primary` | `#6B3FBF` | `@color/theme_neon_light_primary` | `#FF6B3FBF` ✅ |
| `primaryContainer` | `#E8D8FF` | `@color/theme_neon_light_primary_container` | `#FFE8D8FF` ✅ |
| `secondary` | `#C4254A` | `@color/theme_neon_light_secondary` | `#FFC4254A` ✅ |
| `secondaryContainer` | `#FFD9E1` | `@color/theme_neon_light_secondary_container` | `#FFFFD9E1` ✅ |
| `tertiary` | `#8A6800` | `@color/theme_neon_light_tertiary` | `#FF8A6800` ✅ |
| `background` | `#FBF8FF` | `@color/theme_neon_light_background` | `#FFFBF8FF` ✅ |
| `surface` | `#FBF8FF` | `@color/theme_neon_light_surface` | `#FFFBF8FF` ✅ |
| `surfaceVariant` | `#EDE8F5` | `@color/theme_neon_light_surface_variant` | `#FFEDE8F5` ✅ |
| `onSurface` | `#1C1628` | `@color/theme_neon_light_on_surface` | `#FF1C1628` ✅ |
| `outline` | `#7B7489` | `@color/theme_neon_light_outline` | `#FF7B7489` ✅ |

### Miracle Neon Dark

| Token | Compose value | XML color resource | XML value |
| --- | --- | --- | --- |
| `primary` | `#C9AEFF` | `@color/theme_neon_dark_primary` | `#FFC9AEFF` ✅ |
| `primaryContainer` | `#5127A8` | `@color/theme_neon_dark_primary_container` | `#FF5127A8` ✅ |
| `secondary` | `#FFB1C2` | `@color/theme_neon_dark_secondary` | `#FFFFB1C2` ✅ |
| `secondaryContainer` | `#8F0036` | `@color/theme_neon_dark_secondary_container` | `#FF8F0036` ✅ |
| `tertiary` | `#F5C842` | `@color/theme_neon_dark_tertiary` | `#FFF5C842` ✅ |
| `background` | `#130F1F` | `@color/theme_neon_dark_background` | `#FF130F1F` ✅ |
| `surface` | `#130F1F` | `@color/theme_neon_dark_surface` | `#FF130F1F` ✅ |
| `surfaceVariant` | `#4A4458` | `@color/theme_neon_dark_surface_variant` | `#FF4A4458` ✅ |
| `onSurface` | `#E8E0F5` | `@color/theme_neon_dark_on_surface` | `#FFE8E0F5` ✅ |
| `outline` | `#948FA2` | `@color/theme_neon_dark_outline` | `#FF948FA2` ✅ |

## Current Gaps

1. Typography semantic mapping is now started, but line height, font family, and weight parity are still only fully defined on the Compose side.
2. Shapes are unified in Compose, but not fully represented in legacy XML styles.
3. ~~Some legacy XML still uses direct fixed resources such as `@color/colorPrimary`, `@color/colorPrimaryLight`, `@color/peach`, `@color/pinkDark`.~~ **Fixed (P0)**: `AppTheme` and `AppThemeBlack` now bind to `theme_light_*` / `theme_dark_*` semantic color resources that are aligned with Compose token values.
4. ~~`colorAccent` is still used as a bridge in older XML paths and should eventually be treated as a compatibility alias, not a source of truth.~~ **Fixed (P0)**: `colorAccent` in `AppTheme` and `AppThemeBlack` now points to the correct MD3 `secondary` color for each theme.
5. A number of interaction-heavy pages still depend on legacy Fragment implementations, so MD3 visual migration and architecture migration are not yet at the same completion level.
6. Fragment business logic extraction is only partially started; `ComicDetailFragment` now has a dedicated Fragment ViewModel, but `ComicListFragment` and `CommentFragment` still keep most request logic in Fragment.

## Migration Rules

1. Prefer `?colorPrimary`, `?colorSecondary`, `?colorTertiary` for strong accents.
2. Prefer `?custom_primary_container_color` or `?custom_secondary_container_color` for soft chips, badges, and title pills.
3. Prefer `?custom_background_color` and `?custom_background_color_dark` for mixed legacy page surfaces.
4. Replace direct fixed pink resources only after assigning them a semantic role.
5. Do not migrate page by page before the semantic token is decided.

## Suggested Next Batch

1. Continue typography migration by replacing remaining color-named legacy text wrappers with semantic role wrappers.
2. Audit remaining direct color references and classify each as:
   - semantic token candidate
   - content-specific fixed color
   - obsolete legacy resource
3. Extract shared legacy component styles for:
   - toolbar
   - tab
   - dialog action row
   - avatar border/fill
   - tag/chip background
4. Continue Fragment-side ViewModel extraction in this order:
   - `ComicListFragment`
   - `CommentFragment`
   - remaining secondary detail/list pages
5. After Fragment ViewModel extraction stabilizes, decide page-by-page whether to:
   - stay Fragment-hosted under Compose
   - or migrate fully back to Compose screens
