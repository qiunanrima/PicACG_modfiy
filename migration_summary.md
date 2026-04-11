# PicACG Jetpack Compose 迁移进度报告

> [!NOTE]
> 本次迁移的核心目标是将项目从传统的 **XML + Fragment** 架构转型为以 **Single Activity + Navigation Compose** 为核心的现代架构。

## 🛠 已完成的迁移项

### 1. 架构升级
*   **入口 Activity 现代化**：`SplashActivity` 和 `LoginActivity` 已从传统的 `BaseActivity`（基于布局文件）迁移为 `ComponentActivity`，直接使用 `setContent {}` 渲染 UI。
*   **逻辑解耦**：将原本高度耦合在 Fragment 中的业务逻辑（如登录、重置密码等）提升到 Activity 层，直接与 Compose State 交互。

### 2. 组件模块化 (`compose.screens` package)
创建了独立的 `@Composable` Screen 函数，实现了 UI 与容器的彻底分离：

| 屏幕 (Screen) | 迁移状态 | 技术细节 |
| :--- | :--- | :--- |
| **SplashScreen** | ✅ 已完成 | 纯 Compose 实现，移除了 `PicaSplashComposeView` 包装类。 |
| **LoginScreen** | ✅ 已完成 | 纯 Compose 实现，包含状态提升 (State Hoisting)。 |
| **SettingsScreen** | ✅ 已完成 | 纯 Compose 实现，不再依赖任何旧版 XML 布局。 |
| **HomeScreen** | 🔄 混合 | 使用 `AndroidView` 嵌入旧版公告和合集列表，顶部栏已迁移到 Compose。 |
| **CategoryScreen** | 🔄 混合 | 搜索头已迁移到 Compose，分类列表暂时保留 `AndroidView` 嵌入。 |
| **ProfileScreen** | 🔄 混合 | 顶部栏已迁移到 Compose，详细信息页暂时保留 `AndroidView` 嵌入。 |

## 🏗 当前进行中 (`MainActivity`)
`MainActivity` 的迁移是目前最复杂的部分，策略如下：
*   **混合托管架构**：由于大量业务 Fragment（如聊天室、详情页）尚未迁移，`MainActivity` 将采用 `Scaffold` + `NavigationBar` (Compose) + `FragmentContainerView` (XML Interop) 的模式。
*   **导航管理**：将底栏点击事件从 Fragment 事务直接映射到 Compose 导航状态。

## 🚀 后续迁移计划

1.  **第一阶段：完成 MainActivity 骨架**
    - 使用 Compose `Scaffold` 重构主页布局。
    - 实现 Compose 版的 `BottomNavigationBar`。

2.  **第二阶段：RegisterFragment 屏幕化**
    - 创建 `RegisterScreen`。
    - 移除 `RegisterActivity` 和 `RegisterFragment`。

3.  **第三阶段：核心列表页彻底 Compose 化**
    - 重载 `CategoryScreen` 中的 RecyclerView，使用 `LazyVerticalGrid`。
    - 重构 `HomeScreen`，实现纯 Compose 的合集展示。

4.  **最终阶段：清理与优化**
    - 移除所有 `AbstractComposeView` 子类。
    - 删除冗余的 `layout/*.xml` 文件。
    - 移除 ButterKnife 和 ViewBinding 相关代码。

---
> [!TIP]
> **代码位置**
> *   新 UI 函数：`com.picacomic.fregata.compose.screens.*`
> *   已更新 Activity：`SplashActivity.kt`, `LoginActivity.kt`
