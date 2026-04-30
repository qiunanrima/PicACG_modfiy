# Compose 迁移与修复总结

## 0. 当前状态说明

- 主题基线已切到 `Miracle Neon`，并支持浅色/深色。
- 组件层已经抽出一批 Compose 通用组件，但高交互二级页目前以“Compose 路由 + Fragment 托管”作为稳定方案。
- `ComicDetailFragment` 已经开始拆分专属 ViewModel，说明迁移重点已从“先把页面画出来”转向“把旧 Fragment 逻辑拆干净”。

### 0.1 当前迁移原则更新
- 后续目标明确调整为 **Screen 全部重写为 MD3 Compose**。
- 新 screen 不再使用源 XML：
  - 不在 screen 中 `LayoutInflater.inflate(R.layout...)`；
  - 不把旧 fragment layout 当作页面主体承载；
  - 图片加载可临时使用 `AndroidView(ImageView)`，但仅限无 XML 的图片控件桥接。
- 业务逻辑从源 Fragment / Adapter 抓取：
  - 先逐项阅读旧 Fragment 的 API 调用、分页、状态字段、弹窗/Toast、点击跳转；
  - 再迁入 Compose ViewModel；
  - Screen 只负责渲染状态和分发事件。
- ViewModel 迁移时尽量保留源方法语义和方法名 wrapper：
  - 例如 `CommentViewModel` 保留 `C/D/N/O/Q/S/T/U/V` 等旧 `CommentFragment` 方法名入口；
  - 新 Compose 方法可以继续存在，但必须能映射回旧逻辑，方便逐项对照和回归。
- XML 清理策略：
  - 已重写的 screen 不再保留旧 XML fallback；
  - 旧 XML 资源只有在未迁移页面或非 screen 资源仍引用时暂存；
  - 文档中把“已重写 screen”和“仍需重写 screen”分开追踪。

## 1. 本轮完成内容

### 1.1 新增/补全的 Compose 页面与路由
- 新增 `PicaAppListScreen` + `PicaAppListViewModel`
- 新增 `AnnouncementListScreen` + `AnnouncementListViewModel`
- 新增 `ApkVersionListScreen` + `ApkVersionListViewModel`
- 新增 `ChangePinScreen` + `ChangePinViewModel`
- 新增 `ChangePasswordScreen` + `ChangePasswordViewModel`
- `Screen` 新增路由：
  - `PicaAppList`
  - `AnnouncementList`
  - `ApkVersionList`
  - `ChangePin`
  - `ChangePassword`

说明：
- 这些 Compose screen 仍保留，便于后续继续推进纯 Compose 化。
- 但目前 `MainActivity` 的二级页导航已优先切回 legacy Fragment 托管，避免交互逻辑只迁了一半。

### 1.2 MainActivity 导航接线
- Category 的 `love pica` 入口接入 `PicaAppList`。
- Settings 的版本入口接入 `ApkVersionList`。
- Settings 的 `PIN/密码` 入口从 Toast 占位改为真实页面：
  - `onPin -> Screen.ChangePin`
  - `onPassword -> Screen.ChangePassword`

### 1.3 旧 Fragment 逻辑对齐（Compose 承载）
- `PicaAppList`：保留缓存读取、网络刷新、列表点击跳转逻辑。
- `AnnouncementList`：保留分页加载和公告弹窗逻辑。
- `ApkVersionList`：保留分页加载和更新弹窗逻辑。
- `ChangePin`：保留长度校验、确认一致校验、清除 PIN、设置 PIN、成功后返回。
- `ChangePassword`：保留密码长度/一致性校验、显示密码开关、接口提交、成功后返回。

### 1.4 二级页路由回收为 Fragment 托管
- 新增 `LegacyFragmentHost.kt`，让 Compose `NavHost` 可以稳定托管旧 Fragment。
- `MainActivity` 中以下二级页已改为 Fragment 托管：
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
- 这样做的目的不是回退，而是先恢复完整交互，再逐页把 Fragment 内逻辑拆出 ViewModel。

补充说明：
- 当前代码已经继续演进为“Compose Screen 外壳 + `AndroidView` 承载 legacy 内容”为主，`LegacyFragmentHost.kt` 主要保留在 `AnonymousChatScreen` 这类隔离场景。
- 因此后续 MD3 主题工作，重点已从“Fragment 是否被托管”转为“Compose 外壳与内部 legacy XML/view 是否吃到同一套语义 token”。

### 1.5 Profile / ProfileEdit 修复
- 修复 `ProfileEdit` 昵称异常脏数据显示（例如 `SocketAddress ...`）的问题，增加兜底显示策略。
- `ProfileEdit` 补回“更新介绍”提交逻辑（`UpdateProfileBody`），提交成功提示并返回。

### 1.6 AppBar 与顶部栏策略统一
- 按”新顶栏保留原逻辑、去掉内嵌旧 Fragment 多余 appbar”处理。
- 对使用 `AndroidView + fragment_*` 的 Compose 页面，统一隐藏旧 `appbar/toolbar`（按页面需求保留功能行）。
- `ComicList` 特殊处理：
  - 仅隐藏旧 `toolbar`，保留筛选/页码功能区。
  - 修复筛选区挤压截断：`HorizontalScrollView` 改为 `0dp + weight=1`。

### 1.7 Compose 组件层统一
- 新增通用组件：
  - `PicaTopBar`
  - `PicaPrimaryButton`
  - `PicaTextField`
  - `PicaScreenContainer`
  - `PicaSecondaryScreen`
  - `PicaCardSection`
  - `PicaTag`
  - `PicaStatRow`
  - `PicaSectionHeader`
  - `PicaActionRow`
  - `PicaEpisodeGridItem`
  - `PicaRecommendationCard`
- 首批已接入的 Compose 页面：
  - `LoginScreen`
  - `ChangePinScreen`
  - `ChangePasswordScreen`
  - `AnnouncementListScreen`
  - `ApkVersionListScreen`
  - `PicaAppListScreen`
  - `ComicDetailScreen` Preview 分支

### 1.8 其他 UI 修复
- `ComicViewerActivity` 去除顶部工具栏显示（不再显示/参与显隐动画）。
- `NavigationBar` 颜色改为与 Compose 顶部 `AppBar` 同风格（同 elevation 的 surface 颜色）。

### 1.9 ViewModel 补全与业务下沉（Fragment 逻辑对齐）
- **LoginViewModel**：新增，下沉登录、找回密码、密保答题重置密码、已登录直跳主页逻辑。
  - `LoginActivity.kt` / `LoginScreen.kt` 只负责 UI、弹窗和导航。
  - 注册页 legacy `FragmentContainerView` 保留兼容。
  - 邮箱格式校验放宽为仅判空。
- **SplashViewModel**：新增，下沉启动页初始化、重试、节点选择、失败回退逻辑。
  - `SplashActivity.kt` 只监听事件做跳转和”需要重启”处理。
  - `SplashActivity.iV` 旧切线保留兼容。
- **PicaAppViewModel**：新增，补齐 token + secret 拼接、空链接回退逻辑。
  - 与旧 `PicaAppFragment` 的关键行为对齐。
- **ComicDetailFragmentViewModel**：新增，开始把 `ComicDetailFragment` 的详情加载、章节分页、推荐、点赞、收藏、错误/提示事件移出 Fragment。
  - `ComicDetailFragment` 现在主要负责：
    - 视图绑定
    - 本地阅读记录/下载状态融合
    - 导航与弹窗
  - 这是 Fragment 拆 ViewModel 的第一刀，后续目标是继续拆 `ComicListFragment` / `CommentFragment`。

### 1.10 主题扩展与图标切换
- **主题扩展**：从单一配色扩展为 3 档主题模式。
  - `粉红白` 日间模式（Light Pink）。
  - `迷红黑` 深色模式（Dark Red）。
  - `Miracle Neon` 新增主题，支持浅色/深色两套配色。
- **资源同步**：
  - `arrays.xml` / `strings.xml` 新增主题选项。
  - `ComposeColors.kt` / `PicaComposeTheme.kt` / `styles.xml` 接入新配色。
  - `colors.xml` 同步三套配色值。
  - `SettingsViewModel.kt` 新增主题切换逻辑。
- **应用启动图标切换**：
  - 新增 Launcher Alias（`logo_round_neon.png`）。
  - `LauncherIconHelper.kt` 新增，实现图标与霓虹主题自动绑定。
- `AndroidManifest.xml` / `MyApplication.java` 同步切换逻辑。
- Compose 和 legacy 页面均支持主题动态切换。

### 1.11 Typography 语义收口（legacy 主题入口）
- `styles.xml` 中的 `TextAppearance.Pica.TitleLarge` / `HeadlineSmall` / `TitleMedium` 补上了 XML 侧 `bold` 字重定义，让 legacy 标题层更接近 Compose 侧的 `SemiBold` 层级。
- 新增一组 legacy 主题语义入口样式：
  - `TextAppearance.Pica.ListItem*`
  - `TextAppearance.Pica.PopupMenu.*`
  - `TextAppearance.Pica.SearchResult.*`
  - `TextAppearance.Pica.Toolbar.*`
- `Base.V7.Theme.AppCompat` 与 `Base.V7.Theme.AppCompat.Light` 里的以下入口已切到 `Pica` 语义层：
  - `textAppearanceLargePopupMenu`
  - `textAppearanceSmallPopupMenu`
  - `textAppearancePopupMenuHeader`
  - `textAppearanceListItem`
  - `textAppearanceListItemSecondary`
  - `textAppearanceListItemSmall`
  - `textAppearanceSearchResultTitle`
  - `textAppearanceSearchResultSubtitle`
- `Base.Theme.AppCompat.CompactMenu` 的 `android:itemTextAppearance` 也已切到 `TextAppearance.Pica.BodyLarge`。
- `Base.V7.Widget.AppCompat.Toolbar` 的 `titleTextAppearance` / `subtitleTextAppearance` 已切到 `TextAppearance.Pica.Toolbar.Title` / `Subtitle`，并接入现有 `custom_text_black_color*` 语义色。
- `TextBaseStyleGrayTimestamp2` 和 `TextLabel` 已从旧 `AppCompat`/基础 wrapper 接回 `Pica` 语义层。

### 1.12 第一阶段：主题入口收口（进行中）
- `AppTheme.PopupOverlay` 已切到语义色入口：
  - 背景走 `?attr/colorSurface`
  - 标题/正文/导航图标走 `?attr/custom_text_black_color`
  - 副标题走 `?attr/custom_text_black_color_light`
- `AppTheme.Toolbar` 已切到语义 surface / onSurface 桥接入口，并补齐 `subtitleTextColor` / `navigationIconTint`，不再依赖旧 `background` / `backgroundDark` 固定资源。
- `PicaTabLayout` 已改为由 style 统一提供背景、选中态和未选中态颜色：
  - background -> `?attr/colorSurface`
  - selected indicator/text -> `?attr/colorPrimary`
  - unselected text -> `?attr/custom_text_black_color_light`
- 以下布局已移除对 `TabLayout` 颜色的逐页覆盖，让 `PicaTabLayout` 成为唯一来源：
  - `fragment_support_us_container.xml`
  - `fragment_leaderboard_container.xml`
  - `layout_profile_compose_content.xml`
- 这一批只收口主题入口，不改业务逻辑和页面交互，作为 MD3 第一阶段的首批落地。

### 1.13 AnnouncementList 内容纯 Compose 化
- `AnnouncementListScreen` 的列表内容已从 `AndroidView + item_announcement_cell.xml` 切为纯 Compose `LazyColumn` item。
- 新增 `AnnouncementListViewModel.loadInitial()`，把首屏加载语义从 Screen 侧的“直接调分页”收口为 ViewModel 入口。
- 新增 `AnnouncementListViewModel.canLoadMore()`，对齐原 `Fragment.cb()` 的分页边界条件：只有在未加载且仍有下一页时继续拉取。
- 新增 `AnnouncementListViewModel.onAnnouncementClick()` / `clearSelectedAnnouncement()` / `selectedAnnouncement` / `openAnnouncementEvent`，把原 `AnnouncementListFragment.C(int)` 的点击行为改为 ViewModel 驱动。
- `AnnouncementListScreen` 现在只负责：
  - 渲染纯 Compose 列表卡片
  - 响应 ViewModel 事件并弹出公告详情
  - 处理加载中 / 空态 / 分页加载更多的展示
- 公告详情弹窗仍暂时复用 `AlertDialogCenter.showAnnouncementAlertDialog()`，这部分属于“内容已纯 Compose，系统弹窗 helper 暂保留”的过渡状态。

### 1.14 ApkVersion / PicaAppList item 级 Compose 化
- `ApkVersionListScreen` 的版本列表 item 已从 `AndroidView + ItemApkVersionListRecyclerViewCellBinding` 切为纯 Compose `Card`。
- `ApkVersionListScreen` 保留原更新弹窗点击行为，视觉 token 改为 `MaterialTheme.colorScheme` 的 surface / primary / onSurface / outlineVariant。
- `PicaAppListScreen` 的小程序列表 item 已从 `AndroidView + item_chatroom_list_cell.xml + ItemChatroomListCellBinding` 切为纯 Compose `Card`。
- `PicaAppListScreen` 图片加载从 Picasso/XML ImageView 改为 Coil Compose `AsyncImage`，继续使用 `placeholder_avatar_2` 作为占位和失败图。
- `PicaAppListScreen` 原点击跳转和 `嗶咔萌約` 兜底链接逻辑保持不变。

---

## 2. 关键修改文件

### 2.1 新增文件
- `app/src/main/java/com/picacomic/fregata/compose/screens/PicaAppListScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/AnnouncementListScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/ApkVersionListScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/ChangePinScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/ChangePasswordScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/components/PicaTopBar.kt`
- `app/src/main/java/com/picacomic/fregata/compose/components/PicaButtons.kt`
- `app/src/main/java/com/picacomic/fregata/compose/components/PicaFields.kt`
- `app/src/main/java/com/picacomic/fregata/compose/components/PicaSurfaceContainers.kt`
- `app/src/main/java/com/picacomic/fregata/compose/components/PicaComicBlocks.kt`
- `app/src/main/java/com/picacomic/fregata/compose/views/LegacyFragmentHost.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/PicaAppListViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/AnnouncementListViewModel.kt`
- `app/build.gradle`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/ApkVersionListViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/ChangePinViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/ChangePasswordViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/LoginViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/SplashViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/PicaAppViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/AnonymousChatScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/ScreenPreviewSupport.kt`
- `app/src/main/java/com/picacomic/fregata/viewmodels/ComicDetailFragmentViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/utils/LauncherIconHelper.kt`
- `app/src/main/res/drawable/logo_round_neon.png`

### 2.2 主要修改文件
- `app/src/main/java/com/picacomic/fregata/activities/MainActivity.kt`
- `app/src/main/java/com/picacomic/fregata/activities/ComicViewerActivity.java`
- `app/src/main/java/com/picacomic/fregata/activities/LoginActivity.kt`
- `app/src/main/java/com/picacomic/fregata/activities/SplashActivity.kt`
- `app/src/main/java/com/picacomic/fregata/compose/navigation/Screen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/ComicListScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/ComicDetailScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/GameDetailScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/PicaAppScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/LoginScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/ProfileEditScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/HomeScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/GameScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/CategoryScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/NotificationScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/LeaderboardScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/PicaAppListScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/AnnouncementListScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/ApkVersionListScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/ProfileScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/SettingsScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/SplashScreen.kt`
- `app/src/main/java/com/picacomic/fregata/fragments/ComicDetailFragment.java`
- `app/src/main/java/com/picacomic/fregata/fragments/CommentFragment.java`
- `app/src/main/java/com/picacomic/fregata/fragments/PicaAppListFragment.java`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/CategoryViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/ProfileEditViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/SettingsViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/MyApplication.java`
- `app/src/main/java/com/picacomic/fregata/compose/ComposeColors.kt`
- `app/src/main/java/com/picacomic/fregata/compose/PicaComposeTheme.kt`
- `app/src/main/res/layout/fragment_comic_list.xml`
- `app/src/main/res/layout/fragment_support_us_container.xml`
- `app/src/main/res/layout/fragment_leaderboard_container.xml`
- `app/src/main/res/layout/layout_profile_compose_content.xml`
- `app/src/main/res/drawable/actionbar_background.xml`
- `app/src/main/res/values/arrays.xml`
- `app/src/main/res/values/colors.xml`
- `app/src/main/res/values/strings.xml`
- `app/src/main/res/values/styles.xml`
- `app/src/main/AndroidManifest.xml`

---

## 3. 编译验证

已执行并通过：
- `./gradlew :app:compileDebugKotlin --no-daemon`
- `./gradlew :app:compileDebugJavaWithJavac --no-daemon`

> 注：当前仍有若干 deprecation warning（例如 `Icons.Filled.ArrowBack`），不影响构建通过。

---

## 4. MD3 主题迁移路线规划

### 4.1 当前主题状态分析
- **双轨颜色**：Compose token 与 XML token 未一一对齐，存在漂移风险。
- **色值引用散落**：扫描到 70+ 处 `?custom_background_color*` 依赖分布于 layout。
- **混合架构**：大量页面仍为 `AndroidView + legacy layout`，是视觉不一致主因。
- **主题支持**：已实现 3 档主题（粉红白/迷红黑/Miracle Neon）及动态图标切换。

### 4.2 MD3 迁移路线（4 阶段，避免反复返工）

#### P0 主题基线统一（基础）
- 建立 "Compose token + XML token" 一一对齐的语义映射表。
  - 覆盖：primary / secondary / tertiary / surface / surfaceContainer / onSurfaceVariant / error 等核心 token。
- 收敛主题入口与公共 style：
  - `PicaComposeTheme.kt` 作为唯一 Compose 主题源。
  - `styles.xml` 统一 legacy 页面的 AppCompat/MaterialComponents style。
- **验收**：单一语义下，Compose 与 XML 页面色调一致，无漂移。

#### P1 组件层统一（高收益）
- **抽并替换公共组件**（优先抽出 5+ 个高复用组件）：
  - `TopBar` / `PicaButton` / `InputField` / `Card` / `ListItem` / `Tab`。
  - Compose 侧：抽象为 Compose Fun；XML 侧：统一 MaterialToolbar + MaterialComponents style。
- **目标**："改一处全局生效"，降低后续维护面。
- **验收**：组件样式可通过主题切换全局应用，无重复定义。

#### P2 混合页清理（AndroidView 承载页）
- 按优先级逐步下线旧页面中的 legacy layout 与色值：
  1. **Love Pica Container**：迁移 ChatroomList 逻辑，完成容器化。
  2. **Settings 收尾**：收进 SettingsViewModel 的所有选择逻辑。
  3. **其他 Fragment 页**：逐步隐藏旧 `toolbar`，统一使用新 AppBar。
- **处理**：把嵌入布局中的 `?custom_background_color*` 逐步替换为语义 token。
- **验收**：AndroidView 承载的页面也采用新主题色，无视觉割裂。

#### P3 纯 Compose 替换与收口（长期）
- **RecyclerView -> LazyColumn**：逐步替换 legacy 列表实现。
- **业务逻辑下沉**：先把 Fragment 逻辑拆到 Fragment ViewModel，再决定是否迁回 Compose ViewModel。
- **清理无用资源**：删除不再被引用的 old layout 与 old style。
- **验收**：MD3 token 不会被旧 XML style 覆盖，架构清晰单一。

### 4.3 执行建议
- **不要直接逐页硬改**：先统一 token 与组件，再做页面。
- **避免反复返工**：语义层未收敛前，改页面会导致重复修改色值。
- **验证全流程**：每阶段编译通过后，需回归主题切换、页面跳转、混合页一致性。

## 7. P1 组件层补全（本轮完成）

### 7.1 新增公共组件

| 文件 | 组件 | 说明 |
| --- | --- | --- |
| `PicaListItem.kt` | `PicaValueListItem` | 可点击条目，尾部显示 value + 箭头，带可选分割线 |
| `PicaListItem.kt` | `PicaSwitchListItem` | 带 Switch 的设置行，带可选分割线 |
| `PicaListItem.kt` | `PicaRadioListItem` | 单选行，选中时尾部显示勾选图标，供 Dialog 内部使用 |
| `PicaDialogs.kt` | `PicaConfirmDialog` | 通用确认弹窗（标题 + 可选正文 + 确认/取消） |
| `PicaDialogs.kt` | `PicaSingleChoiceDialog` | 单选弹窗，内部使用 `PicaRadioListItem`，点选即关闭 |
| `PicaFeedback.kt` | `PicaLoadingIndicator` | 居中 CircularProgressIndicator，适配加载状态 |
| `PicaFeedback.kt` | `PicaEmptyState` | 居中空态，含图标 + 说明文字 |
| `PicaComicBlocks.kt` | `PicaTag` | MD3 标签/软 chip，支持选中态与点击态 |
| `PicaComicBlocks.kt` | `PicaStatRow` | 详情页统计行，支持 label/value/supportingText 结构 |
| `PicaComicBlocks.kt` | `PicaSectionHeader` | 分区标题，支持说明文案与右侧轻操作 |
| `PicaComicBlocks.kt` | `PicaActionRow` | 主操作 + 次级计数动作行，适合详情页底部 CTA 区 |
| `PicaComicBlocks.kt` | `PicaEpisodeGridItem` | 章节格子项，支持默认/下载中/已下载/选中状态 |
| `PicaComicBlocks.kt` | `PicaRecommendationCard` | 推荐漫画卡片，支持封面 slot 与标题/补充信息 |

### 7.2 SettingsScreen 重构

- 原私有组件 `SettingsSingleChoiceDialog` / `SettingsValueRow` / `SettingsSwitchRow` 已全部替换为公共组件并删除。
- `SettingsDialog.ThemeColorUnsupported` 从内联 `AlertDialog` 改为 `PicaConfirmDialog`。
- 各选择型 Dialog 从 `SettingsSingleChoiceDialog` 改为 `PicaSingleChoiceDialog`。

### 7.3 ComicDetail Preview 组件化

- `ComicDetailScreen` 的 Preview 内容不再使用泛化占位 panel，而是改为直接消费：
  - `PicaSectionHeader`
  - `PicaStatRow`
  - `PicaTag`
  - `PicaActionRow`
  - `PicaEpisodeGridItem`
  - `PicaRecommendationCard`
- 这样做的目的，是先把 `ComicDetail` 的 MD3 语义块组件固定下来，再继续推进运行时内容区从 `AndroidView` 向纯 Compose 替换。

---

## 8. 下一步方向与具体步骤

### 方向：P2 混合页视觉收口 + item 级纯 Compose 化

P0 已对齐 Compose ↔ XML token，P1 组件层已完整。
当前不要回到逐页重画，也不要直接大范围下线 Fragment。P2 的核心目标是先让 **legacy XML / drawable / item 单元格** 吃到同一套 MD3 语义 token，再选择低风险页面继续纯 Compose 化。

2026-04-25 路线校准：
- 已完成：`AppTheme.PopupOverlay`、`AppTheme.Toolbar`、`PicaTabLayout` 切到语义主题入口。
- 已完成：`actionbar_background.xml` 已从固定粉色渐变收口为主题色引用，后续只需要确认 v21 版本保持一致。
- 已完成：`AnnouncementListScreen` 列表内容已纯 Compose，可作为二级列表页模板。
- 已完成：legacy drawable 色值债务分类已写入 `md3_token_mapping.md`，下一步可以按资源族开始替换。
- 已完成：legacy drawable 第一批 token-ready 替换，通用主按钮、分段控件、tabbar、filter pressed/ripple、dialog/card/service 边框、chat 主色等已切到语义 attr。
- 已完成：共享 drawable/style 收口，章节状态、keyword chip、共享按钮/输入框/弹窗/tag/text wrapper 已接入语义 attr。
- 只读扫描显示 legacy 资源仍有大量固定色债务，不能直接全局替换，需要先分类语义：
  - `@color/colorPrimary`：106 处
  - `@color/colorPrimaryDark`：31 处
  - `@color/colorPrimaryLight`：13 处
  - `@color/pink`：41 处
  - `@color/pinkDark`：13 处
  - `@color/peach`：5 处
  - `@color/orange`：11 处
  - `@color/blue`：11 处

---

### 步骤 1：legacy drawable 色值债务分类（已完成）

**目标**：先处理共享 drawable，避免逐页替换后返工。

分类结果已写入 `md3_token_mapping.md` 的 `Legacy Drawable Color Debt Classification` 章节；本次共核对 66 个包含固定色、兼容色或非主题 outline 资源引用的 drawable。结论如下：
- 通用主按钮、分段控件、tabbar、选中筛选 chip：可直接迁到 `?colorPrimary` / `?custom_primary_overlay_color`。
- 软 chip、更多章节、普通章节 pressed 态：可迁到 `?custom_primary_container_color`。
- 弹窗、卡片、service chatroom、segment container：应统一到 `?custom_background_color` / `?colorOutline`。
- 漫画过滤分类色：属于内容分类色，暂时保留固定色，只迁移 ripple。
- 下载中、已下载、关键词 chip：需要先确定状态/关键词语义 token，不能机械替换成主色。

已分类资源：
- 章节按钮：`button_episode_*`
- 筛选按钮：`button_filter_*`
- 分段控件：`button_segment_*` / `radio_*segment*`
- 标签与关键词：`button_tag_bg.xml` / `button_keyword_bg.xml`
- 弹窗背景与按钮区：`dialog_*`
- 聊天条带：`chat_*` / `service_chatroom_*`

下一步替换规则：
- 强动作 / 选中态 → `?colorPrimary`
- 软标签 / chip / 浅填充 → `?custom_primary_container_color` 或 `?custom_secondary_container_color`
- 页面与卡片背景 → `?custom_background_color` / `?custom_background_color_dark`
- 边框 / 分割线 → `?colorOutline`
- 内容特定色，例如排行榜金银铜、漫画过滤分类、下载状态，可暂时保留固定色，但必须标记为内容语义。

### 步骤 1.1：legacy drawable 第一批 token-ready 替换（已完成）

本批只处理无需新增 token 的资源，避免改变内容分类/状态含义。

已完成资源族：
- 通用主按钮：`button_round_pink_bg.xml`、`button_small_round_pink_bg.xml`、v21 `button_round_pink_bg.xml`
- 分段控件与 tabbar：`button_segment_*`、`radio_*segment*`、`button_tabbar_bg.xml`
- chip / 标签 pressed 与 ripple：`button_filter_*` pressed 态、v21 filter ripple、`button_filter_selected_bg.xml`、v21 `button_tag_bg.xml`
- 章节中性/更多/上次阅读：`button_episode_normal_bg.xml`、`button_episode_more_bg.xml`、`button_episode_last_view_bg.xml`
- 容器与边框：`dialog_*`、`card_style_white_bg.xml`、`service_chatroom_bg.xml`、`md3_input_bg.xml`、`toggle_button_peach.xml`
- 聊天与辅助：`chat_bg.xml`、`chat_connection_bar_new.xml`、`icon_pager_indicator_normal.xml`

替换后 `drawable` / `drawable-v21` 中剩余固定色债务仅集中在：
- `button_episode_downloaded_bg.xml`
- `button_episode_downloading_bg.xml`
- `button_keyword_bg.xml`

剩余原因：
- 已下载 / 下载中需要明确状态 token，base 与 v21 当前语义不一致。
- keyword chip 需要决定走 secondary container，还是新增 keyword 专用 token。

验证：
```
./gradlew.bat :app:mergeDebugResources :app:compileDebugKotlin --no-daemon
./gradlew.bat :app:compileDebugJavaWithJavac --no-daemon
```
结果：通过。

### 步骤 1.2：共享 drawable/style 收口（已完成）

本批处理“共享资源入口”，目标是让 drawable 与 `styles.xml` 中的通用控件不再直接依赖旧固定色。

新增 XML 语义 attr：
- `custom_episode_downloaded_color`
- `custom_episode_downloaded_outline_color`
- `custom_episode_downloading_color`
- `custom_episode_downloading_outline_color`
- `custom_keyword_container_color`
- `custom_keyword_outline_color`
- `custom_keyword_text_color`

已完成：
- 章节状态 drawable：
  - `button_episode_downloaded_bg.xml`
  - `button_episode_downloading_bg.xml`
  - v21 对应 drawable
- keyword chip：
  - `button_keyword_bg.xml`
  - `KeywordButton`
- 共享控件 style：
  - `ButtonFilledTonal`
  - `ButtonTextPrimary`
  - `EditTextStandardSingleLine*`
  - `MyAlertDialogStyle`
  - `TagButtonPink`
  - `TextAppearence.TextInputLayout.Pink`
  - `TextLabel`
- 兼容文字 wrapper：
  - `TextBaseStyleBlue*`
  - `TextBaseStyleOrange*`
  - `TextBaseStylePeach*`
  - `TextBaseStylePink*`
  - `TextBaseStyleGray*` 的 hint / light 入口

收口后扫描：
```
rg -n "@color/(colorPrimary|colorPrimaryDark|colorPrimaryDark2|colorPrimaryLight|pink|pinkDark|pinkLight|pink_transparent_30|peach|orange|orangeDark|orangeLight|orangeLight2|blue|blueLight|green|gray|grayDark|grayLight|colorAccent|colorAccentDark|backgroundDark|md3_outline|md3_outline_variant)" app/src/main/res/drawable app/src/main/res/drawable-v21 app/src/main/res/values/styles.xml
```
结果：无匹配。

验证：
```
./gradlew.bat :app:mergeDebugResources :app:compileDebugKotlin :app:compileDebugJavaWithJavac --no-daemon
```
结果：通过。

---

### 步骤 2：legacy layout 与 item XML 收口

**目标**：把 layout 中直接引用的旧粉色/主色资源逐步替换为语义 attr；优先处理仍被 Compose `AndroidView` 承载的 item XML。

优先顺序：
1. `item_apk_version_list_recycler_view_cell.xml`
2. `item_pica_app_list_recycler_view_cell.xml`
3. `item_notification_recycler_view_cell.xml`
4. `item_leaderboard_*_recycler_view_cell.xml`
5. `item_comic_list_recycler_view_cell.xml`
6. `item_comment*_recycler_view_cell.xml`

处理规则：
- 文字角色先判定为标题、正文、辅助信息，再接 `TextAppearance.Pica.*` 或已有 wrapper。
- 颜色不要按旧资源名机械替换，先判断是品牌动作、辅助强调、内容分类还是状态色。
- 对话框按钮文字色优先统一到 `?colorPrimary`。

---

### 步骤 3：下一批内容纯 Compose 化

**目标**：沿用 `AnnouncementListScreen` 的路径，先把低风险二级列表页的 item XML 替换为 Compose item。

已完成：
- `AnnouncementListScreen`
- `ApkVersionListScreen`
- `PicaAppListScreen`

下一批推荐顺序：
1. `NotificationScreen`
2. `LeaderboardScreen`
3. `GameScreen`

原则：
- 保留现有 ViewModel、分页触发、点击回调和错误事件。
- 只替换 item 渲染层，不在同一批里重写业务状态机。
- 每完成一个页面，确认浅色、深色、Neon 下 item 背景、文字、分割线、点击态一致。

---

### 步骤 4：主 Tab 顶栏统一

**目标**：让主 Tab 顶栏与二级页 `PicaSecondaryScreen` 的 tonal elevation、surface 和 typography 对齐。

推荐处理：
- `HomeScreen.kt`：标题 + 通知按钮可直接迁到 `PicaTopBar`。
- `ProfileScreen.kt`：标题 + 编辑按钮可直接迁到 `PicaTopBar`。
- `CategoryScreen.kt`：搜索框是核心交互，不建议硬套普通顶栏；应抽 `PicaSearchTopBar`，或扩展 `PicaTopBar` 的 content slot。

---

### 步骤 5：高风险混合页延后

以下页面先不要作为下一批视觉迁移入口：
- `ComicListScreen`
- `ComicDetailScreen`
- `CommentScreen`
- `GameDetailScreen`
- `ProfileScreen`
- `CategoryScreen`
- `AnonymousChatScreen`

原因：
- 页面仍有复杂 legacy view 组合或 Fragment 托管。
- 虽然部分 ViewModel 已经下沉，但承载层仍混合较深。
- 应先完成 token / drawable / item 层收口，再决定是否整页 Compose 化。

---

### 步骤 6：编译验证 + 主题切换回归

每完成一个可独立提交的批次后执行：
```
./gradlew :app:compileDebugKotlin --no-daemon
./gradlew :app:compileDebugJavaWithJavac --no-daemon
```

回归检查项：
- Light Pink → Dark Red → Miracle Neon 主题切换后，Compose 与 legacy 内容色调不割裂。
- Toolbar / TabLayout / Dialog 在三套主题下文字和图标均可见。
- Settings 对话框、列表行点击、水波纹效果正常。
- 二级列表分页、点击跳转、错误弹窗不回退。
- `AndroidView` 承载页面无重复 appbar、无明显截断。

---

## 6. 下一步实现（建议按优先级）

### P0（先做，直接影响功能完整性）
- 拆 `ComicListFragment` ViewModel：
  - 列表分页
  - 随机/收藏/搜索分支
  - 筛选状态与错误事件
- 拆 `CommentFragment` ViewModel：
  - 主评论分页
  - 发评论/回复/楼中楼
  - 错误和一次性事件
- 清理 `ComicDetailFragment` 中已经不再需要的旧网络方法，确保 Fragment 只负责视图与导航。

### P1（其次，提升稳定性与体验）
- 实现 `Love Pica Container`：
  - 新增 `LovePicaContainerScreen`（Compose Tab）。
  - Tab1：`ChatroomListScreen`；Tab2：`PicaAppListScreen`。
  - Category 的 `love pica` 入口改为进入容器路由而不是单页。
- 迁移 `ChatroomListFragment` 逻辑：
  - 对齐缓存读取 `e.G/e.n`。
  - 对齐接口加载 `at(auth)`。
  - 对齐特殊条目 `custompicaapp` 行为。
- `Settings` 相关收尾：
  - 校验 `ChangePin/ChangePassword` 与旧流程的文案、错误提示、成功返回行为完全一致。
- 统一二级页顶栏组件：
  - 抽 `PicaTopBar`（标题、返回、可选右侧操作）。
  - 统一替换各 Screen 内重复顶栏代码，减少后续维护成本。
- 完成 `Preview` 补全与修正：
  - 所有 Screen 至少 1 个基础 Preview。
  - 列表类页面补”空态/有数据”两个 Preview。
- 错误态统一：
  - 各 ViewModel 统一 `errorEvent/errorCode/errorBody` 模式。
  - 页面统一错误弹窗触发时机（避免重复弹窗）。
- **按 MD3 P0 路线推进主题基线统一**（token 对齐、组件抽取）。

### P2（最后，逐步去 legacy 依赖）
- 将 `AndroidView + RecyclerView Adapter` 逐步替换为 `LazyColumn` 纯 Compose 列表。
- 将 legacy Fragment 的业务逻辑先下沉到 Fragment ViewModel，再决定是否迁到 Compose ViewModel。
- 清理无用布局与旧绑定代码，降低混合架构复杂度。
- **按 MD3 P1-P2 路线推进组件统一与混合页清理**。

### P3（MD3 收口）
- **按 MD3 P3 路线完成纯 Compose 替换与 legacy 依赖清理**（RecyclerView/Fragment 下线）。

### 每阶段验收标准
- 编译通过：
  - `./gradlew :app:compileDebugKotlin --no-daemon`
  - `./gradlew :app:compileDebugJavaWithJavac --no-daemon`
- 回归项：
  - 顶栏返回行为正确；
  - 列表可加载/可翻页；
  - 关键点击（详情跳转、设置保存）可用；
  - 无重复 appbar 与布局截断问题；
  - **MD3 主题切换下，Compose 与 XML 页面视觉一致**。

---

## 7. ViewModel 对齐进展

### 7.1 本轮已补齐
- `ComicDetailViewModel`
  - 对齐为多请求并行状态模型：详情、章节、推荐分开请求，统一 loading 计数。
  - 补回 `loadMoreEpisodes()`、`nextEpisodePage`、`hasMoreEpisodes`。
  - 补回一次性事件：`messageEvent/messageRes`、`errorEvent/errorCode/errorBody`。
  - 点赞 / 收藏后同步本地详情缓存，行为向原 `ComicDetailFragmentViewModel` 靠齐。
- `GameDetailViewModel`
  - 补回详情拆分状态：`bannerScreenshot`、`screenshots`、popup/video 状态。
  - 增加游戏点赞动作与消息/错误事件。
- `NotificationViewModel`
  - 补回分页守卫与 `hasMore`。
  - 增加 `refresh(force)`、错误事件输出。
- `LeaderboardViewModel`
  - 增加错误事件输出。
  - 增加 `refreshAll()`，补齐 popular/knight 双列表刷新入口。
- `ComicListViewModel`
  - 补回远端 / 本地双数据源：随机、收藏、最近阅读、已下载、普通列表。
  - 补回高级搜索分类缓存读取、收藏排序 / 高级排序状态、页码跳转、最近阅读清空、过滤项持久化。
  - 增加错误事件与消息事件。
- `CommentViewModel`
  - 从“仅拉评论列表”提升为完整评论状态机。
  - 补回 comic / game / profile / thread 四种入口模式。
  - 补回主楼分页、楼中楼分页、回复态、发评论、发回复、点赞、隐藏、举报、置顶、污头像切换。
  - 增加一次性消息 / 错误事件。

### 7.2 Compose 侧联动调整
- `CommentScreen`
  - 改为消费新的 `commentItems` 状态，而不是本地拼 top/normal 两段临时数据。
  - 评论列表交互已接入 ViewModel：展开回复、查看更多、点赞、隐藏、举报、置顶、污头像切换。
  - 增加错误弹窗与消息 Toast 的事件消费。
- `ComicListScreen`
  - 补回顶部动作入口：收藏排序、高级搜索排序、高级搜索分类、最近阅读清空。
  - 补回页码输入跳转、总页数展示、过滤按钮点击与样式同步。
  - 补回错误弹窗与消息 Toast。
- `ComicDetailScreen`
  - 补回错误 / 消息事件消费。
  - 补回更多章节按钮、滚动到底自动加载章节。
  - 骑士头像点击已改回“个人资料弹窗”语义，封面点击改回图片预览语义。
- `GameDetailScreen`
  - 补回游戏详情页主要交互：下载、评论、点赞、礼物提示、视频弹窗、截图列表与截图全屏浏览、版本说明 / 描述展开收起。
  - 接入新的 `GameDetailViewModel` 状态与错误 / 消息事件。
- `NotificationScreen`
  - 补回错误弹窗。
  - 补回 sender 点击与 cover 点击回调。
- `LeaderboardScreen`
  - 补回错误弹窗。
  - 修复 tab 切换时 RecyclerView 可能沿用错误 adapter 的问题。
- `HomeScreen`
  - 补回显式初始化与错误事件消费。
- `GameScreen`
  - 补回错误事件消费。
  - 修复列表为 `GridLayoutManager` 时分页监听仍按 `LinearLayoutManager` 读取位置的问题。

### 7.3 当前结论
- `ComicList / Comment / ComicDetail / GameDetail / Notification / Leaderboard` 的 Compose ViewModel 已不再只是“薄请求封装”，而是开始承接原 Fragment 的状态与交互逻辑。
- `Home / Game / ComicList / ComicDetail / GameDetail / Notification / Leaderboard / Comment` 的 Screen 层也已开始真正消费这些状态，而不是只保留旧布局壳。
- 下一阶段应继续处理：
  - 继续核对 `PicaAppList / AnnouncementList / ApkVersionList / ProfileEdit / PicaApp` 是否还存在细节行为缺口；
  - 处理 `MainActivity` 里已切到 Compose `Screen` 的其余跳转页，逐一做旧行为回归；
  - 再继续 Fragment -> Screen 的最后收口。

### 7.4 本轮继续推进
- `ProfileEditScreen`
  - 补回旧 `BaseImagePickFragment` 对应的头像点击流程：
    - 相机 / 相册选择
    - `ImageCropActivity` 裁剪
    - 头像上传后的本地预览保持
  - `ProfileEditViewModel` 补充 `avatarPreviewUri` 与资料加载错误事件，避免加载失败静默吞掉。
- `PicaAppScreen`
  - 补回 WebView 生命周期对齐：
    - `onResume()` / `onPause()`
    - 页面销毁时 `stopLoading()` + `destroy()`
  - 继续沿用 legacy `g.k(webView)` 的站内 / 站外跳转策略，并补上 `javaScriptCanOpenWindowsAutomatically`。
- `PicaAppListScreen` / `MainActivity`
  - 补回 “嗶咔萌約” 特殊入口，不再错误进入普通 `PicaAppScreen`。
  - 新增 `AnonymousChatScreen`，先以 Screen 托管 legacy `AnonymousChatFragment`，保留原界面与主要逻辑。

### 7.5 Screen 全量检查与 Preview 收口
- 本轮对剩余 Compose screen 又做了一次完整回查，目标从“能跑”提高到：
  - 旧逻辑是否还漏错误态/初始化态；
  - `AndroidView` 承载页在 Preview 中是否仍然是空白；
  - 主 tab / 设置 / 登录启动页是否能直接通过 Preview 看布局问题。
- 新增统一预览支撑：
  - `ScreenPreviewSupport.kt`
  - 提供多状态 `PreviewParameterProvider` 与若干占位面板：
    - `SplashPreviewProvider`
    - `LoginPreviewProvider`
    - `SettingsPreviewProvider`
    - `PreviewListPanel`
    - `PreviewGridPanel`
    - `PreviewChatPanel`
- 已补成“可看结构”的 screen 预览：
  - `SplashScreen`
    - 从单一 loading preview 改为多状态 preview（loading / error+options）。
  - `LoginScreen`
    - 增加普通态 / loading+重发激活入口态 preview。
  - `SettingsScreen`
    - 增加普通态 / 对话框展开态 preview。
  - `HomeScreen`
    - Preview 不再是空白，补了通知区与推荐区占位。
  - `GameScreen`
    - Preview 不再是空白，补了 2 列游戏卡片占位。
  - `CategoryScreen`
    - Preview 补了默认分类格子与关键词区占位。
  - `NotificationScreen`
    - Preview 补了通知列表占位。
  - `LeaderboardScreen`
    - Preview 补了 popular/knight 模式可视化占位。
  - `PicaAppListScreen`
    - Preview 补了小程序列表占位。
  - `AnnouncementListScreen`
    - Preview 补了公告列表占位。
  - `ApkVersionListScreen`
    - Preview 补了版本日志列表占位。
  - `PicaAppScreen`
    - Preview 补了 WebView 容器说明占位。
  - `AnonymousChatScreen`
    - Preview 补了聊天气泡占位。
  - `ProfileScreen`
    - Preview 补了个人信息头部与 tabs 占位。
- 逻辑侧顺手补齐的一处真实缺口：
  - `CategoryViewModel`
    - 增加统一 `errorEvent / errorCode / errorBody`。
  - `CategoryScreen`
    - 补回错误弹窗消费，不再在分类/关键词接口失败时静默吞掉。

### 7.6 当前已知剩余缺口
- `CategoryFragment` 旧实现里保留了 tags 区结构，但 Compose 侧目前仍主要消费：
  - 默认分类；
  - keywords。
- 也就是说，`CategoryScreen` 现在的主要导航逻辑与关键词逻辑已可用，但 **tag 区数据链路尚未完整回收**。
- 下一轮如果继续推 `Category`，建议优先决定：
  - 是补回 legacy tags 数据源；
  - 还是明确下线该区块，避免保留半迁移结构。

### 7.7 本轮继续纯化的 legacy 承载页
- 这一轮先处理了风险最低、最适合彻底去掉整页 legacy RecyclerView 容器的一批 screen：
  - `AnnouncementListScreen`
  - `ApkVersionListScreen`
  - `PicaAppListScreen`
  - `NotificationScreen`
  - `GameScreen`
  - `LeaderboardScreen`
- 处理方式不是“重画新 UI”，而是：
  - 页面容器层改为 Compose `LazyColumn` / `LazyVerticalGrid`
  - 分页触发改为 Compose 滚动状态监听
  - 原有点击逻辑、分页逻辑、错误弹窗逻辑保留
  - 高风险列表 item 级样式先继续复用 legacy XML 单元格绑定，尽量维持原界面细节
- 这样做的结果是：
  - **整页级 legacy RecyclerView / Fragment 列表容器已经下线**
  - `AnnouncementListScreen`、`ApkVersionListScreen`、`PicaAppListScreen` 的单元格级 XML 已下线
  - `NotificationScreen`、`GameScreen`、`LeaderboardScreen` 等列表仍可继续逐个把 item XML 改成 Compose 组件

### 7.8 新增的 Compose 列表支撑
- 新增 `LegacyListSupport.kt`
  - `RememberListLoadMore`
  - `RememberGridLoadMore`
  - `ListLoadingFooter`
- 这组 helper 的作用是把原本依赖 RecyclerView `OnScrollListener` 的分页触发，迁成 Compose 滚动状态驱动。

### 7.9 迁移后的当前剩余重型承载页
- 目前还没有完全纯化的高风险页面，主要剩下这几类：
  - `AnonymousChatScreen`
    - 仍直接使用 `LegacyFragmentHost` 托管 `AnonymousChatFragment`
  - `CategoryScreen`
    - 页面主体已纯 Compose；tags 数据链路尚未完整回收。
  - `ProfileEditScreen`
    - 主体逻辑已补齐，但页面承载仍有 legacy layout 依赖
  - `PicaAppScreen`
    - 仍是 Compose 承载 WebView 的混合页
  - `ComicListScreen` / `CommentScreen` / `GameDetailScreen`
    - 业务逻辑已大幅下沉到 ViewModel，但页面承载层仍保留不同程度的 legacy 视图依赖
  - `ComicViewerActivity`
    - 阅读内容入口已切到 Compose host，但 Activity 外壳、控制面板和旧 XML overlay 暂保留。

### 7.10 本轮验证
- 已执行并通过：
  - `./gradlew.bat :app:mergeDebugResources :app:compileDebugKotlin :app:compileDebugJavaWithJavac --no-daemon`
  - `./gradlew :app:compileDebugKotlin --no-daemon`
- 本轮 item 级 Compose 化后扫描：
  - `ApkVersionListScreen.kt` / `PicaAppListScreen.kt` 中不再存在 `AndroidView`、对应 item binding、`item_apk_version_list_recycler_view_cell`、`item_chatroom_list_cell` 或 Picasso 引用。
- 当前构建仍存在少量 warning：
  - 例如 `Icons.Filled.ArrowBack` 的弃用提示
  - 不影响本轮迁移结果与编译通过

### 7.11 Profile / 评论 / 图片与无 XML 收口
- Screen 重写状态
  - 以下 screen 已按 MD3 Compose 方向重写，不再以源 XML 作为页面主体：
    - `HomeScreen`
    - `CategoryScreen`
    - `GameScreen`
    - `ComicListScreen`
    - `ComicDetailScreen`
    - `CommentScreen`
    - `GameDetailScreen`
    - `NotificationScreen`
    - `LeaderboardScreen`
    - `ProfileScreen`
    - `ProfileEditScreen`
    - `SettingsScreen`
    - `LoginScreen`
    - `SplashScreen`
    - `AnnouncementListScreen`
    - `ApkVersionListScreen`
    - `PicaAppListScreen`
    - `PicaAppScreen`
  - 重写方式不是“重画静态 UI”，而是从源 Fragment 抓逻辑后迁到 ViewModel：
    - 初始化参数；
    - API 调用；
    - 分页边界；
    - 本地数据库读取；
    - 缓存读取 / 写回；
    - Toast / Dialog 事件；
    - 点击跳转和特殊分支。
  - 当前仍需后续处理的 screen：
    - `AnonymousChatScreen`：仍托管 `AnonymousChatFragment`；
    - `LovePicaContainerScreen`：仍包含 legacy fragment 容器；
    - 其他已重写 screen 若还存在 `AndroidView`，必须继续判断是否属于无 XML 桥接，还是遗留旧 view 承载。
- `ProfileScreen`
  - 已从旧 `ProfileFragment` 行为补回个人页核心功能：
    - 个人资料头部；
    - 头像相机 / 相册选择；
    - `ImageCropActivity` 裁剪结果预览；
    - 打哔咔入口；
    - 收藏、最近观看、已下载漫画区；
    - 我的评论区。
  - 收藏 / 最近观看 / 已下载逻辑下沉到 `ProfileComicViewModel`，数据来源对齐旧 `ProfileComicFragment`：
    - 收藏：`users/favourite`；
    - 最近观看：`DbComicViewRecordObject` + `DbComicDetailObject`；
    - 已下载：`DbComicDetailObject` 中 `download_status > 0`。
- 图片加载
  - 新增 `PicaContentCards.kt` 公共卡片 / 图片组件。
  - `PicaRemoteImage` / `PicaImageUrl` 已切到 Coil Compose `AsyncImage`。
  - Coil 请求统一使用 `allowHardware(false)`，兼容老版本 Android 和裁剪 / clip / 预览场景。
  - Picasso 仅保留给老式 Java / XML 界面使用。
  - 修复封面、头像、截图预览在部分旧接口图片 URL 下加载失败的问题。
- `CategoryScreen`
  - 分类排版从固定高度网格改为 `LazyVerticalGrid + GridCells.Adaptive`。
  - 快捷入口改为横向滚动卡片，并复用旧 `cat_*` 原图资源。
  - 修复旧图标被 `Icon tint` 染成紫色方块的问题，改为 `Image(painterResource)` 原图显示。
  - 解决分类卡片裁切、挤压和不同屏幕宽度下排版错乱。
- `ComicDetailScreen`
  - 删除文件内遗留的大段旧 XML / `fragment_comic_detail` 注释块。
  - 当前 Compose screen 不再保留可回退的 XML inflate 代码。

### 7.12 CommentViewModel 与评论 UI 对齐
- `CommentViewModel`
  - 按旧 `CommentFragment` 继续补齐方法名入口，方便迁移期间逐项核对旧逻辑：
    - `C(reset: Boolean)` / `C(index: Int)`；
    - `D(reply: Boolean)`；
    - `N(index)`；
    - `O(index)`；
    - `P/R/f/h`；
    - `Q/g`；
    - `S/i`；
    - `A/T/U/V/j/k`；
    - `db/dc/aa/ab/ac`；
    - `a(userId, dirty)` / `b(commentId, top)`。
  - 保留并继续使用现有 Compose 侧语义方法，旧方法名作为兼容 wrapper。
- `CommentScreen`
  - 评论展示逻辑改为对齐旧 `CommentRecyclerViewAdapter`：
    - 楼层使用 `displayFloorCount - index`；
    - 时间使用 `g.B(context, createdAt)`；
    - 普通评论使用 `comment.user`；
    - 个人页评论使用传入的 `UserBasicObject`；
    - 回复楼层使用 `childsCount - replyIndex`；
    - top comment / pinned 状态独立展示。
  - 交互继续走 ViewModel：
    - 展开 / 取消回复；
    - 加载更多回复；
    - 点赞；
    - 举报；
    - 管理员隐藏；
    - 置顶；
    - 污头像。
  - UI 改为中文文案和旧资源字符串，不再显示 `Like / Reply / Open / Report` 这类临时英文按钮。
- `ProfileScreen` 评论区
  - 改为使用个人页评论语义：
    - 显示当前 profile 用户头像 / 名称 / 等级；
    - 显示目标漫画或游戏标题；
    - 使用格式化时间和楼层。

### 7.13 Home 自动打哔咔
- `HomeScreen`
  - 进入首页后自动触发打哔咔。
  - 使用独立 `ProfileViewModel` key：`home_auto_punch_in`，避免污染 Profile 页实例状态。
  - 先读取本地 profile 缓存；如果 `isPunched = true`，不重复请求。
  - 未打过时调用旧接口：`users/punch-in`。
- `ProfileViewModel`
  - 新增 `punchInIfNeeded()`。
  - `setPunchedInLocally()` 成功后同步写回本地 profile JSON，避免返回首页重复签到。
- 提示策略
  - 自动签到成功只 Toast：`alert_punch_in_success`。
  - 自动签到失败只 Toast 通用错误，不弹旧错误对话框。
  - Profile 页手动打哔咔成功提示也改为 Toast，避免再使用 `AlertDialogCenter.punchedIn()`。

### 7.14 本轮验证状态
- 已通过：
  - `./gradlew.bat :app:compileDebugKotlin`
  - `./gradlew.bat :app:assembleDebug`

### 7.15 ComicDetail 简介折叠与图片统一
- `ComicDetailScreen`
  - 简介从普通 `PicaStatRow` 拆为 `CollapsibleDescriptionRow`。
  - 简介长度超过约 90 字，或换行超过 2 个时默认折叠。
  - 折叠态最多显示 5 行并使用省略号。
  - 点击简介行可展开 / 收起。
  - 辅助文案合并为：
    - 折叠态：`展开 · 点赞 / 评论`
    - 展开态：`收起 · 点赞 / 评论`
  - 封面和推荐图不再直接使用裸 `AsyncImage`，统一走 `PicaImageUrl`，确保 Coil 配置一致。
- `AnnouncementListScreen` / `PicaAppListScreen`
  - 保留 Coil Compose 图片加载。
  - `AsyncImage` 改为显式 `ImageRequest.Builder`。
  - 增加 `allowHardware(false)` / placeholder / error / fallback / crossfade。
- `PicaContentCards.kt`
  - 移除 Picasso-backed `AndroidView(ImageView)` 实现。
  - `PicaImageUrl` 改为 Coil `AsyncImage + ImageRequest`。
  - 老安卓兼容策略集中在公共图片组件中维护。

### 7.16 ComicViewerActivity 阅读器 screen 替换
- 新增 `ComicViewerComposeHostView.kt`
  - 作为 `ComicViewerActivity` 的 Compose 阅读器 screen。
  - 实现旧接口 `com.picacomic.fregata.a_pkg.c`，因此可继续接收 Activity 的旧阅读器回调：
    - `a(pageList, offset, restorePosition, reset)`；
    - `b(page, smooth)`；
    - `B(verticalScroll)`；
    - `M(orientation)`。
  - 内部使用 Compose `LazyColumn` / `LazyRow` 渲染漫画页。
  - 图片加载使用 Coil `AsyncImage + ImageRequest`，并设置 `allowHardware(false)`。
  - 下载页优先读取本地 `DownloadComicPageObject` 文件；本地不可读时回退网络 `g.b(media)`。
  - 页码变化通过旧 `ComicViewerCallback.r(page)` 回传给 Activity，保留原页码、记录、上下页加载逻辑。
- `ComicViewerActivity`
  - 不再 `FragmentTransaction.add()` 旧的：
    - `ComicViewFragment`
    - `ComicViewerListFragment`
  - 改为直接向 `activity_comic_viewer.xml` 的 `container` 添加 `ComicViewerComposeHostView`。
  - Activity 原有控制面板、亮度、方向、夜间模式、自动翻页、上下话、保存阅读记录逻辑继续复用。
  - 初始化后直接调用 `bL()` 触发首批页面加载，不再依赖旧 Fragment 的 `bH()` 生命周期回调。
- 旧 Java Fragment / Adapter
  - 暂不删除，作为未清理的 legacy 代码存在。
  - 新入口已不再调用它们。

### 7.17 最新验证状态
- 已执行并通过：
  - `./gradlew.bat :app:compileDebugKotlin`
  - `./gradlew.bat :app:assembleDebug`
- 当前仍有部分旧 Java / XML 界面保留 Picasso 引用，这是刻意保留的兼容范围。

### 7.18 ComicList 屏蔽栏与 ComicDetail 操作区优化
- `ComicListScreen`
  - 控制面板中的屏蔽 / 过滤 chip 从多行 `FlowRow` 改为横向单行滑动 `Row`。
  - 保留已选高级分类区域的多行展示，避免已选项过多时挤压筛选栏。
- `ComicDetailScreen`
  - 操作区新增“收藏”按钮，调用 `ComicDetailViewModel.toggleFavourite()`，继续使用旧接口 `comics/{comicId}/favourite`。
  - 点赞按钮显示选中态，并继续显示点赞数。
  - 收藏按钮根据 `detail.isFavourite` 显示选中态。
- `PicaComicBlocks.kt`
  - `PicaActionRow` 的主按钮、评论、点赞、收藏按钮统一固定高度，避免文字和角标导致高度不一致。
  - `PicaActionItem` 增加 `selected` 状态，用于 MD3 selected container 视觉表现。
  - `PicaRecommendationCard` 固定卡片高度，封面改为填满卡片宽度，标题与分类文案固定行数，解决推荐卡片因标题长短导致的高低不齐。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.31 PopupActivity CommentFragment / SettingFragment 迁移
- `PopupActivity`
  - 改为 Compose host，不再 inflate `activity_comment.xml`。
  - `TYPE_KEY_COMMENT` 不再托管旧 `CommentFragment`，直接进入 Compose `CommentScreen`。
  - `TYPE_KEY_SETTING` 不再托管旧 `SettingFragment`，直接进入 Compose `SettingsScreen`。
  - 保留旧 extra 常量与入口语义：
    - `EXTRA_KEY_TYPE`
    - `EXTRA_KEY_COMIC_ID`
    - `TYPE_KEY_COMMENT`
    - `TYPE_KEY_SETTING`
- 评论弹窗入口
  - 继续读取 `EXTRA_KEY_COMIC_ID`。
  - 保留返回关闭弹窗行为。
  - 评论中点击漫画 / 游戏时改为启动 `MainActivity` 并传入一次性打开参数。
- 设置弹窗入口
  - 复用 `SettingsViewModel` 与 Compose `SettingsScreen`。
  - 用内部 Compose page state 承接原 `SettingFragment` 子页面跳转：
    - APK 版本 -> `ApkVersionListScreen`
    - FAQ / 问题 -> `QuestionScreen`
    - PIN -> `ChangePinScreen`
    - 密码 -> `ChangePasswordScreen`
  - 保留继续下载、缓存系统设置、登出、主题色切换重启设置页等旧逻辑。
- `MainActivity`
  - 新增消费 `PopupActivity.EXTRA_OPEN_COMIC_ID` / `EXTRA_OPEN_GAME_ID`。
  - 从评论弹窗跳回主界面时，会一次性导航到 `ComicDetailScreen` / `GameDetailScreen`，消费后清空，避免重组重复跳转。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.32 ImagePopupFragment 迁移
- 新增 `ImagePopupDialogContent`
  - 纯 Compose / MD3 Dialog 内容，不再 inflate `fragment_image_popup.xml`。
  - 图片加载从 Picasso 切换为 Coil `AsyncImage`。
  - 保留旧占位图语义：继续使用 `placeholder_avatar_2` 作为 placeholder / error。
  - 图片仍使用 `ContentScale.Fit`，对齐旧 `ImageViewBaseStyleFitCenter` 的预览逻辑。
- `BaseActivity.D(imageUrl)`
  - 保留旧入口方法名，调用方不用改。
  - 不再 add `ImagePopupFragment`，改为显示 Compose Dialog。
  - 保留旧行为：
    - 已有图片预览弹窗时不重复打开；
    - 点击图片区域关闭；
    - 点击右上角关闭按钮关闭；
    - 点击外侧允许关闭；
    - back / search key 继续被消费；
    - dismiss 后触发一次 `System.gc()`。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.33 LockDialogFragment 迁移
- 新增 `LockDialogContent`
  - 纯 Compose / MD3 PIN 锁屏内容，不再 inflate `fragment_lock_dialog.xml`。
  - 保留旧全屏黑底锁屏语义。
  - PIN 仍读取 `e.y(context)`。
  - PIN 为空时不显示锁屏，对齐旧 Fragment 打开后立即 dismiss 的行为。
- `BaseActivity.bD()`
  - 保留旧入口方法名，调用方不用改。
  - 不再 add `LockDialogFragment`，改为显示 Compose Dialog。
  - 保留旧行为：
    - 已有锁屏弹窗时不重复打开；
    - 不可点击外侧关闭；
    - `setCancelable(false)`；
    - back / search key 继续被消费；
    - dismiss 后触发一次 `System.gc()`。
- 输入逻辑迁移
  - 4 个 PIN 输入框保持固定尺寸。
  - 输入一位后自动跳到下一格。
  - 第 4 位输入后拼接 4 位 PIN 并与 `e.y(context)` 忽略大小写比较。
  - 校验成功关闭锁屏。
  - 校验失败清空 4 格并回到第一格。
- 隐藏标题点击逻辑保留
  - 标题点击计数继续从 0 开始。
  - 点击超过旧阈值后允许关闭锁屏。
  - 接近阈值时继续显示倒计时数字。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.34 CropImageFragment 迁移
- 新增 `ImageCropScreen` / `PicaCropImageView`
  - 放弃旧 `com.isseiaoki.simplecropview.CropImageView` 依赖路径。
  - 不再 inflate `fragment_crop_image.xml`。
  - 重写裁剪实现：
    - 自行解码 `KEY_IMAGE_URI_STRING`；
    - 自绘黑底、裁剪框、遮罩、三分线；
    - 支持单指拖动；
    - 支持双指缩放；
    - 支持左 / 右旋转；
    - 缩放时保证图片始终覆盖裁剪框，避免输出空白区域。
- `ImageCropActivity`
  - 不再 `setContentView(activity_image_crop)`。
  - 不再 `FragmentTransaction.add(CropImageFragment)`。
  - 改为 Compose host，直接显示 `ImageCropScreen`。
  - 保留旧 intent 参数：
    - `KEY_IMAGE_URI_STRING`
    - `KEY_ACTION_TYPE`
  - 保留旧结果回传：
    - `CROP_IMAGE_RESULT_URI`
  - 保留旧 `b(uri)` 语义：
    - `type == 1`：裁剪完成后继续上传头像；
    - `type == 2` / 其他：设置结果并关闭页面。
  - 保留旧头像上传逻辑 `c(uri)`：
    - 继续调用 `users/avatar`；
    - 继续用 `g.c(..., 200)` 读取裁剪结果；
    - 继续转 `data:image/jpeg;base64,...`。
- 输出尺寸逻辑
  - `type == 1`：输出 400 x 400，保留旧头像裁剪尺寸。
  - `type != 1`：长边最多 800，保留旧通用图片裁剪尺寸约束。
  - 输出文件继续使用 `FileProviderHelper.getCropOutputFile(context)`。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.35 ProgressDialogFragment / ProgressLoadingFragment 迁移
- 新增 `ProgressDialogContent` / `ProgressLoadingContent`
  - 纯 Compose / MD3 承载，不再 inflate：
    - `fragment_progress_dialog.xml`
    - `fragment_progress_loading.xml`
  - 不再使用 Picasso 加载 `TestingLink` placeholder 动画。
  - 保留旧 `e.x(context)` 分支：
    - `true`：使用系统进度指示器；
    - `false`：使用旧 `loading_animation_big` / `loading_animation` drawable，并在 `AndroidView` 中启动 / 停止 `AnimationDrawable`。
- `BaseActivity`
  - `bA()`：不再 add `ProgressLoadingFragment`，改为显示顶部 Compose loading dialog。
  - `bB()`：不再 add `ProgressDialogFragment.dH()`，改为显示无文字 Compose progress dialog。
  - `C(message)`：不再 add `ProgressDialogFragment.ai(message)`，改为显示带文字 Compose progress dialog。
  - `bC()`：不再查找 / remove progress Fragment，改为统一 dismiss Compose dialog。
  - 保留旧关闭节流逻辑：
    - 两次关闭间隔小于 50ms 时延迟 500ms 再关。
  - 保留旧交互语义：
    - 大 progress dialog `setCancelable(false)`；
    - 大 progress dialog 允许 outside touch；
    - back / search key 继续被消费；
    - dismiss 后触发一次 `System.gc()`。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.36 ComicViewFragment / ComicViewerListFragment 迁移
- `ComicViewerActivity.kt`
  - 不再通过 `FragmentTransaction` 添加 `ComicViewFragment` / `ComicViewerListFragment`。
  - 改为直接创建 `ComicViewerComposeHostView` 并加入 `R.id.container`。
  - 保留旧 `a_pkg.c` 监听注册链路：
    - Activity 仍通过 `a(comicViewerHostView)` 注册阅读器；
    - 销毁时清空 listener 并释放 Compose host。
  - 旧 Fragment `bH()` 里触发的 `bL()` / `bH()` 行为已迁到 Activity 初始化流程，进入阅读器后仍会加载当前章节页与章节列表。
- `ComicViewerComposeHostView`
  - 纯 Compose reader host，替代横向 `ComicViewFragment` 与纵向 `ComicViewerListFragment`。
  - 保留旧接口方法与语义：
    - `a(arrayList, i, z, z2)`：重置、追加、前插、恢复记录位置；
    - `b(i, z)`：跳转到指定虚拟页位；
    - `M(i)`：保留屏幕方向信号入口；
    - `B(z)`：切换纵向 / 横向滚动方向。
  - 保留旧分页与广告位索引逻辑：
    - item 总数仍为 `pages.size + pages.size / 20 + 1`；
    - 广告位仍按旧 adapter 规则占虚拟位置；
    - 对 Activity 回调仍传虚拟 index，继续兼容 `g.ac()` / `g.ad()` 的页码计算。
  - 保留旧阅读数据行为：
    - reset 清空并滚到 0；
    - 前插上一页数据后滚到 `ComicViewerActivity.hq`；
    - 恢复记录时滚到 `i - basePageOffset`；
    - 下载文件优先读取 `DownloadComicPageObject` 本地路径；
    - 网络图仍使用旧 `g.b(media)` 组装 URL。
  - Picasso 已替换为 Coil：
    - 页面显示使用 `AsyncImage`；
    - 预取使用 `context.imageLoader.enqueue(ImageRequest...)`；
    - 保持 `allowHardware(false)` 以兼容旧 Android 与阅读器图片场景。
  - 保留旧性能 / 测试列表模式差异：
    - `e.w(context)` 强制纵向列表模式；
    - `e.x(context)` 使用低成本透明占位图；
    - 空 media 页面仍显示旧 page id 文本。
  - 补入 Compose 缩放层：
    - 支持 1x-3x 双指缩放；
    - 纵向内容横向拖动，横向内容纵向拖动；
    - 切换滚动方向时重置缩放与偏移。
- 残留旧文件状态
  - `ComicViewFragment.java` / `ComicViewerListFragment.java` 仍作为源逻辑参考保留在旧 fragments 目录，但 Activity 不再托管它们。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.37 迁移后 Compose Dialog ViewTreeOwner 修复
- `BaseActivity`
  - 新增统一 `createDialogComposeView(...)`，所有迁移后的 `Dialog + ComposeView` 弹窗入口都改为走该 helper。
  - 为 Dialog 内的 ComposeView 显式绑定：
    - `ViewTreeLifecycleOwner`
    - `ViewTreeViewModelStoreOwner`
    - `ViewTreeSavedStateRegistryOwner`
  - 设置 `ViewCompositionStrategy.DisposeOnDetachedFromWindow`，Dialog dismiss 后及时释放 composition。
  - 覆盖并清理以下迁移弹窗的 `ViewTreeLifecycleOwner not found` 风险：
    - `LockDialogContent`
    - `ProgressLoadingContent`
    - `ProgressDialogContent`
    - `ImagePopupDialogContent`
    - `ProfilePopupDialogContent`
    - `TitleEditDialogContent`
- 扫描结果
  - `BaseActivity` 不再散落手写 `ComposeView(this).apply { setContent { ... } }`。
  - 剩余 `ComicViewerComposeHostView` 挂在 Activity 正常内容 ViewTree 下；旧 Fragment 内的 `AbstractComposeView` 仍由 Fragment/Activity ViewTree 提供 owner。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.19 Profile 请求修复与全局顶栏颜色统一
- `ProfileViewModel`
  - Profile 进入页先回填本地缓存，再请求 `users/profile`。
  - 非强制刷新只执行一次网络请求，避免 `LaunchedEffect` 与 `ON_RESUME` 重复触发造成请求抢占。
  - 强制刷新会取消旧请求后重新拉取。
  - 成功返回统一写回本地 profile JSON，并同步等级缓存。
- `ProfileScreen`
  - 删除“自我介绍”下方的邮箱显示。
- 全部 Compose screen 顶栏
  - `TopAppBar` / `CenterAlignedTopAppBar` 的 `containerColor` 与 `scrolledContainerColor` 统一为：
    - `MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp)`
  - 自定义 `PicaTopBar` 与 `CategoryScreen` 自定义搜索顶栏同步使用同一颜色。
  - 颜色与 MainActivity 底栏 `NavigationBar` 保持一致，滚动前后不再跳色。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.20 近期界面修复与设置项拆分
- `HomeScreen`
  - 删除首页内嵌“通知”模块，不再在首页列表顶部展示 announcements。
  - `HomeViewModel` 不再拉取 / 缓存 / 保存首页 announcements，只保留首页 collection 数据。
  - 顶栏通知入口暂保留，用于进入独立通知页。
- `ComicListScreen`
  - `ComicListControlPanel` 跳页输入框去掉浮动 label，改为外置“跳页:”文本 + 输入框 suffix `/ totalPage`。
  - 输入框颜色、边框、placeholder、suffix 显式使用 MD3 colorScheme，修复浅色主题下文字 / 边框冲突。
  - 跳页输入框改为 `weight(1f)` 占满剩余宽度，确认按钮保持固定侧边位置。
- `PicaComicBlocks.kt`
  - `PicaEpisodeGridItem` 从旧式方形描边按钮改为 MD3 风格：
    - 统一高度；
    - medium 圆角；
    - 默认 / 已下载 / 当前选中 / 下载中分别使用容器色和边框状态；
    - 标题单行省略，避免长章节名撑高布局。
- `CommentScreen`
  - 评论卡片内部容器、头部信息行、正文、操作按钮、回复卡片均显式 `fillMaxWidth()`，修复内容和按钮不占满宽度的问题。
  - 操作按钮改为等宽行：赞好、回复、更多、更多选项各占一份；管理员工具单独下一行横向滚动。
  - 底部输入栏保持输入框占满剩余宽度，发表按钮固定宽度并与输入框保持同高。
  - 点头像 / 昵称展开个人简介，展开行为不再和“展开回复”互相抢点击。
  - 个人简介卡放大并占满卡片宽度；昵称、称号、等级分开展示，避免 nickname/title 混用。
  - “查看更多回复”首次点击强制请求第一页回复，避免 `currentPage == totalPage` 默认值导致不刷新。
- `ProfileScreen` / `ProfileEditScreen`
  - nickname 只使用 `name`，称号只使用 `title`。
  - 异常 nickname 不再 fallback 到称号；Profile 顶部称号也不再 fallback 到 role。
- `SettingsScreen` / `SettingsViewModel`
  - “主题颜色”和“应用图标”拆成两个独立设置项。
  - 主题颜色只保存 `KEY_THEME_COLOR` 并触发主题刷新，不再同步切换 launcher icon。
  - 应用图标单独保存 `KEY_LAUNCHER_ICON`，并独立调用 `LauncherIconHelper.syncLauncherIcon()`。
  - 单选弹窗列表行改为与 MD3 弹窗容器一致的颜色，修复弹窗中间突兀白底。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.21 MD3 主题容器、漫画卡片与评论回复修复
- `CommentViewModel` / `CommentScreen`
  - “回复”和“展开回复”拆分职责：
    - 回复按钮只进入回复输入模式；
    - 展开按钮只展开 / 收起楼中楼。
  - 楼中楼“点我查看更多回复”改为独立回复加载状态 `loadingReplyIndex`，不再复用整页 `isLoading`。
  - 修复列表分页或首次展开时，回复按钮点击被全局加载状态挡住导致无效的问题。
  - 当前评论回复加载时只禁用当前按钮，并显示加载文案。
- `PicaComposeTheme.kt`
  - 补齐 `surfaceContainerLowest / Low / Container / High / Highest` 等 MD3 容器色。
  - 修复 Card / ListItem 默认落回 Material3 内置淡紫色，导致自定义主题尤其 Neon、蓝、绿、青、紫、橙、红主题不吃色的问题。
  - 新增常用 MD3 主题选项：
    - MD3 蓝；
    - MD3 绿；
    - MD3 青；
    - MD3 紫；
    - MD3 橙；
    - MD3 红。
- `ComposeColors.kt`
  - `Miracle Neon` 重新按语义配色：
    - `Primary`：紫色，用于主按钮、Tab、选中态；
    - `Secondary`：荧光黄，用于高亮 CTA、重要提示；
    - `Tertiary`：霓虹粉，用于 FAB / 特殊强调。
  - 浅色 / 深色 Neon 均同步调整 primary / secondary / tertiary 及 container。
- 通用卡片容器
  - `PicaCardSection`、设置分组卡片、评论卡片、公告 / APK / 分类 / 应用列表卡片、漫画列表卡片、推荐卡片等统一改用 `surfaceContainerHighest`。
  - 各主题的卡片底色现在跟随主题容器色，不再统一呈现固定淡紫。
- `PicaContentCards.kt`
  - `PicaComicListCard` 固定卡片高度，封面固定尺寸，保证 Home / ComicList / Profile 中漫画块大小对齐。
  - 漫画信息从横向挤压改为三行纵向展示：
    - likes；
    - pages；
    - eps。
  - 信息字号提升到 `bodySmall`，并保持单行省略，修复集数被挤出卡片的问题。
  - 漫画标题改为单行省略，避免长标题撑高卡片。
  - 删除漫画卡片中用于撑底的多余 `Spacer`。
  - 卡片高度按顶部留白重新收紧，保证上下空白等高。
- `ProfileScreen`
  - 顶部头像删除外侧经验环 `AnimatedExpCircle`。
  - 头像本体退回圆角方形图标，保留角色框叠加。
- `HomeScreen`
  - 顶栏通知入口从临时单字文本恢复为 `Notifications` 图标按钮。
  - `Badge` 状态保留，修复右侧只显示“通”的问题。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.22 AnonymousChatFragment 迁移
- `AnonymousChatScreen`
  - 删除 `LegacyFragmentHost(AnonymousChatFragment)` 托管。
  - 重写为纯 Compose / MD3 screen。
  - 新界面包含：
    - 顶栏返回；
    - 匿名匹配卡片；
    - 昵称输入；
    - 匹配按钮；
    - 聊天房状态栏；
    - 消息气泡列表；
    - 底部输入栏；
    - 离开聊天确认弹窗。
  - BackHandler 对齐旧逻辑：已匹配时先弹出离开确认，未匹配时直接返回。
- `AnonymousChatViewModel`
  - 新增 ViewModel，承接旧 `AnonymousChatFragment` 逻辑。
  - 保留旧方法语义：
    - `init()`：读取 profile 与匿名房间缓存；
    - `bH()`：恢复旧房间或展示 Welcome；
    - `b(JSONObject)`：解析 socket action / response；
    - `cc()`：发送 `MATCHING`；
    - `j(roomId, message)`：发送 `SEND_MESSAGE` 并本地追加消息；
    - `s(disconnect)`：发送 `LEAVE_MATCHING` 并按需断开 socket；
    - `a(responseType, data)`：处理 `FOUND_MATCHER` / `NO_MATCHER` / `GOT_MESSAGE`；
    - `I(name)`：进入已匹配 UI 状态；
    - `J(message)`：清理房间缓存并回到匹配 UI；
    - `cd()`：从 `users/profile` 拉取当前用户资料。
  - Socket 仍连接旧地址 `https://secret-chat.wakamoment.gq`，事件名保持 `action` / `response` / `connect`。
  - 房间缓存继续使用旧工具方法 `e.ag/e.ah/e.v/e.w`，保证与 legacy 数据兼容。
  - ViewModel `onCleared()` 会发送离开事件并断开 socket。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.23 SupportUsContainerFragment 及子页面迁移
- 新增 `SupportUsScreen`
  - 不再使用 `SupportUsContainerFragment` / `ViewPager` / `TabLayout` / XML 子页面。
  - 改为纯 Compose / MD3 screen。
  - 顶栏、Tab、卡片、按钮全部使用 `MaterialTheme.colorScheme`。
  - 首次进入保留旧提示弹窗：
    - `alert_support_us_title`
    - `alert_support_us`
- 旧子页面逻辑迁移
  - `SupportUsQQAlipayFragment`
    - 迁移 QQ / 支付宝页。
    - 支付宝账号点击复制到剪贴板。
    - 复制成功继续使用 `alert_copied` Toast。
  - `SupportUsOfficalGroupFragment`
    - 迁移警告卡片、聊天群、游戏群、LINE、LINE 官方号信息。
    - 点击警告卡片继续打开旧 FAQ 弹窗：`https://www.picacomic.com/faq`。
  - `SupportUsAdsGameFragment`
    - 迁移广告 / 游戏页。
    - 游戏按钮跳转 Compose `GameScreen`。
    - 广告 WebView 继续使用旧 `g.k(webView)` 配置与 `a.dS()` 地址。
  - `SupportUsPayPalFragment`
    - 迁移 PayPal 支援卡片列表。
    - 保留旧 6 个 PayPal hosted button 链接。
    - 价格与标题继续读取 `support_us_paypal_prices` / `support_us_paypal_titles`。
- 导航入口
  - 新增 `Screen.SupportUs` 路由。
  - `CategoryScreen`
    - “支持哔咔”入口跳转 `SupportUsScreen`。
    - “点击救哔咔”入口也跳转 `SupportUsScreen`。
    - “爱哔咔”仍保留跳转 `LovePicaContainerScreen`。
  - `MainActivity`
    - 接入 `Screen.SupportUs` composable。
    - `SupportUsScreen` 内游戏按钮跳转 `Screen.Game`。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.24 RegisterFragment 迁移
- 新增 `RegisterScreen`
  - 注册页改为纯 Compose / MD3 screen，不再通过 `PicaRegisterComposeView` 包在旧 `RegisterFragment` 里显示。
  - 顶栏、底部提交栏、信息卡片、输入框、生日按钮、性别选择全部使用 `MaterialTheme.colorScheme` 与现有 MD3 视觉语言。
  - 注册内容按账号、密码、生日/性别、安全问题分组，长生日文案支持换行省略，底部按钮在注册/登录加载中显示旧 loading 文案。
  - 返回键使用 Compose `BackHandler`，与顶栏返回统一退回登录页。
- 新增 `RegisterViewModel`
  - 从旧 `RegisterFragment` 抓取注册逻辑，并保留旧方法语义：
    - `aa(index)`：选择性别并映射旧 API 值 `m/f/bot`；
    - `dI()`：执行旧注册校验；
    - `dJ()`：提交 `RegisterBody`；
    - `dr()`：注册成功确认后自动登录；
    - `dq()`：登录成功后发出进入主页事件。
  - 校验保持旧行为：
    - 用户名长度 2..50；
    - 禁止以 `嗶咔` 开头；
    - 密码至少 8 位；
    - 两次密码必须一致；
    - 安全问题/答案为空时沿用旧逻辑静默返回；
    - 必须选择生日且年龄至少 18 岁。
  - 网络请求继续使用旧 Retrofit API：
    - 注册：`RegisterBody(username, email, password, birthday, gender, q1, q2, q3, a1, a2, a3)`；
    - 自动登录：`SignInBody(email, password)`；
    - 成功后继续保存账号、密码与 token 到旧 `e` 工具。
  - `onCleared()` 会取消注册与登录 `Call`，对齐旧 `onDetach()` 的取消行为。
- `LoginActivity`
  - 注册入口从 `FragmentContainerView + RegisterFragment` transaction 改为 Compose 状态切换。
  - 删除注册页使用的旧 Fragment 容器覆盖层，避免 XML/Fragment 注册界面参与新流程。
  - 保留旧弹窗体验：
    - 注册校验仍调用 `AlertDialogCenter.usernameLength/passwordLength/...`；
    - 注册成功仍显示 `alert_register_success_title` / `alert_register_success`，确认后自动登录；
    - 注册/登录错误仍交给旧 `NetworkErrorHandler c` 处理。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.25 PicaAppContainerFragment / CustomPicaAppContainerFragment 迁移
- `LovePicaContainerScreen`
  - 删除 `LegacyFragmentHost(PicaAppContainerFragment)` 托管，不再通过旧 `ViewPager + TabLayout + XML` 容器显示“爱哔咔”。
  - 重写为纯 Compose / MD3 容器：
    - 顶栏使用 `TopAppBar`；
    - 页签使用 `TabRow`；
    - 内容列表使用 MD3 `Card`；
    - 颜色全部读取 `MaterialTheme.colorScheme`。
  - 容器内部维护页面状态：
    - Tab/列表页；
    - `AnonymousChatScreen`；
    - `PicaAppScreen`。
  - 返回逻辑：
    - 列表页返回上级；
    - 匿名聊天或小程序 WebView 内返回列表页。
- `PicaAppListScreen`
  - 抽出 `PicaAppListContent`，让列表主体可被 `LovePicaContainerScreen` 复用。
  - 独立进入 `PicaAppListScreen` 时仍保留原顶栏与返回行为。
  - 在 `LovePicaContainerScreen` 内复用时只显示列表内容，避免嵌套重复顶栏。
- 旧逻辑串联
  - “嗶咔萌約”继续路由到 `AnonymousChatScreen`。
  - 其他小程序继续路由到 `PicaAppScreen`，WebView token/secret 注入逻辑沿用 `PicaAppViewModel`。
  - 小程序列表加载、缓存与错误处理继续沿用 `PicaAppListViewModel`。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.26 ChatroomListFragment / ChatroomContainerFragment / ChatroomFragment 迁移
- 新增 `ChatroomListViewModel`
  - 迁移旧 `ChatroomListFragment.cm()` / `ChatroomContainerFragment.cm()` 的聊天室列表请求。
  - 继续使用 `dO().at(e.z(...))` 拉取聊天室列表。
  - 继续使用 `e.G/e.n` 读取与保存旧聊天室列表缓存。
  - 列表会补齐旧 `ChatroomListFragment` 里的“自定小程式 / custompicaapp”入口。
  - 网络错误继续交给旧 `NetworkErrorHandler c`。
- 新增 `ChatroomViewModel`
  - 迁移普通聊天室的核心逻辑，不再托管 `ChatroomFragment`：
    - `cd()`：拉取当前用户 profile，并保存到旧 `e.i` 缓存；
    - `start(roomUrl)`：连接 socket，默认地址仍为 `https://chat.picacomic.com`；
    - `cr()`：发送文字消息，事件仍为 `send_message`；
    - `parseMessage(json, type)`：迁移旧 `a(JSONObject, int)` 的消息解析；
    - `onCleared()`：取消 profile 请求并断开 socket。
  - 已接入旧 socket 事件：
    - `connect`：发送 `init`；
    - `broadcast_message`：普通消息；
    - `broadcast_image`：图片消息；
    - `broadcast_audio`：语音消息；
    - `broadcast_ads`：广告消息；
    - `got_private_message`：私聊消息；
    - `new_connection` / `connection_close`：在线人数提示；
    - `receive_notification`：Toast 提示；
    - `kick`：Toast 后断开；
    - `set_profile`：同步 nickname / character / title / level；
    - `change_character_icon`：同步角色图；
    - `change_title`：同步称号。
  - 消息列表限制为 100 条，对齐旧 `kW` 默认值。
- 新增 Compose screen
  - `ChatroomListScreen` / `ChatroomListContent`
    - 纯 Compose / MD3 聊天室列表。
    - 使用 Coil 加载聊天室头像，兼容旧缓存字段。
    - 点击 `allchatroom` 进入 Compose 全聊天室容器。
    - 点击 `custompicaapp` 切到小程序入口。
  - `ChatroomContainerScreen`
    - 迁移旧 `ChatroomContainerFragment + ViewPager`。
    - 改为 `TopAppBar + TabRow`，每个聊天室 Tab 内直接显示 `ChatroomContent`。
    - 进入容器时保留旧 `AlertDialogCenter.chatroomRules()` 规则弹窗。
  - `ChatroomScreen`
    - 迁移单聊天室入口。
    - 进入时保留旧聊天室规则弹窗。
  - `ChatroomContent`
    - 支持文字消息、图片消息、语音/广告占位展示、在线人数状态、底部输入发送。
    - 补齐旧交互逻辑：
      - 表情面板追加旧 emoji codepoint；
      - 公开 / 私聊模式切换；
      - 点击消息设置回复目标；
      - `@` / reply / private 上下文条；
      - `@指令` 快捷入口；
      - `V(command)` 命令解析：`NIGHT ON/OFF`、`TIME ON/OFF`、`FIX IMAGE SIZE ON/OFF`、`@BLACKLIST`、`AUTO EARN PICA`、`MAXIMUM MESSAGE SIZE`；
      - 图片 / 语音消息发送方法：`sendImage(base64)`、`sendAudio(base64)`；
      - `TimeAction` / `ImageAction` 的 `system_action` emit 方法；
      - 设置按钮继续打开旧 `AlertDialogCenter.showChatroomSettingDialog()`。
    - 继续补齐管理员控制逻辑：
      - 选中消息后记录 `selectedTarget`；
      - `MuteAction`：按旧 `block_time` 分钟表发禁言；
      - `SetAvatarAction`：按旧 `avatar` 编号换头像；
      - `SetAvatarExtraAction`：支持额外头像编号；
      - `ChangeTitleAction`：先调用旧 `users/{userId}/title` API，再发 `system_action`；
      - AI 模式：发送 `##server talk @...`，并支持按秒间隔定时重复发送；
      - 管理员邮箱 `@picacomic.com` 才显示 Compose 控制面板。
    - 顶栏与底栏颜色继续跟随 `MaterialTheme.colorScheme.surfaceColorAtElevation(2.dp)`。
- `LovePicaContainerScreen`
  - 聊天室 Tab 从临时入口改为真实 `ChatroomListContent`。
  - 内部页面状态新增：
    - 单聊天室 `ChatroomScreen`；
    - 全聊天室 `ChatroomContainerScreen`。
  - 现在 `LovePicaContainerScreen` 可串联：
    - 聊天室列表；
    - 全聊天室 Tab；
    - 普通聊天室；
    - 匿名聊天；
    - 小程序列表；
    - 小程序 WebView。
- 尚未完全迁入的旧高级聊天室能力
  - 真正的图片选择器接入与 base64 转换流程；
  - 录音采集 / 播放语音的 MediaRecorder / MediaPlayer 流程；
  - TTS 朗读；
  - 黑名单管理弹窗完整 UI；
  - 控制面板的视觉细节仍可继续优化为更紧凑的横向滑动布局。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.27 ComicDownloadFragment 迁移
- 新增 `ComicDownloadViewModel`
  - 从旧 `ComicDownloadFragment` 抓取并保留核心方法名：
    - `init(comicId, title)`：初始化漫画 ID / 标题、分页状态、广播监听；
    - `bH()`：进入页面后加载章节，并保留旧下载记录日志输出；
    - `bN()`：继续使用 `dO().b(e.z(...), comicId, page)` 分页拉取章节；
    - `C(index)`：切换章节选中态；
    - `J(index)`：写入 `DownloadComicEpisodeObject` 并启动 `DownloadService`；
    - `cO()`：删除本漫画下载、清理章节文件夹与 `DownloadComicPageObject`；
    - `cP()` / `cQ()`：注册与注销 `DownloadService.tN` 本地广播。
  - 旧残留字段同步迁入：
    - `hZ`：迁为 `Call<GeneralResponse<ComicPagesResponse>>`，使用 `dO().e(e.z(...), episodeId, page)` 拉取章节页数据；
    - `f2if`：迁为 Compose state `List<ComicPageObject>`，用于保存章节页 docs；
    - 新增 `loadEpisodePages(index/page/reset)`，保留旧下载页的漫画页数据通道，并在 `onCleared()` 中取消 `hZ`。
  - 章节状态仍按旧逻辑从数据库映射：
    - 下载状态 `1/2/3` 显示为下载中；
    - 下载状态 `4` 显示为已下载；
    - 其他状态为默认。
  - 下载进度广播继续读取：
    - `COMIC_NAME`
    - `EPISODE_ID`
    - `EPISODE_TITLE`
    - `PROGRESS_CURRENT`
    - `PROGRESS_TOTAL`
  - 网络错误继续交给旧 `NetworkErrorHandler c`，不改旧错误处理体验。
- 新增 `ComicDownloadScreen`
  - 完全重写为 Compose / MD3，不再使用源 XML。
  - 顶栏使用 `TopAppBar`，删除动作改为 Compose `AlertDialog`。
  - 章节区复用 `PicaEpisodeGridItem`，保持 4 列方形章节块：
    - 默认；
    - 选中；
    - 下载中；
    - 已下载。
  - 底栏改为与顶栏同色的 MD3 操作栏：
    - 下载选中章节；
    - 管理按钮保留旧 toast：`功能暫未開放`。
  - 下载进度从本地广播实时刷新，只显示进度文字提示。
- 路由与入口
  - 新增 `Screen.ComicDownload` 与 `createComicDownloadRoute(comicId, title)`。
  - `MainActivity` 新增 Compose 路由，进入下载页不再托管旧 fragment。
  - `ComicDetailScreen` 增加下载动作：
    - 顶栏新增下载图标入口；
    - 详情操作区保留下载按钮；
    - 两个入口共用同一套 `allowDownload` 判断；
    - `allowDownload == true` 时进入新 `ComicDownloadScreen`；
    - `allowDownload == false` 时继续弹出旧 `alert_download_not_allow`。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.28 OneTimeIdUpdateFragment / OneTimeUpdateQAFragment / QuestionFragment 迁移
- 新增 `OneTimeUpdateViewModel`
  - 迁入 `OneTimeUpdateQAFragment` 的全部提交逻辑：
    - 保留旧方法名 `a(str, str2, str3, str4, str5, str6)`；
    - 继续调用 `dO().a(e.z(...), UpdateQandABody(...))`；
    - 6 个问题 / 答案字段为空时继续触发旧 `alert_edit_profile_question_error`。
  - 迁入 `OneTimeIdUpdateFragment` 的全部资料更新逻辑：
    - 保留旧字段语义 `jW / jX / qn / qo`；
    - 保留旧方法名 `cd()`、`dt()`、`m(str, str2)`、`bI()`；
    - `cd()` 继续请求 `users/profile`，成功后把旧昵称填入昵称输入框；
    - `dt()` 继续校验新哔咔 ID 后调用 `m()`；
    - `m()` 继续调用 `dO().a(e.z(...), UpdatePicaIdBody(...))`；
    - 成功后仍 toast `更新成功！`，重启 `MainActivity` 并 finish 当前 Activity。
  - 哔咔 ID 校验沿用旧正则：
    - 少于 2 字显示 `pica_id_error_message_1`；
    - 不符合 `^[0-9a-z_](\\.?[0-9a-z_]){1,29}$` 显示 `pica_id_error_message_2`；
    - 输入仍限制为 `0-9 a-z . _` 且最多 30 字。
  - `onCleared()` 取消 `jX / qn / qr`，对齐旧 `onDetach()`。
- 新增 Compose screen
  - `OneTimeUpdateQAScreen`
    - 纯 Compose / MD3，不再使用 `fragment_one_time_update_qa.xml`；
    - 6 个安全问题 / 答案输入框；
    - 提交成功后进入 `OneTimeIdUpdateScreen`。
  - `OneTimeIdUpdateScreen`
    - 纯 Compose / MD3，不再使用 `fragment_one_time_id_update.xml`；
    - 显示旧 `one_time_update_content` 注意事项；
    - 新哔咔 ID / 昵称输入逻辑完整迁入；
    - 保留旧成功后的重启 MainActivity 行为。
  - `QuestionScreen`
    - 迁移 `QuestionFragment` 的静态占位逻辑，不再加载 `fragment_question.xml`。
- 路由与入口
  - 新增 `Screen.OneTimeUpdateQA`、`Screen.OneTimeIdUpdate`、`Screen.Question`。
  - `MainActivity` 初始接口恢复一次性资料更新入口：
    - 调用 initial API 后，如果 `InitialResponse.isIdUpdated == false`，自动进入 `OneTimeUpdateQAScreen`；
    - Settings 的 FAQ / Question 入口改为新 `QuestionScreen`。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.29 ProfileComicFragment 迁移补全
- `ProfileComicViewModel`
  - 从旧 `ProfileComicFragment` 补齐字段与方法语义：
    - `qF`：收藏列表请求 Call；
    - `qG / qH`：收藏漫画与总数；
    - `qI / qJ`：最近观看漫画与总数；
    - `qK / qL`：已下载漫画与总数；
    - `bH(force)`：统一加载收藏、最近观看、已下载；
    - `dv()` / `dw()`：读取最近观看 DB 并刷新 Compose state；
    - `dx()` / `dy()`：读取已下载 DB 并刷新 Compose state；
    - `dz()` / `bI()`：请求收藏漫画并刷新 Compose state。
  - 最近观看仍按旧 SQL：
    - `last_view_timestamp > 0`
    - `ORDER BY last_view_timestamp DESC`
    - `LIMIT 4`
  - 已下载仍按旧 SQL：
    - `download_status > 0`
    - `ORDER BY downloaded_at DESC`
    - `LIMIT 4`
  - 收藏仍调用旧接口：
    - `dO().a(e.z(...), c.uQ[0], 1)`
  - 保留旧 tag 点击分流逻辑为 `onClickTag(tag)`：
    - `100` 段：收藏；
    - `200` 段：最近观看；
    - `300` 段：已下载。
- `ProfileScreen`
  - 继续使用 Compose 版漫画区，不再托管 `ProfileComicFragment`。
  - 收藏 / 最近观看 / 已下载三个横向区块继续接入：
    - 更多 -> `CATEGORY_USER_FAVOURITE`
    - 更多 -> `CATEGORY_RECENT_VIEW`
    - 更多 -> `CATEGORY_DOWNLOADED`
    - 漫画点击 -> Compose `ComicDetailScreen`
- `ComicViewerActivity.kt`
  - 用户将 `ComicViewerActivity` 转为 Kotlin 后，顺手修复编译签名：
    - `CompoundButton.OnCheckedChangeListener.onCheckedChanged` 参数改为非空 `CompoundButton`；
    - `onRequestPermissionsResult` 权限数组改为 `Array<out String>`。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。

### 7.30 ProfilePopupFragment / TitleEditPopupFragment 迁移
- 新增 `ProfilePopupViewModel`
  - 迁入 `ProfilePopupFragment` 全部核心字段与请求：
    - `userId / jW`
    - `jX`：`users/{userId}/profile`
    - `ra`：`utils/block-user`
    - `qZ`：`utils/remove-comment`
    - `oo`：`users/{userId}/dirty`
  - 保留旧方法名与语义：
    - `bI()`：资料回填 / 错误关闭；
    - `cd()`：按 userId 拉用户资料；
    - `dC()` / `dD()`：封锁用户确认与提交；
    - `dE()` / `dF()`：删除全部留言确认与提交；
    - `dG()`：污头像；
    - `toggleAdminFunction()`：展开 / 收起管理员功能。
  - 迁入 `TitleEditPopupFragment` 字段与请求：
    - `userId / rY / lg`
    - `bF()`：保留旧按钮绑定语义标记；
    - `bI()`：回填 userId / 当前称号；
    - `aj(title)`：继续调用 `users/{userId}/title`。
  - `onCleared()` 取消 `jX / ra / qZ / oo / lg`。
- 新增 Compose Dialog 内容
  - `ProfilePopupDialogContent`
    - 纯 Compose / MD3，不再 inflate `fragment_profile_popup.xml`；
    - 使用 Coil/Compose 图片组件显示头像和角色图，不再走 Picasso；
    - 点击头像仍打开图片预览；
    - 点击称号仍进入称号编辑；
    - 点击等级仍进入旧 EXP 调整弹窗；
    - 管理员邮箱 `@picacomic.com` 才显示“功能”入口；
    - 管理员功能保留：封锁用户、污头像、删除所有留言。
  - `TitleEditDialogContent`
    - 纯 Compose / MD3，不再 inflate `fragment_title_edit_popup.xml`；
    - 保留 userId、当前称号、新称号输入、确认 / 取消；
    - 成功 toast `Update Title Success`，失败 toast `Update Title Failed`。
- `BaseActivity`
  - `E(userId)` 不再 add `ProfilePopupFragment`，改为显示 Compose Dialog。
  - `a(UserProfileObject)` 不再 add `ProfilePopupFragment`，改为显示 Compose Dialog。
  - `h(userId, title)` 不再 add `TitleEditPopupFragment`，改为显示 Compose Dialog。
  - 保留旧入口函数签名，调用方不用改。
  - Dialog 仍保留旧行为：
    - 可点击外侧关闭；
    - back / search key 被消费；
    - 图片预览继续调用 `BaseActivity.D(...)`；
    - EXP 调整继续调用 `MainActivity.i(...)`。
- 最新验证：
  - `./gradlew.bat :app:compileDebugKotlin` 通过。
