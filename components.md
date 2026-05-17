# M3 Expressive 组件完整规范

## 目录
1. [按钮（Buttons）](#按钮)
2. [FAB & FAB Menu](#fab)
3. [Navigation](#navigation)
4. [Cards](#cards)
5. [Dialogs](#dialogs)
6. [Text Fields](#text-fields)
7. [Chips](#chips)
8. [Lists](#lists)
9. [Toolbars（新增）](#toolbars)
10. [Button Groups（新增）](#button-groups)
11. [Split Button（新增）](#split-button)
12. [Loading Indicator（新增）](#loading-indicator)

---

## 按钮

### 尺寸规格（M3 Expressive 新增 5 档尺寸）
| 尺寸 | 高度 | 最小宽度 | 图标 | Label 字号 |
|------|------|----------|------|-----------|
| XS   | 28dp | -        | 16dp | 11sp (Label Small) |
| S    | 36dp | -        | 18dp | 12sp (Label Medium) |
| M（默认）| 40dp | 64dp | 18dp | 14sp (Label Large) |
| L    | 48dp | -        | 24dp | 16sp (Title Medium) |
| XL   | 56dp | -        | 24dp | 16sp (Title Medium) |

### 各类型规范

**Filled Button**
```css
.btn-filled {
  background: var(--md-sys-color-primary);
  color: var(--md-sys-color-on-primary);
  border-radius: var(--md-sys-shape-corner-full); /* 完全圆角 */
  height: 40px;
  padding: 0 24px;
  font-size: 14px;
  font-weight: 500;
  letter-spacing: 0.1px;
  border: none;
  cursor: pointer;
  position: relative;
  overflow: hidden;
  transition: box-shadow 200ms var(--md-sys-motion-easing-standard);
}
.btn-filled:hover::after {
  content: '';
  position: absolute;
  inset: 0;
  background: var(--md-sys-color-on-primary);
  opacity: 0.08; /* State Layer */
  border-radius: inherit;
}
.btn-filled:active::after { opacity: 0.12; }
.btn-filled:hover { box-shadow: 0 1px 2px rgba(0,0,0,0.3), 0 1px 3px 1px rgba(0,0,0,0.15); }
```

**Filled Tonal Button**
```css
.btn-tonal {
  background: var(--md-sys-color-secondary-container);
  color: var(--md-sys-color-on-secondary-container);
  /* 其余同 Filled，State Layer 颜色改为 on-secondary-container */
}
```

**Elevated Button**
```css
.btn-elevated {
  background: var(--md-sys-color-surface-container-low);
  color: var(--md-sys-color-primary);
  box-shadow: 0 1px 2px rgba(0,0,0,0.3), 0 1px 3px 1px rgba(0,0,0,0.15);
  /* hover 时 elevation 提升 */
}
```

**Outlined Button**
```css
.btn-outlined {
  background: transparent;
  color: var(--md-sys-color-primary);
  border: 1px solid var(--md-sys-color-outline);
  /* State Layer 颜色：Primary */
}
```

**Text Button**
```css
.btn-text {
  background: transparent;
  color: var(--md-sys-color-primary);
  padding: 0 12px;
  /* State Layer 颜色：Primary */
}
```

---

## FAB

### 规格
| 类型 | 尺寸 | 圆角 | 图标 |
|------|------|------|------|
| Small FAB | 40×40dp | full (9999px) | 24dp |
| FAB (Regular) | 56×56dp | large (16dp) | 24dp |
| Large FAB | 96×96dp | extra-large (28dp) | 36dp |
| Extended FAB | 56dp 高, 可延展 | large (16dp) | 24dp |

### FAB CSS 示例
```css
.fab {
  width: 56px;
  height: 56px;
  border-radius: 16px; /* large */
  background: var(--md-sys-color-primary-container);
  color: var(--md-sys-color-on-primary-container);
  display: flex;
  align-items: center;
  justify-content: center;
  box-shadow:
    0 1px 2px rgba(0,0,0,0.3),
    0 1px 3px 1px rgba(0,0,0,0.15); /* elevation level 3 */
  border: none;
  cursor: pointer;
  transition:
    border-radius 200ms var(--md-sys-motion-easing-emphasized),
    box-shadow 200ms var(--md-sys-motion-easing-standard);
}
.fab:hover {
  box-shadow:
    0 2px 3px rgba(0,0,0,0.3),
    0 6px 10px 4px rgba(0,0,0,0.15); /* elevation level 4 */
}
```

### FAB Menu（M3E 新增）
- 触发：点击 FAB，向上展开菜单项列表
- 每个菜单项：高 56dp，使用 Tertiary Container 颜色
- 图标 + 标签组合，标签在图标右侧
- 使用 Surface Container Highest 作为菜单背景容器
- 动效：菜单项从 FAB 位置展开（共享元素过渡）

---

## Navigation

### Navigation Bar（底部导航）
```css
.nav-bar {
  height: 80px;
  background: var(--md-sys-color-surface-container);
  display: flex;
  align-items: center;
  justify-content: space-around;
  padding: 12px 0 16px;
}

.nav-item {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 4px;
  min-width: 48px;
  cursor: pointer;
}

.nav-indicator {
  /* 激活态 Indicator */
  width: 64px;
  height: 32px;
  border-radius: 16px; /* full */
  background: var(--md-sys-color-secondary-container);
  display: flex;
  align-items: center;
  justify-content: center;
  transition: width 200ms var(--md-sys-motion-easing-emphasized);
}

.nav-label {
  font-size: 12px;
  font-weight: 500;
  color: var(--md-sys-color-on-surface-variant);
}

.nav-item.active .nav-label {
  color: var(--md-sys-color-on-surface);
}
```

### Navigation Rail
- 宽度：80dp（无标签）/ 256dp（有标签）
- 放置于左侧
- 激活 Indicator：56×32dp 胶囊形
- 适用于平板/桌面（≥600dp 断点）

---

## Cards

### Elevated Card
```css
.card-elevated {
  background: var(--md-sys-color-surface-container-low);
  border-radius: 12px; /* medium */
  box-shadow: 0 1px 2px rgba(0,0,0,0.3), 0 1px 3px 1px rgba(0,0,0,0.15);
  overflow: hidden;
  transition:
    box-shadow 200ms var(--md-sys-motion-easing-standard),
    transform 200ms var(--md-sys-motion-easing-standard);
}
.card-elevated:hover {
  box-shadow: 0 1px 2px rgba(0,0,0,0.3), 0 2px 6px 2px rgba(0,0,0,0.15);
}
```

### Filled Card
```css
.card-filled {
  background: var(--md-sys-color-surface-container-highest);
  border-radius: 12px;
  /* 无阴影 */
}
```

### Outlined Card
```css
.card-outlined {
  background: var(--md-sys-color-surface);
  border: 1px solid var(--md-sys-color-outline-variant);
  border-radius: 12px;
}
```

### Expressive 卡片技巧
- 使用大图片作为卡片背景 + Scrim 渐变保证文字可读性
- 卡片圆角可与内部图片圆角配合（内图比外容器小 4dp）
- Hero 卡片：Extra-Large 圆角 + 使用 Primary/Tertiary Container 背景

---

## Dialogs

### Basic Dialog
```css
.dialog {
  background: var(--md-sys-color-surface-container-high);
  border-radius: 28px; /* extra-large */
  padding: 24px;
  max-width: 560px;
  min-width: 280px;
  box-shadow:
    0 4px 4px rgba(0,0,0,0.3),
    0 8px 12px 6px rgba(0,0,0,0.15); /* elevation level 3 */
}

.dialog-headline {
  font-size: 24px;
  font-weight: 400;
  color: var(--md-sys-color-on-surface);
  margin-bottom: 16px;
}

.dialog-actions {
  display: flex;
  justify-content: flex-end;
  gap: 8px;
  margin-top: 24px;
}
```

---

## Text Fields

### Filled Text Field
```css
.textfield-filled {
  background: var(--md-sys-color-surface-container-highest);
  border-radius: 4px 4px 0 0; /* 只有顶部圆角 */
  border-bottom: 1px solid var(--md-sys-color-on-surface-variant);
  padding: 8px 16px;
  height: 56px;
  position: relative;
}
.textfield-filled:focus-within {
  border-bottom: 2px solid var(--md-sys-color-primary);
}
.textfield-label {
  font-size: 12px;
  color: var(--md-sys-color-on-surface-variant);
  /* floating label 动效：从 16px body 缩小至 12px label */
}
```

### Outlined Text Field
```css
.textfield-outlined {
  border: 1px solid var(--md-sys-color-outline);
  border-radius: 4px;
  background: transparent;
  padding: 8px 16px;
  height: 56px;
}
.textfield-outlined:focus-within {
  border: 2px solid var(--md-sys-color-primary);
}
```

---

## Chips

```css
/* Assist/Filter/Input/Suggestion Chip 共用基础 */
.chip {
  height: 32px;
  border-radius: 8px; /* small */
  padding: 0 16px;
  font-size: 14px;
  font-weight: 500;
  display: inline-flex;
  align-items: center;
  gap: 8px;
  cursor: pointer;
  transition: background 150ms var(--md-sys-motion-easing-standard);
}
.chip-assist {
  border: 1px solid var(--md-sys-color-outline);
  background: transparent;
  color: var(--md-sys-color-on-surface);
}
.chip-filter.selected {
  background: var(--md-sys-color-secondary-container);
  color: var(--md-sys-color-on-secondary-container);
  border: none;
}
```

---

## Toolbars（M3E 新增）

### Docked Toolbar（替代 Bottom App Bar）
```css
.toolbar-docked {
  height: 64px; /* 比 Bottom App Bar 更短 */
  background: var(--md-sys-color-surface-container);
  display: flex;
  align-items: center;
  padding: 0 16px;
  gap: 4px;
}
```

### Floating Toolbar
```css
.toolbar-floating {
  background: var(--md-sys-color-surface-container-high);
  border-radius: 28px; /* extra-large */
  height: 48px;
  padding: 0 4px;
  display: inline-flex;
  align-items: center;
  gap: 0;
  box-shadow: 0 1px 2px rgba(0,0,0,0.3), 0 2px 6px 2px rgba(0,0,0,0.15);
}
```

---

## Button Groups（M3E 新增）

```css
.button-group {
  display: inline-flex;
  border-radius: 20px; /* 外容器圆角 */
  overflow: hidden;
  background: var(--md-sys-color-surface-container-high);
  gap: 2px; /* 按钮间隙 */
  padding: 2px;
}

/* 组内按钮动态改变宽度和形状 */
.button-group .btn-filled {
  border-radius: 18px; /* 略小于容器 */
  flex: 1;
  transition:
    flex 300ms var(--md-sys-motion-easing-emphasized),
    border-radius 200ms var(--md-sys-motion-easing-emphasized);
}
.button-group .btn-filled.active {
  flex: 2; /* 激活状态变宽 */
}
```

---

## Split Button（M3E 新增）

```css
.split-button {
  display: inline-flex;
  border-radius: 20px;
  overflow: hidden;
}
.split-button-main {
  /* 主操作区域 */
  border-radius: 20px 0 0 20px;
  padding: 0 24px;
}
.split-button-menu {
  /* 下拉菜单触发器 */
  border-radius: 0 20px 20px 0;
  width: 40px;
  border-left: 1px solid rgba(255,255,255,0.38);
  /* 激活时图标旋转 180deg */
}
```

---

## Loading Indicator（M3E 新增）

替代 `CircularProgressIndicator`（<5秒加载）：

```css
/* Wave-like 动画，比传统环形更有表现力 */
.loading-indicator {
  display: flex;
  gap: 4px;
  align-items: center;
}
.loading-dot {
  width: 8px;
  height: 8px;
  border-radius: 50%;
  background: var(--md-sys-color-primary);
  animation: loading-wave 1.2s var(--md-sys-motion-easing-standard) infinite;
}
.loading-dot:nth-child(2) { animation-delay: 0.15s; }
.loading-dot:nth-child(3) { animation-delay: 0.30s; }
.loading-dot:nth-child(4) { animation-delay: 0.45s; }

@keyframes loading-wave {
  0%, 100% { transform: scaleY(1); opacity: 0.6; }
  50% { transform: scaleY(2); opacity: 1; }
}
```

---

## 间距系统

M3 使用 **4dp 基础网格**：
- 4, 8, 12, 16, 24, 32, 48, 64, 96dp
- 组件内 padding：通常 16dp 水平，12dp 垂直
- 相关元素间距：4-8dp
- 独立模块间距：16-24dp
- 大区块间距：32-48dp
