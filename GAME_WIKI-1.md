# 🐦 BIRB — Game Wiki

![A small bird perched on a tree branch](https://images.unsplash.com/photo-1698613321602-50d1f4d943bf?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D)

> **Status:** Early Development  
> **Engine:** Unity (C#)  
> **Genre:** Survival / Base Building / Flock Management  
> **Last Updated:** 2026-05-06

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

Birds have **physical traits** rated in stars (1–5). Rather than abstract stats like "Speed", traits describe the bird's body and naturally affect underlying systems.

### Core Physical Traits

| Trait | Affects |
|-------|---------|
| **Wings** | Flight speed, stamina, maneuverability, glide distance |
| **Beak** | Gather speed, gather range, damage to small enemies, food efficiency |
| **Talons** | Grip strength, combat damage, ability to carry heavy items |
| **Eyes** | Detection range, predator awareness, finding rare resources |
| **Feathers** | Stealth (noise level), cold resistance, camouflage |
| **Crop** | Carry capacity for food and materials |
| **Lungs** | Stamina pool, duration of sustained flight |
| **Neck** | Reach range, drinking from deep water sources |
| **Tail** | Agility, tight maneuvering through trees and undergrowth |
| **Bones** | Weight vs durability — lighter = faster, heavier = more HP |

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

## Session Log

### Session 1 — Initial Design
- Established game concept: bird survival + flock management
- Decided on Unity (C#), third-person prototype first
- Wrote `BirdFlight.cs` — first flight controller script
- Designed full trait system: physical traits, behavioural traits, special/rare traits
- Defined core gameplay loop and progression layers
