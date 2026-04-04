# Start Building with Material 3 Expressive

> **Material Design's most expressive update yet** — a smarter, emotion-driven, and more accessible way to build modern user interfaces.

---

## What Is Material 3 Expressive?

Material 3 Expressive (M3 Expressive) is Google's latest evolution of its open-source design system, officially unveiled at **Google I/O on May 13, 2025**. It builds directly on top of Material You (Material 3), introduced with Android 12 in 2021 — and it is **not a replacement** ("M4"), but a powerful extension.

Where previous iterations focused on consistency and personalization, M3 Expressive goes further: it is designed to create **emotional connections** between users and their devices through bold use of color, shape, motion, and typography.

> "Personalization is core to Android, and Material 3 Expressive is all about making your device feel unique to you."  
> — Mindy Brooks, VP of Product Management, Android Platform

---

## Why It Matters: The Research Behind It

M3 Expressive is backed by more user research than any previous Material Design update:

- **46 research studies** conducted over three years
- **18,000+ participants** from around the world
- **87%** of respondents aged 18–24 prefer emotionally-centered design
- Users found key UI elements **up to 4× faster** with Expressive designs
- Benefits were consistent **across all ages and visual abilities**
- Users over 45 showed nearly the same response times as younger generations

The research confirmed that expressive design is not just about aesthetics — it is **measurably more usable**.

---

## Core Design Pillars

### 1. Dynamic Color

M3 Expressive builds a richer color system that allows brand colors and user-chosen colors to coexist harmoniously. Apps can maintain their brand identity while giving users more control over the styles that matter most to them.

- Extended support for tertiary color palettes
- Dynamic Color now works across Google apps and Wear OS
- Stronger, more intentional use of color to signal interactive elements

### 2. Motion Physics

A brand-new **spring-based motion system** replaces the previous easing-and-duration model. Interactions feel alive, fluid, and natural.

Key examples of physics-based motion:
- Dismissing a notification triggers a smooth detach effect with surrounding notifications subtly reacting
- Closing an app in the Recents screen has fluid, responsive animation
- Volume sliders and the notification shade respond with natural spring physics

Developers can access these via **updated Material motion APIs** in Jetpack Compose.

### 3. Shape System Overhaul

Shapes now play a much stronger role in branding and visual rhythm:

- **35 new shapes** added to the Material Shapes Library (Figma) and Jetpack Compose
- **Shape morphing** — shapes animate and transform between states
- New shape principles and updated art direction
- Corner radii tokens added; fully rounded corners now use the `full` token
- Shapes and typography can now be used in visual harmony

### 4. Typography

Typography is used more deliberately as a tool to guide user attention and create hierarchy. Bold, expressive type choices help anchor key moments in an interface.

### 5. Accessibility & Inclusivity

Accessibility is not an add-on in M3 Expressive — it is built into every element:

- Color, typography, motion, and components are all designed to be usable by as many people as possible
- Improvements apply across different abilities, environments, and devices
- Expressive design was shown to improve usability for older users significantly

---

## New & Updated Components

### Brand-New Components

| Component | Description |
|---|---|
| **Button Groups** | Containers holding buttons with shape, motion, and width changes. Support XS–XL sizes. |
| **FAB Menu** | Replaces speed dial and stacked small FABs. Uses contrasting colors and large items to focus attention. Opens from any FAB size. |
| **Loading Indicator** | For progress loading in under 5 seconds. Replaces most uses of the indeterminate circular progress indicator. Used in pull-to-refresh. |
| **Split Button** | A button with a separate menu trigger that morphs shape when activated. Five sizes; four color styles (elevated, filled, tonal, outlined). |
| **Docked Toolbar** | Replaces the deprecated bottom app bar. Shorter and more flexible. |
| **Floating Toolbar** | More versatile placement, supports more actions, works alongside FAB. |

### Updated Components

- Top app bars
- Carousel
- Common buttons
- Extended FAB & FABs
- Icon buttons
- Navigation bar & Navigation rail
- Progress indicators

### XR (Extended Reality) Additions

- XR App Bars
- XR Dialogs
- Spatial panels, orbiters, and spatial elevation for AR/VR environments

---

## Design Tactics: How to Use M3 Expressive

Apply these approaches to create engaging, expressive interfaces:

1. **Use a variety of shapes** — leverage the expanded shape library for visual rhythm
2. **Apply rich and nuanced colors** — use the extended palette to guide attention
3. **Guide attention with typography** — bold type creates hierarchy and hero moments
4. **Contain content for emphasis** — use containers and common regions to create clear structure
5. **Add fluid, natural motion** — implement spring physics for interactions that feel alive
6. **Leverage component flexibility** — new components support extensive configuration
7. **Combine tactics to create hero moments** — layer color, shape, and motion at key interactions

---

## Availability & Rollout

| Platform | Availability |
|---|---|
| **Pixel devices (Android 16 QPR1)** | September 2025 — Pixel 6 and newer, Pixel Tablet |
| **Google apps (Gmail, Drive, Chrome, etc.)** | Rolling out since June 2025; largely complete by Dec 2025 |
| **Wear OS** | Announced at I/O; full rollout with Pixel Watch 4 (August 2025) |
| **Android Auto** | In progress (as of early 2026) |

Apps already updated include: Gmail, Google Drive, Google Docs/Sheets/Slides, Chrome, Google Calendar, Google Maps, Google Photos, Google Messages, Google Keep, Files by Google, Google Meet, and more.

---

## Getting Started: Tools & Resources

### Figma Material 3 Design Kit (V1.20)

The official Figma kit includes ready-to-use components, color styles, typography, and layout templates.

**New in V1.20:**
- New components: button groups, FAB menus, split buttons, loading indicators
- Updated components: app bars, buttons, FABs, sliders, navigation
- XR support: panels and dialogs for spatial environments

🔗 [Material 3 Design Kit — Figma Community](https://www.figma.com/community/file/1035203688168086460)

### Android / Jetpack Compose

- Use **Compose Material 3** library for all new and updated components
- Spring physics available via **Material motion APIs**
- New shapes in `androidx.compose.ui.graphics.shapes`

### Official Documentation

| Resource | URL |
|---|---|
| M3 Expressive Blog | https://m3.material.io/blog/building-with-m3-expressive |
| Material Design Home | https://m3.material.io |
| Motion Overview | https://m3.material.io/styles/motion/overview |
| Shape System | https://developer.android.com/develop/ui/compose/graphics/draw/shapes |

---

## M3 Expressive on Wear OS

Material 3 Expressive has a dedicated Wear OS implementation designed specifically for round screens:

- **Edge-hugging button** — curved bottom edge complements the circular display
- **TransformingLazyColumn** — fluid scrolling animations that trace the display curvature
- **New ScrollIndicator** — clear visual cue of position within lists
- **3-slot tile layout** — consistent structure across all screen sizes
- **Extended color palettes** — tertiary colors for brand personality
- Spring physics bring depth and motion to glanceable information

---

## Key Differences vs. Material 2 (Quick Reference)

| Area | Material 2 | Material 3 Expressive |
|---|---|---|
| FAB expansion | Speed dial (small round FABs) | FAB menu (dynamic color, larger items) |
| Bottom navigation | Tall bottom app bar | Short docked toolbar (deprecated bottom bar) |
| Motion | Easing + duration curves | Spring physics system |
| Shapes | Limited set | 35 new shapes + morphing |
| Color | Brand + baseline palette | Dynamic color + extended palette |
| Loading | Circular indeterminate spinner | Contained loading indicator |

---

## Summary

Material 3 Expressive represents a fundamental shift in how Google thinks about UI design — from a system focused on consistency to one that **embraces emotion, expressiveness, and genuine user delight**. With a foundation of rigorous user research, a dramatically expanded toolkit of components, shapes, and motion, and strong accessibility principles, M3 Expressive gives designers and developers the freedom to build products that truly connect with users.

**Start building today** at [m3.material.io](https://m3.material.io).

---

*Last updated: April 2026 | Sources: Google I/O 2025, m3.material.io, Android Developers Blog*
