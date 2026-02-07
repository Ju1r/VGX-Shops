# VGX-Shops

A FiveM shop resource for QBCore/Just-core with a modern NUI, categories, cart checkout, and job-restricted shops.

**Author:** VGX DEV  
**Version:** 1.0.0

---

## Features

- **Modern NUI** – Category bar, item grid, cart, and item modal with quantity selector
- **Categories** – Filter items by category (All, Drinks, Food, Tools, Medical, Weapons, Ammo, Other)
- **Cart checkout** – Add multiple items, then pay with **Cash** or **Bank**
- **Job-restricted shops** – Limit shops by job name and minimum grade
- **Blips & NPCs** – Optional map blips and vendor NPCs per shop
- **Multi-language** – English (`en`) and Arabic (`ar`) via `Config.Locale`
- **Custom UI color** – Single accent color for buttons and highlights
- **Interaction types** – Works with **qb-target** or **interact**
- **Item info** – Supports custom `info` (e.g. `fooding`, `uses`) and weapon serials for police
- **Weapon license** – Optional `requiresLicense` per item

---

## Dependencies

| Dependency    | Purpose                |
|--------------|------------------------|
| **QBCore** or **Just-core** | Framework (set `Config.Core`) |
| **qb-inventory** (or compatible) | Item images path in `Config.inventory` |
| **qb-target** or **interact** | Opening shops (set `Config.interactType`) |

**Optional:** `oxmysql` – Included in `fxmanifest.lua` only if you use it elsewhere; shop data is config-based.

---

## Installation

1. Drop the `VGX-Shops` folder into your `resources` directory.
2. **Do not rename the resource** – the script checks that the resource name is `VGX-Shops` and will disable itself if renamed.
3. Ensure `Config.Core`, `Config.inventory`, `Config.interactType`, `Config.Target` / `Config.interact` match your server.
4. Add to `server.cfg`:
   ```cfg
   ensure VGX-Shops
   ```

---


### Product categories

Used for the category bar and filtering. Set `category` on each product:

- **All**, **Drinks**, **Food**, **Tools**, **Medical**, **Weapons**, **Ammo**, **Other**

### Products (`Config.Products`)

```lua
["market"] = {
    { name = 'water_bottle', price = 5, amount = 500, info = { fooding = 1000 }, category = "Drinks" },
    { name = 'lighter', price = 10, amount = 500, info = {}, category = "Other" },
},
["police"] = {
    { name = 'weapon_stungun', price = 1, grade = 0, category = "Weapons" },
    { name = 'ifaks', price = 1, grade = 0, category = "Medical" },
    -- optional: requiresLicense = true
},
```

- **name** – Item id from `qb-core/shared/items.lua`
- **price** – Price per unit
- **amount** – Stock (optional)
- **info** – Table passed to inventory when giving item (e.g. durability, metadata)
- **category** – Used for category filter
- **grade** – Min job grade (for job shops)
- **requiresLicense** – If true, player must have `weaponlicense` item

### Shops (`Config.Shops`)

```lua
['SuperMarket1'] = {
    Title = "Supermarket",
    items = Config.Products["market"],
    coords = vector3(24.91, -1345.6, 29.5),
    job = 'none',        -- or e.g. 'police'
    jobgrade = 0,
    blip = {
        enable = true,
        sprite = 59,
        color = 0,
        scale = 0.6,
        label = 'Supermarket'
    },
    npc = {
        enable = true,
        model = 'mp_m_shopkeep_01',
        coords = vector4(24.41, -1345.62, 29.5, 264.44),
        animation = ''
    },
},
```

---

## Events

| `Just-shops:client:ToggleBlips` | Client | Toggle shop blips on/off |

---
\
## File structure

```
VGX-Shops/
├── client/
│   └── client.lua      # Blips, interactions, NUI open/close, checkout callbacks
├── server/
│   ├── server.lua     # Checkout, single-item purchase, job/license checks
│   └── shared.lua     # VGX_Inventory.GiveItem (handles unique/weapon/stackable)
├── html/
│   ├── index.html
│   ├── script.js      # UI logic, categories, cart, translations
│   ├── style.css
│   └── sounds/
│       ├── hover.mp3
│       └── notify.mp3
├── locales/
│   └── locales.lua
├── config.lua
├── fxmanifest.lua
└── README.md
```

---

## License / support

By **VGX DEV**. Use and modify as needed for your server. Ensure item names exist in your framework’s shared items and that your inventory supports the give-item API used in `server/shared.lua`.
