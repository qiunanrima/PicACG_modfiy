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
- Compose screens that still host legacy XML or view content through `AndroidView`
- Compose component wrappers
- isolated Compose-hosted legacy Fragments via `LegacyFragmentHost.kt`

At the moment, `LegacyFragmentHost.kt` is no longer the dominant migration path; most mixed pages use a Compose shell plus legacy content blocks rendered through `AndroidView`, while `LegacyFragmentHost.kt` mainly remains on the anonymous chat route.

This means token changes must keep Compose and legacy XML/view surfaces visually aligned at the same time.

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
| `PicaComicBlocks.kt` | `PicaTag` / `PicaStatRow` / `PicaSectionHeader` / `PicaActionRow` / `PicaEpisodeGridItem` / `PicaRecommendationCard` | P1 ✅ |

`SettingsScreen` 中原有的私有组件 `SettingsSingleChoiceDialog` / `SettingsValueRow` / `SettingsSwitchRow` 已替换为公共组件，并删除原私有实现。

`ComicDetailScreen` 的 Preview 分支现已切到这组 MD3 公共块组件，用于先固化二级详情页的语义结构，再逐块替换 legacy 内容区。

## Secondary Route Status

In `MainActivity.kt`, secondary routes now mostly navigate to Compose screens first, but many of those screens still render legacy content blocks through `AndroidView`. The current mixed-content secondary routes include:

- `Notification`
- `ComicList`
- `ComicDetail`
- `ProfileEdit`
- `ChangePin`
- `ChangePassword`
- `GameDetail`
- `Comment`
- `PicaApp`
- `Leaderboard`

`LegacyFragmentHost.kt` is currently reserved for isolated cases such as `AnonymousChatScreen`.

These list screens have now moved past the mixed-content stage for their item rendering:

- `AnnouncementListScreen`
  - list container and list item rendering are pure Compose
  - announcement detail popup still temporarily reuses the legacy dialog helper
- `ApkVersionListScreen`
  - list container and version item rendering are pure Compose
  - update confirmation still temporarily reuses the legacy dialog helper
- `PicaAppListScreen`
  - list container and app item rendering are pure Compose
  - image loading now uses Coil Compose instead of Picasso/XML binding

Rule:

- Theme work must remain compatible with both Compose-first screens and legacy XML/view content hosted inside them.
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

## Theme Entry Point Status

The first MD3 cleanup batch for legacy theme entry points now aligns these shared styles to semantic attrs in `styles.xml`:

- `AppTheme.PopupOverlay`
  - background -> `?attr/colorSurface`
  - title/body/navigation text -> `?attr/custom_text_black_color`
  - subtitle -> `?attr/custom_text_black_color_light`
- `AppTheme.Toolbar`
  - background -> `?attr/colorSurface`
  - foreground text/icon -> `?attr/custom_text_black_color*`
  - legacy bridge background attrs -> `?attr/colorSurface` / `?attr/colorSurfaceVariant`
- `PicaTabLayout`
  - background -> `?attr/colorSurface`
  - selected indicator/text -> `?attr/colorPrimary`
  - unselected text -> `?attr/custom_text_black_color_light`

The first three layouts that previously overrode `PicaTabLayout` colors now defer to the shared style instead:

- `fragment_support_us_container.xml`
- `fragment_leaderboard_container.xml`
- `layout_profile_compose_content.xml`

## Pure Compose Content Status

Secondary pages that have completed content-level Compose replacement on top of the MD3 shell include:

- `AnnouncementListScreen`
  - list pagination state is driven by `AnnouncementListViewModel`
  - item click behavior now flows through `AnnouncementListViewModel.onAnnouncementClick()`
  - list row UI no longer depends on `item_announcement_cell.xml` or `AndroidView`
  - detail popup still temporarily reuses `AlertDialogCenter.showAnnouncementAlertDialog(...)`
- `ApkVersionListScreen`
  - version list row UI no longer depends on `item_apk_version_list_recycler_view_cell.xml` or `AndroidView`
  - update confirmation still temporarily reuses `AlertDialogCenter.showUpdateApkAlertDialog(...)`
- `PicaAppListScreen`
  - app list row UI no longer depends on `item_chatroom_list_cell.xml` or `AndroidView`
  - image loading now uses Coil Compose instead of Picasso binding

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
| `custom_episode_downloaded_color` | downloaded episode fill | theme-specific status helper |
| `custom_episode_downloaded_outline_color` | downloaded episode outline | theme-specific status helper |
| `custom_episode_downloading_color` | downloading episode fill | theme-specific status helper |
| `custom_episode_downloading_outline_color` | downloading episode outline | theme-specific status helper |
| `custom_keyword_container_color` | keyword/search chip fill | keyword semantic helper, nearest to secondary/tertiary container |
| `custom_keyword_outline_color` | keyword/search chip outline | keyword semantic helper, nearest to tertiary |
| `custom_keyword_text_color` | keyword/search chip foreground | keyword semantic helper, nearest to tertiary/on-container |
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
- App-wide text entry points such as Toolbar, popup menu, list item, and search result styles should resolve through `TextAppearance.Pica.*`, not direct `TextAppearance.AppCompat.*`.

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

The second migration batch extends semantic size mapping to compatibility color wrappers. The later shared-style cleanup now also routes their color values through semantic attrs:

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

The third migration batch extends typography semantics into legacy theme entry points:

- `Base.Theme.AppCompat.CompactMenu` `android:itemTextAppearance` -> `TextAppearance.Pica.BodyLarge`
- `Base.V7.Theme.AppCompat` / `Base.V7.Theme.AppCompat.Light`
  - `textAppearanceLargePopupMenu` -> `TextAppearance.Pica.PopupMenu.Large`
  - `textAppearanceSmallPopupMenu` -> `TextAppearance.Pica.PopupMenu.Small`
  - `textAppearancePopupMenuHeader` -> `TextAppearance.Pica.PopupMenu.Header`
  - `textAppearanceListItem` -> `TextAppearance.Pica.ListItem`
  - `textAppearanceListItemSecondary` -> `TextAppearance.Pica.ListItemSecondary`
  - `textAppearanceListItemSmall` -> `TextAppearance.Pica.ListItemSmall`
  - `textAppearanceSearchResultTitle` -> `TextAppearance.Pica.SearchResult.Title`
  - `textAppearanceSearchResultSubtitle` -> `TextAppearance.Pica.SearchResult.Subtitle`
- `Base.V7.Widget.AppCompat.Toolbar`
  - `titleTextAppearance` -> `TextAppearance.Pica.Toolbar.Title`
  - `subtitleTextAppearance` -> `TextAppearance.Pica.Toolbar.Subtitle`
- `TextBaseStyleGrayTimestamp2`
- `TextLabel`

Current semantic support details:

- `TextAppearance.Pica.TitleLarge`
- `TextAppearance.Pica.HeadlineSmall`
- `TextAppearance.Pica.TitleMedium`

now explicitly carry `android:textStyle="bold"` on the XML side, bringing legacy title hierarchy closer to Compose `SemiBold` intent.

Compatibility rule:

- Color-named wrappers such as `TextBaseStylePink*`, `TextBaseStylePeach*`, `TextBaseStyleBlue*`, `TextBaseStyleOrange*` are still compatibility names, but their colors now resolve through semantic attrs instead of fixed legacy color resources. Prefer new semantic names for new XML styles.

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

1. Typography semantic mapping now covers core semantic roles plus legacy Toolbar/popup/list/search entry points, but line height and font family parity are still only fully defined on the Compose side.
2. Shapes are unified in Compose, but not fully represented in legacy XML styles.
3. Root theme bindings and shared drawable/style entry points are aligned. Remaining fixed-color debt is now expected to live mainly in legacy layouts, item XML, and intentionally content-specific resources.
4. `colorAccent` is still a compatibility bridge in older XML paths; root `AppTheme*` values now point it at MD3 `secondary`, but it should not be treated as a source of truth for new work.
5. A number of interaction-heavy pages still depend on legacy Fragment implementations or heavy `AndroidView` content, so MD3 visual migration and architecture migration are not yet at the same completion level.
6. Several low-risk secondary lists have moved to Compose containers. `AnnouncementListScreen`, `ApkVersionListScreen`, and `PicaAppListScreen` now also have pure Compose item rendering; remaining item XML targets should prioritize more complex lists such as Notification, Leaderboard, Game, ComicList, and Comment.
7. Fragment business logic extraction has progressed for several Compose-facing ViewModels, but the heaviest legacy pages still need page-by-page behavior checks before full Compose replacement.

### Direct Color Debt Snapshot

Read-only scan on 2026-04-25 originally showed the following fixed resource references under `app/src/main/res`:

| Resource | Count | Migration note |
| --- | ---: | --- |
| `@color/colorPrimary` | 106 | Usually strong action/selected state; prefer `?colorPrimary` after confirming role |
| `@color/colorPrimaryDark` | 31 | Often ripple/pressed/border; prefer primary overlay or outline depending on role |
| `@color/colorPrimaryLight` | 13 | Usually soft selected fill; prefer `?custom_primary_container_color` |
| `@color/pink` | 41 | Compatibility brand color; classify before replacing |
| `@color/pinkDark` | 13 | Strong brand/accent wrapper; classify before replacing |
| `@color/peach` | 5 | Legacy input/accent style; classify before replacing |
| `@color/orange` | 11 | May be content-specific ranking/status color |
| `@color/blue` | 11 | May be content-specific filter/action color |

After the shared drawable/style cleanup, the old brand/accent/status fixed refs listed above no longer appear in `app/src/main/res/drawable`, `app/src/main/res/drawable-v21`, or shared `styles.xml` entries. Continue the same classification process for layout and item XML.

## Legacy Drawable Color Debt Classification

Scope: `app/src/main/res/drawable` and `app/src/main/res/drawable-v21`.

Coverage: 66 drawable files with fixed, compatibility, or non-themed outline resource references were reviewed and grouped below.

Status legend:

- `token-ready`: role is clear and can be converted to an existing semantic token.
- `content-fixed`: color carries domain meaning and should not be themed blindly.
- `needs-token`: role is clear, but no dedicated semantic token exists yet.
- `already-semantic`: currently uses theme attrs or custom semantic attrs.

### Primary Action / Selected State

| Files | Current fixed refs | Classification | Target |
| --- | --- | --- | --- |
| `button_round_pink_bg.xml`, `button_small_round_pink_bg.xml`, v21 `button_round_pink_bg.xml` | `@color/colorPrimary`, `@color/colorPrimaryDark`, `@color/pink` | `token-ready` generic primary filled buttons | `?colorPrimary`; pressed/ripple through `?custom_primary_overlay_color` |
| `button_segment_left_bg.xml`, `button_segment_center_bg.xml`, `button_segment_right_bg.xml`, v21 variants | `@color/colorPrimary`, `@color/colorPrimaryDark` | `token-ready` selected segment state | selected fill/stroke `?colorPrimary`; ripple `?custom_primary_overlay_color` |
| `radio_button_segment_style_bg.xml`, `radio_group_segment_style_bg.xml`, v21 variants | `@color/colorPrimary` | `token-ready` selected segmented control | selected fill/stroke `?colorPrimary`; group border `?colorOutline` |
| `button_tabbar_bg.xml`, v21 variant | `@color/colorPrimary`, `@color/colorPrimaryDark` | `token-ready` selected tab background | selected fill `?colorPrimary`; ripple `?custom_primary_overlay_color` |
| `button_filter_selected_bg.xml`, v21 variant | `@color/colorPrimary`, `@color/colorPrimaryLight`, `@color/colorPrimaryDark` | `token-ready` selected filter chip | selected fill `?colorPrimary`; pressed fill `?custom_primary_container_color`; ripple `?custom_primary_overlay_color` |
| `chat_connection_bar_new.xml` | `@color/colorPrimary` | `token-ready` active connection/status pill | `?colorPrimary` |
| `text_count_bg.xml` | already `?colorPrimary` | `already-semantic` count badge | keep |
| `toggle_button_peach.xml` checked state | already `?colorPrimary` | `already-semantic` checked switch track | keep |

### Soft Primary / Chip / Input Focus

| Files | Current fixed refs | Classification | Target |
| --- | --- | --- | --- |
| `button_episode_normal_bg.xml` pressed state | `@color/colorPrimaryLight`, `@color/colorPrimary` | `token-ready` pressed soft episode chip | fill `?custom_primary_container_color`; stroke `?colorPrimary` |
| `button_episode_more_bg.xml` | `@color/colorPrimaryLight` | `token-ready` soft primary CTA | `?custom_primary_container_color` |
| `button_filter_*_bg.xml` pressed state | `@color/colorPrimaryLight`, `@color/colorPrimary` | `token-ready` pressed filter chip | fill `?custom_primary_container_color`; stroke `?colorPrimary` |
| `button_tag_bg.xml` v21 variant | `@color/pinkDark`, `@color/pinkLight`, `@color/colorPrimaryDark` | `token-ready`; base drawable is already semantic | stroke `?colorPrimary`; fill `?custom_primary_container_color`; ripple `?custom_primary_overlay_color` |
| `edittext_lock_bg.xml` | `@color/colorPrimaryLight` | `token-ready` focused/brand border for PIN boxes | `?colorPrimary` or `?custom_primary_container_color` depending contrast check |
| `icon_pager_indicator_normal.xml` | `@color/pink_transparent_30` | `token-ready` inactive primary overlay | `?custom_primary_overlay_color` if contrast is acceptable |

### Surface / Outline / Dialog Frame

| Files | Current fixed refs | Classification | Target |
| --- | --- | --- | --- |
| `dialog_announcement_bg.xml`, `dialog_faq_bg.xml`, `dialog_round_bg.xml`, `dialog_round_bottom_bg.xml`, `dialog_round_top_bg.xml` | base mostly `?custom_*` plus `@color/md3_outline_variant`; v21 uses `@color/colorPrimary` for strokes/fills | `token-ready` dialog surface/frame | surface `?custom_background_color`; border `?colorOutline`; top accent only if intentionally decorative |
| `service_chatroom_bg.xml`, v21 variant | base mostly `?custom_background_color` + `@color/md3_outline_variant`; v21 stroke `@color/colorPrimary` | `token-ready` chat input container | surface/overlay attrs; stroke `?colorOutline` unless active state is needed |
| `button_segment_container_bg.xml`, v21 variant | base `@color/md3_outline_variant`; v21 `@color/colorPrimary` stroke | `token-ready` segmented control container | `?colorOutline` |
| `card_style_white_bg.xml` | base `@color/md3_outline_variant`, v21 semantic surface | `token-ready` generic card | stroke `?colorOutline` |
| `actionbar_background.xml`, v21 variant | base semantic; v21 selected state uses `?colorPrimary` | `already-semantic` toolbar/actionbar surface selector | keep; verify selected state is intentional |
| `md3_input_bg.xml` | already `?colorPrimary`, `?custom_background_color_dark`, `@color/md3_outline_variant` | mostly `already-semantic`; outline still fixed resource | replace outline variant with theme attr when an outline-variant attr exists |

### Content / Status Colors

| Files | Current fixed refs | Classification | Target |
| --- | --- | --- | --- |
| `button_filter_bl_bg.xml`, `button_filter_fake_girl_bg.xml`, `button_filter_forbidden_bg.xml`, `button_filter_futari_bg.xml`, `button_filter_heavy_bg.xml`, `button_filter_japanese_bg.xml`, `button_filter_pure_love_bg.xml`, `button_filter_webtoon_bg.xml` | `@color/filter_button_*`, `@color/filter_button_stroke`; v21 ripple `@color/colorPrimaryDark` | `content-fixed` category/filter identity colors | keep fixed category fills; ripple may move to `?custom_primary_overlay_color` |
| `button_keyword_bg.xml` | `@color/orangeLight2`, `@color/orange` | `needs-token` keyword/search chip, not generic orange | prefer `?custom_secondary_container_color` + `?colorSecondary`, or add keyword-chip attrs if distinct color is required |
| `button_episode_downloaded_bg.xml`, v21 variant | base `@color/blue`; v21 `@color/colorPrimaryDark`, `@color/colorPrimaryDark2` | `needs-token` downloaded/read status; base/v21 currently disagree | introduce/download status attrs, or map to a stable content status color |
| `button_episode_downloading_bg.xml`, v21 variant | base `@color/green`; v21 `@color/colorPrimary`, `@color/colorPrimaryDark` | `needs-token` downloading status; base/v21 currently disagree | introduce/downloading status attrs, or keep status green consistently |
| `button_episode_last_view_bg.xml`, v21 variant | base `@color/colorPrimary`; v21 `@color/colorAccent`, `@color/colorAccentDark` | `token-ready` last-read marker / active episode | choose one semantic role: primary active state or secondary marker; then align base/v21 |
| `button_small_round_yellow_bg.xml` | `@color/colorAccent` | `token-ready` secondary filled action despite legacy filename | `?colorSecondary` |
| `chat_bg.xml` | `@color/colorPrimary`, `@color/colorPrimaryDark` | `token-ready` outgoing chat bubble | fill `?colorPrimary`; stroke/ripple `?custom_primary_overlay_color` or `?colorPrimary` depending contrast |
| `toggle_button_peach.xml` unchecked state | `@color/backgroundDark`, `@color/md3_outline` | `token-ready` unchecked control surface | surface variant/custom background + `?colorOutline` |

### Ripple-Only Debt

Many v21 drawables still use `@color/colorPrimaryDark` only as ripple color:

- `button_episode_normal_bg.xml`
- `button_filter_*_bg.xml`
- `button_round_pink_bg.xml`
- `button_segment_*_bg.xml`
- `button_tabbar_bg.xml`
- `button_tag_bg.xml`
- `ripple_bg.xml`

Classification: `token-ready`.

Target: `?custom_primary_overlay_color` for soft primary ripple, or `?colorPrimary` only where the platform ripple alpha is already applied and contrast remains acceptable.

### Implementation Progress

2026-04-25 batch 1 completed:

- Generic primary buttons now use theme attrs:
  - `button_round_pink_bg.xml`
  - `button_small_round_pink_bg.xml`
  - v21 `button_round_pink_bg.xml`
- Segmented controls and tab backgrounds now use semantic primary / outline / overlay attrs:
  - `button_segment_*`
  - `radio_button_segment_style_bg.xml`
  - `radio_group_segment_style_bg.xml`
  - `button_tabbar_bg.xml`
- Soft chips and episode neutral/more states now use semantic container/primary/outline attrs:
  - `button_episode_normal_bg.xml`
  - `button_episode_more_bg.xml`
  - `button_filter_selected_bg.xml`
  - v21 `button_tag_bg.xml`
- Filter category chips keep their fixed category identity colors, but pressed/ripple affordances now use semantic primary container/overlay attrs.
- Dialog, card, service chatroom, input, and segment container borders now use `?colorOutline` instead of fixed outline resources or fixed primary strokes.
- Chat primary surfaces and count/indicator helpers now use semantic primary/overlay attrs.
- `button_episode_last_view_bg.xml` and its v21 variant are now aligned to primary active-state semantics.

2026-04-25 batch 2 completed:

- Added XML semantic attrs for status and keyword colors:
  - `custom_episode_downloaded_color`
  - `custom_episode_downloaded_outline_color`
  - `custom_episode_downloading_color`
  - `custom_episode_downloading_outline_color`
  - `custom_keyword_container_color`
  - `custom_keyword_outline_color`
  - `custom_keyword_text_color`
- Bound those attrs in all four XML theme entries:
  - `AppTheme`
  - `AppThemeBlack`
  - `AppThemeNeon`
  - `AppThemeNeonDark`
- Replaced the remaining direct episode/keyword drawable color refs:
  - `button_episode_downloaded_bg.xml`
  - `button_episode_downloading_bg.xml`
  - `button_keyword_bg.xml`
  - v21 `button_episode_downloaded_bg.xml`
  - v21 `button_episode_downloading_bg.xml`
- Updated shared style entry points to semantic attrs:
  - `ButtonFilledTonal`
  - `ButtonTextPrimary`
  - `EditTextStandardSingleLineGrayDark`
  - `EditTextStandardSingleLinePeach`
  - `EditTextStandardSingleLinePeachSetting`
  - `KeywordButton`
  - `MyAlertDialogStyle`
  - `MyTitleTextStyle`
  - `TagButtonPink`
  - `TextAppearence.TextInputLayout.Pink`
  - `TextLabel`
- Migrated color-named compatibility text wrappers in `styles.xml` to semantic attrs for primary, secondary, tertiary, keyword, and on-surface roles.

Post-batch scan:

```
rg -n "@color/(colorPrimary|colorPrimaryDark|colorPrimaryDark2|colorPrimaryLight|pink|pinkDark|pinkLight|pink_transparent_30|peach|orange|orangeDark|orangeLight|orangeLight2|blue|blueLight|green|gray|grayDark|grayLight|colorAccent|colorAccentDark|backgroundDark|md3_outline|md3_outline_variant)" app/src/main/res/drawable app/src/main/res/drawable-v21 app/src/main/res/values/styles.xml
```

Result: no matches.

Verification:

```
./gradlew.bat :app:mergeDebugResources :app:compileDebugKotlin :app:compileDebugJavaWithJavac --no-daemon
```

Result: passed.

2026-04-25 item Compose batch completed:

- `ApkVersionListScreen`
  - replaced `AndroidView + ItemApkVersionListRecyclerViewCellBinding` with a pure Compose `Card` item
  - item colors now resolve from `MaterialTheme.colorScheme.surface`, `primary`, `onSurface`, `onSurfaceVariant`, and `outlineVariant`
  - existing update dialog click behavior is unchanged
- `PicaAppListScreen`
  - replaced `AndroidView + item_chatroom_list_cell.xml + ItemChatroomListCellBinding` with a pure Compose `Card` item
  - image loading now uses `coil.compose.AsyncImage` with the existing `placeholder_avatar_2`
  - existing app click behavior and the `嗶咔萌約` fallback link are unchanged

Post-batch screen scan:

```
rg -n "AndroidView|ItemApkVersionListRecyclerViewCellBinding|ItemChatroomListCellBinding|item_apk_version_list_recycler_view_cell|item_chatroom_list_cell|Picasso" app/src/main/java/com/picacomic/fregata/compose/screens/ApkVersionListScreen.kt app/src/main/java/com/picacomic/fregata/compose/screens/PicaAppListScreen.kt
```

Result: no matches.

Verification:

```
./gradlew.bat :app:mergeDebugResources :app:compileDebugKotlin :app:compileDebugJavaWithJavac --no-daemon
```

Result: passed.

## Migration Rules

1. Prefer `?colorPrimary`, `?colorSecondary`, `?colorTertiary` for strong accents.
2. Prefer `?custom_primary_container_color` or `?custom_secondary_container_color` for soft chips, badges, and title pills.
3. Prefer `?custom_background_color` and `?custom_background_color_dark` for mixed legacy page surfaces.
4. Prefer `?colorOutline` for separators, strokes, and low-emphasis borders.
5. Replace direct fixed pink resources only after assigning them a semantic role.
6. Treat orange/blue resources as content or status colors until proven to be generic theme accents.
7. Do not migrate page by page before the semantic token is decided.

## Suggested Next Batch

1. Audit remaining direct color references in legacy layouts and item XML, classifying each as:
   - semantic token candidate
   - content-specific fixed color
   - obsolete legacy resource
2. Use `AnnouncementListScreen`, `ApkVersionListScreen`, and `PicaAppListScreen` as the reference path for the next content-pure Compose batch, then continue item-by-item with:
   - `NotificationScreen`
   - `LeaderboardScreen`
   - `GameScreen`
3. Extract or finish shared legacy component styles that are outside drawable/style scope:
   - avatar border/fill
   - dialog action row layouts
   - item XML separators and row backgrounds
4. Keep high-risk mixed pages out of the next visual batch until shared tokens and item XML are stable:
   - `ComicListScreen`
   - `ComicDetailScreen`
   - `CommentScreen`
   - `GameDetailScreen`
   - `CategoryScreen`
   - `ProfileScreen`
   - `AnonymousChatScreen`
5. After Fragment/ViewModel extraction and visual token work stabilize, decide page-by-page whether to:
   - stay Fragment-hosted under Compose
   - or migrate fully back to Compose screens
