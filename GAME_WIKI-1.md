# 🐦 BIRB — Game Wiki

![A small bird perched on a tree branch](https://images.unsplash.com/photo-1698613321602-50d1f4d943bf?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D)

> **Status:** Early Development  
> **Engine:** Unity (C#)  
> **Genre:** Survival / Base Building / Flock Management  
> **Last Updated:** 2026-05-08

---

## Table of Contents
1. [Game Overview](#game-overview)
2. [Core Pillars](#core-pillars)
3. [Gameplay Loop](#gameplay-loop)
4. [Bird Attributes & Traits](#bird-attributes--traits)
5. [Special Traits](#special-traits)
6. [Flock System](#flock-system)
7. [The Nest](#the-nest)
8. [World & Ecosystem](#world--ecosystem)
9. [Enemies & Predators](#enemies--predators)
10. [Multiplayer](#multiplayer)
11. [Development Roadmap](#development-roadmap)
12. [Current Scripts Reference](#current-scripts-reference)

---

## Game Overview

**Birb** is a first/third-person survival and base-building game where the player controls a flock of birds living in a forest. Inspired by **Valheim** (open world survival, exploration, crafting) and **RimWorld** (colony management, AI colonists, emergent storytelling), Birb blends hands-on bird flight with strategic flock management.

The player can possess any individual bird in first-person to directly control it, or step back to issue commands to the flock as a whole. Birds gather materials, build and upgrade a nest, hatch eggs to grow the flock, hunt smaller prey, and survive larger predators.

---

## Core Pillars

| Pillar | Description |
|--------|-------------|
| **Flight** | Fluid, satisfying third/first-person bird flight as the core movement system |
| **Survival** | Gather food, manage stamina, survive predators and weather |
| **Nest Building** | Construct and upgrade a nest as the home base |
| **Flock Management** | Command multiple birds with simple AI orders (RimWorld-style) |
| **Breeding & Genetics** | Hatch eggs, inherit traits, build a genetically diverse flock |
| **Ecosystem** | A living forest with predator/prey relationships, seasons, and resources |

---

## Gameplay Loop

```
Fly → Gather (food/materials) → Return to Nest → Build/Upgrade
        ↓                                               ↓
   Hunt/Avoid Enemies                         Hatch Eggs → New Birds
        ↓                                               ↓
   Survive & Explore                        Assign Roles → Grow Flock
```

### Progression Layers
1. **Prototype** — Single bird, flight, basic item pickup, nest deposit
2. **Core Loop** — Gather, build nest, hatch eggs, basic flock commands
3. **Combat** — Predator AI, smaller prey hunting, flock defence
4. **Flock AI** — Command system, role assignment, AI behaviour traits
5. **First-Person Possession** — Switch between birds fluidly
6. **Multiplayer** — Co-op flock management (planned, last layer)

---

## Bird Attributes & Traits

Birds have **physical traits** that describe their body parts. Each part has sub-stats that contribute positively or negatively to gameplay stats. Rather than abstract values like "Speed", the system is grounded in the bird's actual anatomy.

### Physical Body Parts & Sub-Stats

| Body Part | Sub-Stats |
|-----------|-----------|
| **Beak** | Length, Strength |
| **Claw** | Length, Strength |
| **Feather** | Thickness |
| **Wing Muscles** | Length, Vibrancy, Color Adaptation, Strength, Agility, Endurance |
| **Tail** | Length, Width |
| **Eyes** | Wide Sight, Sharpness |
| **Intelligence** | Problem Solving, Spatial Awareness, Social Awareness, Imitation |
| **Voice** | Strength, Gular Fluttering |

### How Stats Are Calculated

Each body part sub-stat contributes a modifier (positive or negative) to the bird's core stats:

| Core Stat | Influenced By |
|-----------|--------------|
| **Health** | Beak Length (+1), Claw Length (+2) |
| **Armor** | Beak Strength (+3), Claw Strength (+3) |
| **Stamina** | Feather Thickness (−1), Wing Length (+1), Wing Vibrancy (+2), Wing Strength (+3) |
| **Speed** | Wing Agility (+1) |
| **Turning Speed** | Wing Endurance (−1) |
| **Climb Speed** | Tail Length (−1) |
| **Energy Drain** | Tail Width (−1), Eyes Wide Sight (+1) |
| **Food Drain** | Eyes Sharpness (+1) |
| **Attack Damage (Beak)** | Beak Length (+1), Beak Strength (+3) |
| **Attack Damage (Talon)** | Claw Length (+1), Claw Strength (+3) |
| **Reach (Beak)** | Beak Strength (+3) |
| **Reach (Talon)** | Claw Strength (+3), Claw Length (+1) |
| **Carry Food** | Wing Strength (+3), Wing Agility (+1), Tail Length (+3), Tail Width (+1) |
| **Carry Material** | Wing Agility (+1), Wing Endurance (+3), Tail Width (+1), Eyes Wide Sight (+3) |
| **Stealth (Hiding)** | Feather Thickness (−1), Wing Color Adaptation (+1) |
| **Stealth (Flight)** | Feather Thickness (−1), Wing Vibrancy (+1), Wing Agility (−1) |
| **Problem Solving** | Intelligence PS (+2), Intelligence Spatial (+2), Intelligence Imitation (+1) |
| **Charisma** | Voice Strength (+2), Gular Fluttering (+1) |
| **Voice Strength** | Voice Strength (+2) |
| **Regeneration (HP)** | Wing Vibrancy (+2) |
| **Regeneration (Stamina)** | Wing Endurance (−1) |

### Environmental Modifiers

Performance is also affected by weather and environment:

| Condition | Effect |
|-----------|--------|
| **Dark** | Eyes Wide Sight (+1), Eyes Sharpness (+1) |
| **Cold** | Feather Thickness (−1), Wing Color Adaptation (+1) |
| **Heat** | Wing Agility (+1), Wing Color Adaptation (−1) |
| **Wind** | Wing Endurance (−1) |

### Behavioural Traits

These affect how a bird behaves when not directly possessed by the player.

| Trait | Behaviour |
|-------|-----------|
| **Boldness** | How close the bird gets to predators before fleeing |
| **Curiosity** | Wanders further, discovers new areas — but gets into trouble |
| **Loyalty** | Stays close to nest vs roams; affects command responsiveness |
| **Greed** | Prioritises rare/valuable items but may ignore assigned tasks |
| **Alertness** | Speed of detecting danger and warning the flock |
| **Dominant** | Natural leader; nearby birds perform slightly better |
| **Submissive** | Follows commands instantly; never takes initiative |
| **Nurturing** | Speeds up egg hatching nearby; chicks inherit slightly better traits |
| **Territorial** | Bonus combat stats near the nest |
| **Flock Caller** | Can rally scattered birds back to nest with a call |

---

## Special Traits

Rare traits that are species-linked or randomly inherited. These give birds unique abilities beyond the standard trait system.

| Trait | Species Hint | Effect |
|-------|-------------|--------|
| 🐔 **Brooding** | Hen | Can incubate multiple eggs simultaneously while resting |
| 🦜 **Mimicry** | Parrot | Can copy predator calls to scare enemies or distract them |
| 🦅 **Thermal Rider** | Eagle / Hawk | Soars indefinitely without stamina cost in open areas |
| 🦉 **Night Vision** | Owl | Fully effective at night; others have reduced vision |
| 🐦‍⬛ **Cache Memory** | Crow / Corvid | Remembers exact locations of stored food and resources |
| 🪺 **Master Builder** | — | Nest pieces placed by this bird have bonus durability and insulation |
| 🎵 **Song** | — | Singing passively boosts nearby flock morale and action speed |
| 🦆 **Waterproof** | Duck | Can land on and dive into water; access aquatic food sources |
| 🪶 **Moulting** | — | Periodically sheds feathers harvestable as a rare building material |
| 👁️ **Panoramic Vision** | — | 270° field of view; nearly impossible to sneak up on |
| 🧲 **Magnetic Sense** | — | Never gets lost; always knows direction of nest; ideal scout |
| 🤫 **Silent Flight** | Owl | Generates no sound; can sneak past predators undetected |
| 🐛 **Specialist** | — | Extremely efficient at one task (e.g. 3× faster insect gathering) |
| 💤 **Light Sleeper** | — | Wakes instantly if a predator enters camp; acts as a living alarm |
| 🥚 **Fertile** | — | Higher chance of rare trait inheritance when breeding |
| 🧠 **Tool Use** | Corvid | Can interact with objects others can't (sticks, opening things) |

---

## Flock System

The player manages a flock of birds, each with their own traits and personalities.

### Commands (RimWorld-style)
Simple high-level orders the player can issue to individual birds or groups:
- **Gather Food** — find and return food to the nest
- **Gather Materials** — collect twigs, moss, feathers etc. for building
- **Guard Nest** — stay near nest and defend against threats
- **Scout** — explore a marked area and report back
- **Rest** — recover stamina (important for egg incubation)
- **Follow** — trail the player-controlled bird

### First-Person Possession
The player can "enter" any bird in the flock for direct first-person control, then "exit" back to third-person overview mode. While possessed, the bird ignores AI and is fully player-controlled.

### Bird Roles
Assign birds to standing roles based on their traits:
- **Gatherer** — high Crop + Beak
- **Scout** — high Eyes + Wings + Magnetic Sense
- **Guard** — high Talons + Territorial + Boldness
- **Builder** — Master Builder trait
- **Brooder** — Brooding trait + Nurturing
- **Hunter** — high Talons + Boldness

---

## The Nest

The nest is the player's home base. It is built, expanded, and upgraded over time.

### Building Materials
- Twigs, moss, mud, feathers, leaves, spider silk (rare), bark strips

### Nest Functions
- **Egg Chamber** — incubate and hatch eggs
- **Food Cache** — store gathered food (affected by Cache Memory trait)
- **Sleeping Perches** — rest and recover stamina
- **Lookout Post** — extends guard detection range
- **Insulation Layer** — protects eggs and flock from cold weather

### Nest Quality
Nest quality affects egg hatching success rate, flock morale, and protection from weather and predators. A **Master Builder** bird improves all placed structures.

---

## World & Ecosystem

*To be expanded as development progresses.*

### Environment
- Dense forest with canopy, undergrowth, clearings, water sources
- Day/night cycle (owls active at night, others less effective)
- Seasons affecting available food, weather hazards, predator behaviour

### Resource Types
- **Food:** insects, berries, seeds, small fish, worms, small rodents
- **Materials:** twigs, moss, mud, feathers, leaves, bark, spider silk
- **Rare:** specific feathers (from Moulting), rare seeds, shiny objects (corvid interest)

---

## Enemies & Predators

*To be expanded.*

### Predator Tier (avoid / survive)
- Hawks, eagles, foxes, cats, snakes, owls (at night)

### Prey Tier (hunt for food)
- Insects, worms, small rodents, small lizards, fish (requires Waterproof)

---

## Multiplayer

Multiplayer is planned as a **late-stage feature**. Co-op players share the same flock, each possessing different birds simultaneously, and collaborating on nest building and flock management.

*Details TBD — to be designed once single-player core loop is solid.*

---

## Development Roadmap

| Stage | Focus | Status |
|-------|-------|--------|
| 1 | Flight controller (third-person) | ✅ In Progress |
| 2 | Item pickup & nest deposit | 🔲 Planned |
| 3 | Basic nest building | 🔲 Planned |
| 4 | Egg hatching & second bird | 🔲 Planned |
| 5 | Flock AI & command system | 🔲 Planned |
| 6 | First-person possession | 🔲 Planned |
| 7 | Predator AI & combat | 🔲 Planned |
| 8 | Trait & breeding system | 🔲 Planned |
| 9 | World building & ecosystem | 🔲 Planned |
| 10 | Multiplayer | 🔲 Planned |

---

*This wiki is a living document. Claude Code can read and update this file directly. Last session summary should be appended below.*

---

## Current Scripts Reference

All scripts live in `G:\UNITY\Birb\Assets\` unless noted.

### `BirdFlight.cs`
Core flight controller. Handles thrust, lift, banking, landing, ground movement, and catch mode toggle.
- **Key public fields:** `maxFlightSpeed`, `catchModeActive` (bool property), `CurrentSpeed` (float property)
- **E key:** toggles `catchModeActive` on/off. Auto-disables when inventory is full or Q is pressed.
- **Q key:** drops the latest held item, turns off catch mode.
- Ground movement and rotation are stored in `Update()` and applied in `FixedUpdate()` via `rb.MoveRotation` to prevent physics jitter.
- `OnCollisionEnter` ignores FoodItem collisions to prevent Q-drop nosedive.

### `BirdInventory.cs`
Manages the bird's carried food items (beak inventory).
- **`maxCapacity`:** max items the bird can carry (default 3).
- **`TryCollectNearby()`:** called every frame when catch mode is active. Uses `Physics.OverlapSphere` with `QueryTriggerInteraction.Collide` to find FoodItems.
- **`DropLatest()`:** drops the most recently picked up item; uses `Physics.IgnoreCollision` to prevent the dropped item from bumping the bird.
- **`Count`:** current number of carried items (used by HUD).

### `FoodItem.cs`
Attach to any collectible item prefab.
- **`foodName`** (string): display name shown in HomeBase inventory UI.
- **`foodType`** (enum: Berry, Nut, GroundInsect, FlyingInsect).
- **`buff`** (FoodBuff): optional stat buff applied when eaten.
- **`Collect()`**: disables InsectBehavior if present, hides GO, calls `inventory.AddFood()`.
- **`Drop()`**: re-enables GO. If insect, switches trigger collider to solid and adds a Rigidbody so it falls as a dead physics object.

### `InsectBehavior.cs`
AI for flying insects (e.g. dragonfly). State machine: Hovering → ReactingToThreat → Darting.
- Auto-adds a `SphereCollider` (trigger) in `Awake()` — do **not** manually add a collider or Rigidbody to the prefab.
- **Flee:** detects bird within `fleeDetectionRadius`, picks a dart direction away from bird blended with home bias.
- **Idle darting:** random darts within `maxWanderRadius` of spawn point when undisturbed.
- **Respawn:** `OnCaught()` disables renderers/colliders and respawns after `respawnDelay` seconds.
- **`groundMask`:** if set to 0/Nothing, skips terrain raycast and clamps Y to spawn height (safe default for floating insects).

### `CameraFollow.cs`
Third-person orbit camera. Attach to a camera GameObject; assign the bird transform.
- Uses `Vector3.SmoothDamp` on the full bird position (not just Y) to filter physics jitter before computing the look target.
- RMB hold: free orbit. Without RMB: auto-follows behind the bird.

### `WorldSpawner.cs`
Spawns items on terrain at scene start. Raycasts down to find ground, enforces minimum spacing.
- **`SpawnEntry`** fields: `prefab`, `minCount`, `maxCount`, `spawnInClusters`, `minClusterSize`, `maxClusterSize`, `clusterRadius`.
- Cluster mode: picks a cluster centre first, then spreads items within `clusterRadius` of it.
- Right-click component → **"Spawn Now"** or **"Clear Spawned Items"** to test in editor.
- To spawn insects at height: set `raycastHeight` high and position the spawner object above the terrain; insects use `groundMask = Nothing` so they hover at their spawn Y.

### `HomeBase.cs`
Attach to the nest GameObject.
- **`depositRadius`:** any active FoodItem inside this radius is auto-collected into `homeInventory` (Dictionary<string,int>) and destroyed each frame.
- **`uiShowRadius`:** inventory panel (right side of screen) shows only when the bird is within this distance. Also used by HUD to hide the home marker when inside the zone.
- Gold gizmo = deposit radius. White gizmo = UI show radius.

### `HUD.cs`
Builds the HUD Canvas at runtime — no prefab needed. Attach to any GameObject; assign references in inspector.
- **References needed:** `BirdFlight`, `BirdInventory`, `HomeBase`.
- **Bottom-centre panels (stacked):**
  - Catch mode pill (E key on/off indicator, green when active)
  - Carry counter (e.g. "Carrying 1 / 3")
  - Speed bar (fill image + m/s readout, works on ground and in flight)
- **Home marker:** world-to-screen projection. Shows a "HOME" label over the nest position when it is directly visible in the viewport. Hides when behind the camera, outside screen padding, or when the bird is inside `homeBase.uiShowRadius`.

---

### `EnvironmentController.cs`
Single controller for all environment visual effects. Attach to any GameObject; assign bird, PostProcessVolume, and RainScript references.
- **Two state dropdowns:** `currentWeather` (Clear, Rain, Thunderstorm, Foggy, Hot, Cold, Wind) and `currentTimeOfDay` (Day, Evening, Night, Morning)
- **`timeOfDayWeight`** (0–1 slider): blends time-of-day effects into weather. 0 = pure weather, 1 = pure time of day.
- **Three blend layers** (applied in order, single write per frame):
  1. Weather preset values
  2. Time of day lerped in by `timeOfDayWeight`
  3. Hawk zone (Zone1 = tracking, Zone2 = diving) blended on top via `SetHawkZone(0/1/2)`
- **Each preset (`EnvironmentPreset`) controls:** skybox (Cubemap), fog low/high altitude colours, fog density, rain intensity, PP temperature, PP colour filter, vignette intensity/colour. Plus a `keepLastFog` bool to freeze fog for that state.
- **Skybox blending:** uses `Assets/SkyboxBlend.shader` — a custom two-cubemap blend shader. Smooth crossfade at `weatherBlendSpeed`, no instant cuts.
- **Rain integration:** assign `RainPrefab` instance to `rainScript` slot. `rainIntensity` per preset drives `RainScript.RainIntensity` automatically. Rain preset = 0.5, Thunderstorm = 1.0.
- **Post Processing Stack v2** required (install via Package Manager → Unity Registry). Effects auto-added at runtime if not on the profile.
- Called by `HawkController` via `SetHawkZone(0/1/2)`.

### `SunController.cs`
Separate script for the directional light (sun). Attach to the sun GameObject; assign `EnvironmentController` reference.
- Reads `currentWeather`, `currentTimeOfDay`, `timeOfDayWeight` from `EnvironmentController` — does not modify it.
- **`SunTimePreset`** per time of day: rotation (euler X=elevation, Y=azimuth), intensity, colour, shadowStrength.
- **`SunWeatherModifier`** per weather: intensityMultiplier, colorTint, shadowStrengthMultiplier — multiplied on top of the time-of-day preset.
- At `timeOfDayWeight = 0` the sun stays at neutral day position. At 1 it fully follows the time-of-day preset.
- Uses `Quaternion.Slerp` for rotation (no gimbal issues).
- All values smoothed at `blendSpeed` (match to `EnvironmentController.weatherBlendSpeed`).

### `SkyboxBlend.shader`
Custom shader at `Assets/SkyboxBlend.shader`. Takes `_CubemapA`, `_CubemapB`, `_Blend` (0–1), `_Exposure`, `_Rotation`. Used internally by `EnvironmentController` — do not assign manually.

### `BirdStatsData.cs`
ScriptableObject holding all bird body part stats and dot positions. Create via right-click → Create → Birb → Bird Stats Data.
- **`SubStatData`:** `statName` (string) + `value` (int 1–5)
- **`BodyPartData`:** `partName`, `dotX`/`dotY` (0–1 normalised portrait position), `labelOnLeft` (bool), `description` (TextArea), `subStats[]`
- Pre-populated with 8 body parts: Beak, Eyes, Wings, Feathers, Tail, Claws, Intelligence, Voice

### `BirdStatsUI.cs`
Canvas-based bird stats panel. Attach to any persistent GameObject; assign `statsData`, `birdPortrait`, and `starSprite` in the inspector.
- **N key** (configurable) toggles the panel. Game does NOT pause.
- **Layout:** left 55% = bird portrait with interactive dot markers. Right 45% = expandable detail panel.
- **Dots:** placed at `(dotX, dotY)` normalised coords over the portrait area using anchor-based positioning. Each dot shows a short label `"PartName ★★★"` beside it (side controlled by `labelOnLeft`). Dot uses a runtime-generated circle sprite.
- **Hover:** dot + label colour shift to gold (`dotColorHover`).
- **Click:** dot turns cyan (`dotColorSelected`). Right-side detail panel slides open showing: part name header, divider line, description text, then a `VerticalLayoutGroup` of sub-stat rows.
- **Sub-stat rows:** each row = stat name label + N filled star images (count = `value`), gold tinted. No empty stars.
- **Click same dot again:** deselects, closes detail panel.
- **No prefabs needed** — entire UI built procedurally in `Start()`.
- **Inspector colours:** `dotColorDefault/Hover/Selected` and `labelColorDefault/Hover/Selected` all editable.

### Planned / In Progress
- **Bird of Prey Zones** — zone trigger system that changes hawk zone state on EnvironmentController (details missing from context — needs re-documenting)

### Render Pipeline
Project uses the **Built-in Render Pipeline** (confirmed via Graphics settings: Default Render Pipeline = None).
Post-processing uses **Post Processing Stack v2** (install via Window → Package Manager → Unity Registry → "Post Processing").
- `Post Process Layer` component goes on the Main Camera.
- `Post Process Volume` (Is Global = true) holds the actual effects. EnvironmentController auto-adds ColorGrading and Vignette at runtime.
- `FogHeightColor.cs` still exists in the project (kept for reference/values) but is superseded by `EnvironmentController`.

### Assets in Project
- `Assets/RainMaker/` — Rain Maker 2D/3D asset (Digital Ruby). Key prefab: `RainPrefab.prefab`. Key script: `RainScript.cs` with `RainIntensity` (0–1) field.
- `Assets/Fantasy Skybox FREE/` — skybox materials and cubemaps. Panoramic `.mat` files need converting to Cubemaps to use with `SkyboxBlend.shader`.

---

## Session Log

### Session 1 — Initial Design
- Established game concept: bird survival + flock management
- Decided on Unity (C#), third-person prototype first
- Wrote `BirdFlight.cs` — first flight controller script
- Designed full trait system: physical traits, behavioural traits, special/rare traits
- Defined core gameplay loop and progression layers

### Session 5 — Environment System
- **EnvironmentController.cs** created — replaces FogHeightColor.cs as the single writer to RenderSettings + PostProcess.
- Weather states: Clear, Rain, Thunderstorm, Foggy, Hot, Cold, Wind.
- Time of day states: Day, Evening, Night, Morning. Blended into weather via `timeOfDayWeight` slider.
- Hawk zone states (Zone1/Zone2) driven by HawkController via `SetHawkZone()`, blended on top at highest priority.
- Each `EnvironmentPreset` has: skybox cubemap, low/high altitude fog colours, fog density, rain intensity, PP temperature, PP colour filter, vignette intensity/colour, `keepLastFog` bool.
- **SkyboxBlend.shader** created for smooth cubemap crossfading.
- **Rain Maker** asset imported and wired in — `rainIntensity` per preset drives particle system automatically.
- **SunController.cs** created — separate script on the directional light. Reads EnvironmentController state, controls intensity, colour, shadow strength, rotation. Uses `SunTimePreset` + `SunWeatherModifier` structs.
- `HawkController.cs` updated: `FogHeightColor fogController` → `EnvironmentController envController`.

### Sessions 2–4 — Flight, Physics & Core Systems
- **Camera shake fix:** root cause was `rb.linearVelocity` and rotation being set in `Update()`, fighting `FixedUpdate()`. Fixed by storing desired values in Update and applying via `rb.MoveRotation` in FixedUpdate.
- **CameraFollow:** switched to `Vector3.SmoothDamp` on full bird position to filter jitter.
- **E key:** changed from 3-second buffer to on/off toggle (`catchModeActive`). Turns off on Q or full inventory.
- **Q key nosedive fix:** food item spawning at bird position on drop triggered collision stagger. Fixed with `Physics.IgnoreCollision` between bird collider and dropped item colliders.
- **Dragonfly / InsectBehavior:** full insect AI with flee, idle darting, home bias, respawn. Collider auto-added in Awake — do not manually add collider/Rigidbody to prefab.
- **WorldSpawner:** added cluster spawn mode to `SpawnEntry`.
- **HUD:** built at runtime (no prefab). Catch mode pill, carry counter, speed bar, home marker.
- **HomeBase:** auto-collects dropped food in deposit radius, shows inventory when bird is nearby.
- **Day/Night + Weather architecture discussed:** TimeOfDaySystem + WeatherSystem → EnvironmentBlender pattern agreed.
- **Render pipeline identified:** Built-in. Post Processing Stack v2 to be used for colour grading.
