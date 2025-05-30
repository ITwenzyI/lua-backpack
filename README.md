# 🎒 kilian_backpack

A lightweight backpack system for ESX-based FiveM servers. Adjusts a player’s maximum inventory weight depending on whether they own a backpack item.

---

## Features

- Automatically increases max carry weight when the player has a backpack
- Supports different backpack tiers (e.g., standard and casino backpack)
- Works on player login and whenever the event is manually triggered
- Easy integration with existing ESX inventory systems

---

## Requirements

- [ESX Legacy](https://github.com/esx-framework/esx-legacy)
- Inventory system that supports `setMaxWeight()` (e.g. `ox_inventory` or `esx_inventory`)

---

## Backpack Tiers

| Item Name         | Max Weight |
|-------------------|------------|
| (none/default)    | 50         |
| `backpack`        | 100        |
| `casino-backpack` | 150        |

Make sure these items exist in your shared items or inventory database.

## Author

**Kilian**
