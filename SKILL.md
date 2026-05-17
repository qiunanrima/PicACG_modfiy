---
name: md3-expressive
description: 使用 Material Design 3 Expressive (M3E) 设计系统构建界面。当用户要求构建 Material Design、MD3、M3 Expressive 风格的 UI、组件、页面或应用时触发。也适用于任何 Android 风格界面、Google 风格设计，或用户提到"Material You"、"动态颜色"、"M3"、"Expressive UI"的场景。即使用户只说"帮我设计一个 app 界面"但上下文暗示 Android / Google 产品风格，也应主动使用本技能。
---

# Material Design 3 Expressive 设计技能

M3 Expressive 是 Google 于 2025 年 I/O 发布的 Material Design 3 重要演进，基于 46 项研究、18,000+ 参与者，证实比经典 M3 更受用户喜爱。**它不是 M4**，而是 M3 的情感化增强层。

## 核心哲学

M3 Expressive 的设计原则：
- **情感共鸣**：界面不只是工具，更是个人身份的延伸
- **视觉层次**：用形状、颜色、动效引导注意力，而非依赖文字标签
- **物理感动效**：Motion Physics 替代传统缓动/时长系统，让交互"有重量感"
- **包容性优先**：无障碍不是事后添加，而是系统内建

---

## 设计决策流程

开始前，明确以下三点：

1. **平台**：Web（HTML/CSS/React）还是 Android 原生（Jetpack Compose）？
2. **目的**：原型展示、可交互 Demo 还是生产代码？
3. **品牌色**：有无指定的种子色（Seed Color）？没有则选用能生成动态配色方案的颜色。

---

## Color System（颜色系统）

### 动态颜色角色（必须遵守）

M3 Expressive 使用基于 HCT（Hue-Chroma-Tone）色彩空间的 Tonal Palette：

```css
:root {
  /* === Primary === */
  --md-sys-color-primary: #6750A4;
  --md-sys-color-on-primary: #FFFFFF;
  --md-sys-color-primary-container: #EADDFF;
  --md-sys-color-on-primary-container: #21005D;

  /* === Secondary === */
  --md-sys-color-secondary: #625B71;
  --md-sys-color-on-secondary: #FFFFFF;
  --md-sys-color-secondary-container: #E8DEF8;
  --md-sys-color-on-secondary-container: #1D192B;

  /* === Tertiary === */
  --md-sys-color-tertiary: #7D5260;
  --md-sys-color-on-tertiary: #FFFFFF;
  --md-sys-color-tertiary-container: #FFD8E4;
  --md-sys-color-on-tertiary-container: #31111D;

  /* === Error === */
  --md-sys-color-error: #B3261E;
  --md-sys-color-on-error: #FFFFFF;
  --md-sys-color-error-container: #F9DEDC;
  --md-sys-color-on-error-container: #410E0B;

  /* === Surface === */
  --md-sys-color-surface: #FEF7FF;
  --md-sys-color-on-surface: #1C1B1F;
  --md-sys-color-surface-variant: #E7E0EC;
  --md-sys-color-on-surface-variant: #49454F;
  --md-sys-color-surface-container-lowest: #FFFFFF;
  --md-sys-color-surface-container-low: #F7F2FA;
  --md-sys-color-surface-container: #F3EDF7;
  --md-sys-color-surface-container-high: #ECE6F0;
  --md-sys-color-surface-container-highest: #E6E0E9;

  /* === Outline === */
  --md-sys-color-outline: #79747E;
  --md-sys-color-outline-variant: #CAC4D0;

  /* === Background === */
  --md-sys-color-background: #FEF7FF;
  --md-sys-color-on-background: #1C1B1F;

  /* === Inverse === */
  --md-sys-color-inverse-surface: #313033;
  --md-sys-color-inverse-on-surface: #F4EFF4;
  --md-sys-color-inverse-primary: #D0BCFF;
}
```

### 颜色使用规则
- **容器色**（Container）用于承载内容的背景，配合对应 `on-` 色用于内容
- **Expressive 新增**：鼓励大胆使用 Tertiary 颜色制造视觉焦点
- **不要**直接使用 Hex，始终通过 CSS 变量/设计 token

---

## Typography（排版系统）

M3 Expressive 排版使用 **Roboto Flex**（可变字体），支持更丰富的字重表达：

```css
@import url('https://fonts.googleapis.com/css2?family=Roboto+Flex:opsz,wght@8..144,100..900&display=swap');

:root {
  /* Display */
  --md-sys-typescale-display-large: 57px/64px Roboto Flex, weight 400;
  --md-sys-typescale-display-medium: 45px/52px Roboto Flex, weight 400;
  --md-sys-typescale-display-small: 36px/44px Roboto Flex, weight 400;

  /* Headline */
  --md-sys-typescale-headline-large: 32px/40px Roboto Flex, weight 400;
  --md-sys-typescale-headline-medium: 28px/36px Roboto Flex, weight 400;
  --md-sys-typescale-headline-small: 24px/32px Roboto Flex, weight 400;

  /* Title */
  --md-sys-typescale-title-large: 22px/28px Roboto Flex, weight 400;
  --md-sys-typescale-title-medium: 16px/24px Roboto Flex, weight 500;
  --md-sys-typescale-title-small: 14px/20px Roboto Flex, weight 500;

  /* Label */
  --md-sys-typescale-label-large: 14px/20px Roboto Flex, weight 500;
  --md-sys-typescale-label-medium: 12px/16px Roboto Flex, weight 500;
  --md-sys-typescale-label-small: 11px/16px Roboto Flex, weight 500;

  /* Body */
  --md-sys-typescale-body-large: 16px/24px Roboto Flex, weight 400;
  --md-sys-typescale-body-medium: 14px/20px Roboto Flex, weight 400;
  --md-sys-typescale-body-small: 12px/16px Roboto Flex, weight 400;
}
```

**M3 Expressive 排版要点**：
- 使用字重对比（400 vs 700+）强调重点，而非单纯改字号
- Display 文字可搭配 Tertiary 颜色制造"Hero Moment"
- 标题可配合形状容器使用

---

## Shape System（形状系统）

M3 Expressive 新增 **35 种形状**，形状是品牌表达的核心工具：

```css
:root {
  /* === Shape Scale === */
  --md-sys-shape-corner-none: 0px;
  --md-sys-shape-corner-extra-small: 4px;
  --md-sys-shape-corner-small: 8px;
  --md-sys-shape-corner-medium: 12px;
  --md-sys-shape-corner-large: 16px;
  --md-sys-shape-corner-large-end: 0px 16px 16px 0px;      /* 单边圆角 */
  --md-sys-shape-corner-large-top: 16px 16px 0px 0px;      /* 顶部圆角 */
  --md-sys-shape-corner-extra-large: 28px;
  --md-sys-shape-corner-extra-large-top: 28px 28px 0px 0px;
  --md-sys-shape-corner-full: 9999px;                       /* 完全圆形 */
}
```

**形状使用策略**：
- 大圆角（Extra-Large/Full）→ 强调、引导注意力（FAB、主要按钮、卡片焦点）
- 中等圆角（Medium/Large）→ 普通内容容器、对话框
- 小圆角或无圆角 → 内嵌元素、次要操作
- **Shape Morphing**：形状在交互时变化（例如按钮激活时从圆角矩形变形）

---

## Motion System（动效系统）

M3 Expressive 引入 **Motion Physics**（物理动效）替代传统缓动曲线：

```css
/* === Easing Tokens（过渡时期仍可用） === */
:root {
  --md-sys-motion-easing-standard: cubic-bezier(0.2, 0, 0, 1);
  --md-sys-motion-easing-standard-decelerate: cubic-bezier(0, 0, 0, 1);
  --md-sys-motion-easing-standard-accelerate: cubic-bezier(0.3, 0, 1, 1);
  --md-sys-motion-easing-emphasized: cubic-bezier(0.2, 0, 0, 1);
  --md-sys-motion-easing-emphasized-decelerate: cubic-bezier(0.05, 0.7, 0.1, 1);
  --md-sys-motion-easing-emphasized-accelerate: cubic-bezier(0.3, 0, 0.8, 0.15);

  /* === Duration Tokens === */
  --md-sys-motion-duration-short1: 50ms;
  --md-sys-motion-duration-short2: 100ms;
  --md-sys-motion-duration-short3: 150ms;
  --md-sys-motion-duration-short4: 200ms;
  --md-sys-motion-duration-medium1: 250ms;
  --md-sys-motion-duration-medium2: 300ms;
  --md-sys-motion-duration-medium3: 350ms;
  --md-sys-motion-duration-medium4: 400ms;
  --md-sys-motion-duration-long1: 450ms;
  --md-sys-motion-duration-long2: 500ms;
  --md-sys-motion-duration-long3: 550ms;
  --md-sys-motion-duration-long4: 600ms;
  --md-sys-motion-duration-extra-long1: 700ms;
  --md-sys-motion-duration-extra-long2: 800ms;
  --md-sys-motion-duration-extra-long3: 900ms;
  --md-sys-motion-duration-extra-long4: 1000ms;
}
```

**动效原则**：
- 进入动效：使用 `emphasized-decelerate`（快进慢出，有落地感）
- 退出动效：使用 `emphasized-accelerate`（慢出快离，自然消散）
- State Layer（状态涟漪）：12% 不透明度 hover，16% press，高于 M2
- **Expressive 新增**：Shape Morphing 动画，组件之间的共享元素过渡

---

## Elevation & Surface（层级与表面）

```css
:root {
  /* Elevation 通过 Surface Tint（主色调染色）而非阴影表达 */
  --md-sys-elevation-level0: 0px;
  --md-sys-elevation-level1: 1px;   /* Tint: 5% Primary */
  --md-sys-elevation-level2: 3px;   /* Tint: 8% Primary */
  --md-sys-elevation-level3: 6px;   /* Tint: 11% Primary */
  --md-sys-elevation-level4: 8px;   /* Tint: 12% Primary */
  --md-sys-elevation-level5: 12px;  /* Tint: 14% Primary */
}

/* Surface Tint 实现 */
.surface-level1 {
  background-color: color-mix(
    in srgb,
    var(--md-sys-color-primary) 5%,
    var(--md-sys-color-surface)
  );
}
```

---

## 核心组件速查

详细规范见 `references/components.md`

### 按钮层级（5 种）
| 类型 | 用途 | 样式 |
|------|------|------|
| Filled | 最重要操作 | Primary 背景 |
| Filled Tonal | 次重要操作 | Secondary Container 背景 |
| Elevated | 有层级感的次要操作 | Surface + Tint |
| Outlined | 中等重要 | 边框 + 透明背景 |
| Text | 最低优先级 | 无背景无边框 |

**Expressive 更新**：按钮新增 XS/S/M/L/XL 五种尺寸，支持在 Button Groups 中组合

### FAB（浮动按钮）
- Small FAB：40×40dp，`full` 圆角
- Regular FAB：56×56dp，`large` 圆角（16dp）
- Large FAB：96×96dp，`extra-large` 圆角（28dp）
- **新增 FAB Menu**：替代 Speed Dial，使用大尺寸条目 + 对比色

### Navigation（导航）
- Navigation Bar：底部，3-5 个目标
- Navigation Rail：侧边，适合平板/桌面
- Navigation Drawer：完整标签列表
- **Expressive 要点**：激活态使用 Indicator（Primary Container 胶囊）

### Cards（卡片）
- Elevated Card：`medium` 圆角（12dp），Level 1 elevation
- Filled Card：`medium` 圆角，Surface Variant 背景
- Outlined Card：`medium` 圆角，1dp Outline 边框

---

## M3 Expressive 设计策略（7 种战术）

这是 M3E 的核心贡献，从 Google 研究提炼出的视觉层次战术：

### 1. 形状多样化
在同一界面使用不同大小的圆角，制造视觉节奏感。大圆角=高重要性。

### 2. 丰富的颜色层次
使用整个 Tonal Palette 而非仅 Primary/Secondary。鼓励使用 Tertiary Container 和深色变体。

### 3. 排版引导注意力
用字重和字号的强烈对比（不仅仅是颜色）建立视觉焦点。

### 4. 内容容器化
用 Surface Container 颜色 + 圆角将相关内容视觉分组，替代隐性空白分隔。

### 5. 流体自然动效
所有状态变化都有动效。特别是形状变化（Shape Morphing）和共享元素过渡。

### 6. 组件灵活性
允许组件在不同上下文有不同尺寸和形状配置（Button Groups、FAB Menu）。

### 7. 英雄时刻（Hero Moments）
在关键页面（登录、完成确认、首页）使用大型展示型排版 + 鲜明颜色 + 形状组合制造强烈视觉印象。

---

## 无障碍要求（不可省略）

- **颜色对比度**：正文 ≥ 4.5:1，大文字/UI组件 ≥ 3:1
- **触摸目标**：最小 48×48dp
- **State Layer 对比**：Hover 12%、Pressed 16%、Focused 12%、Dragged 16%
- **文字缩放**：设计需支持 200% 文字放大不破坏布局
- **不依赖颜色传达信息**：始终配合图标或文字

---

## 实现指南

### Web / HTML+CSS

1. 引入 Roboto Flex 字体（见上方 @import）
2. 定义 CSS 变量（复制上方 :root 块）
3. 组件用语义化 HTML + BEM 命名
4. 状态用 CSS `:hover`、`:focus`、`:active` + transition

详见 `references/web-implementation.md`

### React

1. 可使用 [Material Web](https://github.com/material-components/material-web) 或手写 CSS-in-JS
2. Token 以 CSS 变量注入，React 组件消费变量
3. 动效推荐 Framer Motion（类物理弹簧动效）

### Jetpack Compose（Android）

使用 `androidx.compose.material3`：
```kotlin
MaterialTheme(
  colorScheme = dynamicColorScheme(context), // 动态颜色
  typography = Typography(),
  shapes = Shapes()
) { /* 内容 */ }
```

---

## 常见错误与纠正

| ❌ 错误 | ✅ 正确 |
|--------|--------|
| 全用 Primary 颜色 | 使用完整颜色角色体系 |
| 所有圆角统一 | 根据重要性变化圆角大小 |
| 阴影层叠表达层级 | 用 Surface Tint 表达 Elevation |
| 按钮形状固定不动 | 支持 Shape Morphing |
| 颜色只用装饰 | 颜色用于传达结构和交互 |
| 省略动效 | 所有状态变化都有过渡 |

---

## 参考资源

- `references/components.md` — 完整组件规范（尺寸、间距、状态）
- `references/web-implementation.md` — Web 实现代码模板
- `references/color-roles.md` — 完整颜色角色用途说明
- 官方文档：https://m3.material.io
