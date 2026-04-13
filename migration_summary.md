# Compose 迁移与修复总结

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

### 1.4 Profile / ProfileEdit 修复
- 修复 `ProfileEdit` 昵称异常脏数据显示（例如 `SocketAddress ...`）的问题，增加兜底显示策略。
- `ProfileEdit` 补回“更新介绍”提交逻辑（`UpdateProfileBody`），提交成功提示并返回。

### 1.5 AppBar 与顶部栏策略统一
- 按”新顶栏保留原逻辑、去掉内嵌旧 Fragment 多余 appbar”处理。
- 对使用 `AndroidView + fragment_*` 的 Compose 页面，统一隐藏旧 `appbar/toolbar`（按页面需求保留功能行）。
- `ComicList` 特殊处理：
  - 仅隐藏旧 `toolbar`，保留筛选/页码功能区。
  - 修复筛选区挤压截断：`HorizontalScrollView` 改为 `0dp + weight=1`。

### 1.6 其他 UI 修复
- `ComicViewerActivity` 去除顶部工具栏显示（不再显示/参与显隐动画）。
- `NavigationBar` 颜色改为与 Compose 顶部 `AppBar` 同风格（同 elevation 的 surface 颜色）。

### 1.7 ViewModel 补全与业务下沉（Fragment 逻辑对齐）
- **LoginViewModel**：新增，下沉登录、找回密码、密保答题重置密码、已登录直跳主页逻辑。
  - `LoginActivity.kt` / `LoginScreen.kt` 只负责 UI、弹窗和导航。
  - 注册页 legacy `FragmentContainerView` 保留兼容。
  - 邮箱格式校验放宽为仅判空。
- **SplashViewModel**：新增，下沉启动页初始化、重试、节点选择、失败回退逻辑。
  - `SplashActivity.kt` 只监听事件做跳转和”需要重启”处理。
  - `SplashActivity.iV` 旧切线保留兼容。
- **PicaAppViewModel**：新增，补齐 token + secret 拼接、空链接回退逻辑。
  - 与旧 `PicaAppFragment` 的关键行为对齐。

### 1.8 主题扩展与图标切换
- **主题扩展**：从单一配色扩展为 3 档主题模式。
  - `粉红白` 日间模式（Light Pink）。
  - `迷红黑` 深色模式（Dark Red）。
  - `霓虹夜幕` 新增高对比度主题（Neon Night）。
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

---

## 2. 关键修改文件

### 2.1 新增文件
- `app/src/main/java/com/picacomic/fregata/compose/screens/PicaAppListScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/AnnouncementListScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/ApkVersionListScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/ChangePinScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/ChangePasswordScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/PicaAppListViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/AnnouncementListViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/ApkVersionListViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/ChangePinViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/ChangePasswordViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/LoginViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/SplashViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/PicaAppViewModel.kt`
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
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/ProfileEditViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/SettingsViewModel.kt`
- `app/src/main/java/com/picacomic/fregata/MyApplication.java`
- `app/src/main/java/com/picacomic/fregata/compose/ComposeColors.kt`
- `app/src/main/java/com/picacomic/fregata/compose/PicaComposeTheme.kt`
- `app/src/main/res/layout/fragment_comic_list.xml`
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
- **主题支持**：已实现 3 档主题（粉红白/迷红黑/霓虹夜幕）及动态图标切换。

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
- **业务逻辑下沉**：把 Fragment 逻辑完全迁移到 Compose ViewModel。
- **清理无用资源**：删除不再被引用的 old layout 与 old style。
- **验收**：MD3 token 不会被旧 XML style 覆盖，架构清晰单一。

### 4.3 执行建议
- **不要直接逐页硬改**：先统一 token 与组件，再做页面。
- **避免反复返工**：语义层未收敛前，改页面会导致重复修改色值。
- **验证全流程**：每阶段编译通过后，需回归主题切换、页面跳转、混合页一致性。

---

## 5. 当前已知后续可继续项

- `love pica` 仍可继续向 `PicaAppContainer` 双 tab（聊天室 + 应用）对齐。
- 继续迁移其余未 Compose 化的 fragment 页面，并保持”新顶栏 + 隐藏旧 appbar”的统一策略。
- 逐步将 `AndroidView` 承载的 legacy 列表替换为纯 Compose 列表实现，降低混合层复杂度。

---

## 6. 下一步实现（建议按优先级）

### P0（先做，直接影响功能完整性）
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

### P1（其次，提升稳定性与体验）
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
- 将 legacy Fragment 的业务逻辑下沉到 Compose ViewModel。
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
