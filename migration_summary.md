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
- 按“新顶栏保留原逻辑、去掉内嵌旧 Fragment 多余 appbar”处理。
- 对使用 `AndroidView + fragment_*` 的 Compose 页面，统一隐藏旧 `appbar/toolbar`（按页面需求保留功能行）。
- `ComicList` 特殊处理：
  - 仅隐藏旧 `toolbar`，保留筛选/页码功能区。
  - 修复筛选区挤压截断：`HorizontalScrollView` 改为 `0dp + weight=1`。

### 1.6 其他 UI 修复
- `ComicViewerActivity` 去除顶部工具栏显示（不再显示/参与显隐动画）。
- `NavigationBar` 颜色改为与 Compose 顶部 `AppBar` 同风格（同 elevation 的 surface 颜色）。

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

### 2.2 主要修改文件
- `app/src/main/java/com/picacomic/fregata/activities/MainActivity.kt`
- `app/src/main/java/com/picacomic/fregata/activities/ComicViewerActivity.java`
- `app/src/main/java/com/picacomic/fregata/compose/navigation/Screen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/ComicListScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/ComicDetailScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/GameDetailScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/PicaAppScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/screens/ProfileEditScreen.kt`
- `app/src/main/java/com/picacomic/fregata/compose/viewmodels/ProfileEditViewModel.kt`
- `app/src/main/res/layout/fragment_comic_list.xml`

---

## 3. 编译验证

已执行并通过：
- `./gradlew :app:compileDebugKotlin --no-daemon`
- `./gradlew :app:compileDebugJavaWithJavac --no-daemon`

> 注：当前仍有若干 deprecation warning（例如 `Icons.Filled.ArrowBack`），不影响构建通过。

---

## 4. 当前已知后续可继续项

- `love pica` 仍可继续向 `PicaAppContainer` 双 tab（聊天室 + 应用）对齐。
- 继续迁移其余未 Compose 化的 fragment 页面，并保持“新顶栏 + 隐藏旧 appbar”的统一策略。
- 逐步将 `AndroidView` 承载的 legacy 列表替换为纯 Compose 列表实现，降低混合层复杂度。

---

## 5. 下一步实现（建议按优先级）

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
  - 列表类页面补“空态/有数据”两个 Preview。
- 错误态统一：
  - 各 ViewModel 统一 `errorEvent/errorCode/errorBody` 模式。
  - 页面统一错误弹窗触发时机（避免重复弹窗）。

### P2（最后，逐步去 legacy 依赖）
- 将 `AndroidView + RecyclerView Adapter` 逐步替换为 `LazyColumn` 纯 Compose 列表。
- 将 legacy Fragment 的业务逻辑下沉到 Compose ViewModel。
- 清理无用布局与旧绑定代码，降低混合架构复杂度。

### 每阶段验收标准
- 编译通过：
  - `./gradlew :app:compileDebugKotlin --no-daemon`
  - `./gradlew :app:compileDebugJavaWithJavac --no-daemon`
- 回归项：
  - 顶栏返回行为正确；
  - 列表可加载/可翻页；
  - 关键点击（详情跳转、设置保存）可用；
  - 无重复 appbar 与布局截断问题。
