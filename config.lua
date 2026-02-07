Config = {}

--Language for the shop UI (en/ar)
--لغة واجهة المتجر (en/ar)
Config.Locale = 'en' 

--Main UI accent color (buttons, highlights)
--اللون الأساسي للواجهة (الأزرار والتحديد)
Config.UiColor = "#10D6E6"

--Core framework resource name (qb-core)
--اسم الكور المستخدم في السيرفر (qb-core)
Config.Core = 'qb-core'

--Interaction system type: "target" or "interact"
--نوع نظام التفاعل: "target" أو "interact"
Config.interactType = 'interact'

--Interaction resource name (if using interact system)
--اسم سكربت التفاعل (في حال استخدام interact)
Config.interact = 'interact'

--Target resource name (if using target system)
--اسم سكربت الاستهداف (في حال استخدام target)
Config.Target = 'qb-target'

--Inventory image path for item icons
--مسار صور الأيقونات الخاصة بالأغراض في الانفنتوري
Config.inventory = "nui://qb-inventory/html/images/"

--If true, shop blips will always be enabled by default.
--إذا كانت true، علامات المتاجر على الخريطة ستكون مفعلة دائمًا بشكل تلقائي.

--If false, blips can be toggled manually using:
--إذا كانت false، يمكن تشغيل/إيقاف العلامات يدويًا باستخدام الحدث:

-- TriggerEvent('VGX-Shops:client:ToggleBlips')
Config.BlipsOn = true 


--=============================================
-- Categories:
--     - All   
--     - Drinks
--     - Food
--     - Tools
--     - Medical
--     - Weapons
--     - Ammo
--     - Other
--=============================================

Config.Products = {
    ["market"] = {
        { name = 'water_bottle', price = 5, amount = 500, info = {fooding = 1000}, category = "Drinks"  },
        { name = 'kurkakola', price = 10, amount = 500, info = {fooding = 100}, category = "Drinks"  },
        { name = 'monster', price = 10, amount = 500, info = {fooding = 100}, category = "Drinks"  },
        { name = 'twerks_candy', price = 5, amount = 500, info = {fooding = 100}, category = "Food"  },
        { name = 'snikkel_candy', price = 5, amount = 500, info = {fooding = 100}, category = "Food"  },
        { name = 'sandwich', price = 50, amount = 500, info = {fooding = 100}, category = "Food" },
        { name = 'lighter', price = 10, amount = 500, info = {}, category = "Other"},
        { name = 'redwoodcigs', price = 120, amount = 500, info = {uses = 20}, category = "Other"},
    },
    ["police"] = {
        { name = 'weapon_stungun', price = 1, grade = 0, category = "Weapons"  },
        { name = 'weapon_nightstick', price = 1, grade = 0, category = "Weapons" },
        { name = 'pistol_ammo', price = 1, grade = 0, category = "Ammo" },
        { name = 'handcuffs', price = 1, grade = 0, category = "Tools" },
        { name = 'weapon_flashlight', price = 1, grade = 0, category = "Tools" },
        { name = 'police_stormram', price = 1, grade = 0, category = "Weapons" },
        { name = 'radio', price = 1, grade = 0, category = "Tools" },
        { name = 'armor', price = 1, grade = 0, category = "Tools" },
        { name = 'mdt', price = 1, grade = 0, category = "Tools" },
        { name = 'bodycam', price = 1, grade = 0, category = "Tools" },
        { name = 'parachute', price = 1, grade = 0, category = "Tools" },
        { name = 'keyfob', price = 1, grade = 0, category = "Tools" },
        { name = 'megaphone', price = 1, grade = 0, category = "Tools" },
        { name = 'ifaks', price = 1, grade = 0, category = "Medical" },
        { name = 'CPR', price = 1,  grade = 0, category = "Medical" },
        { name = 'camera', price = 1,  grade = 0, category = "Tools" },
        { name = 'heavyarmor', price = 1,  grade = 0, category = "Tools" },
        { name = 'weapon_heavypistol', price = 1, grade = 5, category = "Weapons" },

    },
}


-- ['example'] = {
--     Title = "Example", --Shop title shown in UI |اسم المتجر في الواجهة
--     items = Config.Products["example"], --Items list for this shop |قائمة المنتجات لهذا المتجر
--     coords = vector3(24.91, -1345.6, 29.5), --Interaction location |موقع التفاعل مع المتجر
--     job = 'none', --Required job ("none" = everyone) |الوظيفة المطلوبة ("none" للجميع)
--     jobgrade = 0, --Minimum grade required |أقل رتبة وظيفية مطلوبة
--     blip = {
--         enable = true, --Enable map blip |تفعيل علامة الخريطة
--         sprite = 59, --Blip icon ID |رقم أيقونة العلامة
--         color = 0, --Blip color ID |لون العلامة
--         scale = 0.6, --Blip size |حجم العلامة
--         label = 'Supermarket' --Name on map |الاسم الظاهر بالخريطة
--     },
--     npc = {
--         enable = true, --Enable NPC ped |تفعيل NPC البائع
--         model = 'mp_m_shopkeep_01', --NPC model name |موديل شخصية البائع
--         coords = vector4(24.41, -1345.62, 29.5, 264.44), --Spawn coords + heading |مكان الظهور + الاتجاه
--         animation = '' --Scenario animation (optional) |حركة للبائع (اختياري)
--     },
-- },


Config.Shops = {

    ['SuperMarket1'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector3(24.91, -1345.6, 29.5),
        job = 'none', 
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
    ['SuperMarket2'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector3(-3040.73, 584.78, 8.0),
        job = 'none', 
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
            coords = vector4(-3040.45, 583.99, 7.91, 11.63),
            animation = ''
        },
    },
    ['SuperMarket3'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector3(-3243.95, 1000.73, 12.80),
        job = 'none', 
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
            coords = vector4(-3244.01, 1000.12, 12.83, 349.97),
            animation = ''
        },
    },

    ['SuperMarket4'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector3(1729.1, 6416.4, 34.9),
        job = 'none', 
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
            coords = vector4(1728.58, 6416.82, 35.04, 243.81),
            animation = ''
        },
    },

    ['SuperMarket5'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector3(1959.79, 3741.71, 32.22),
        job = 'none', 
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
            coords = vector4(1960.59, 3746.8, 32.34, 222.8),
            animation = ''
        },
    },

    ['SuperMarket6'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector3(548.81, 2669.57, 42.11),
        job = 'none', 
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
            coords = vector4(549.37, 2669.5, 42.16, 96.55),
            animation = ''
        },
    },

    ['SuperMarket7'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector3(2676.86, 3280.82, 55.25),
        job = 'none', 
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
            coords = vector4(2676.63, 3280.21, 55.24, 329.44),
            animation = ''
        },
    },

    ['SuperMarket8'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector3(2555.52, 381.53, 108.5),
        job = 'none', 
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
            coords = vector4(2555.42, 380.82, 108.62, 357.3),
            animation = ''
        },
    },

    ['SuperMarket9'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector3(373.61, 327.93, 103.54),
        job = 'none', 
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
            coords = vector4(373.0, 328.06, 103.57, 258.31),
            animation = ''
        },
    },

    ['SuperMarket9'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector3(377.55, -1787.03, 29.52),
        job = 'none', 
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
            coords = vector4(377.55, -1787.03, 29.52, 328.14),
            animation = ''
        },
    },

    

    ['Gasstationstore1'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector3(373.61, 327.93, 103.54),
        job = 'none', 
        jobgrade = 0, 
        blip = {
            enable = true,
            sprite = 59,
            color = 0,
            scale = 0.6,
            label = 'Gasoline Market'
        },
        npc = {
            enable = true,
            model = 'mp_m_shopkeep_01',
            coords = vector4(-47.02, -1758.23, 29.42, 45.05),
            animation = ''
        },
    },

    ['Gasstationstore2'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector4(1391.76, 3605.99, 34.98, 197.55),
        job = 'none', 
        jobgrade = 0, 
        blip = {
            enable = true,
            sprite = 59,
            color = 0,
            scale = 0.6,
            label = 'Gasoline Market'
        },
        npc = {
            enable = true,
            model = 'mp_m_shopkeep_01',
            coords = vector4(1391.76, 3605.99, 34.98, 197.55),
            animation = ''
        },
    },

    ['Gasstationstore3'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector4(1391.76, 3605.99, 34.98, 197.55),
        job = 'none', 
        jobgrade = 0, 
        blip = {
            enable = true,
            sprite = 59,
            color = 0,
            scale = 0.6,
            label = 'Gasoline Market'
        },
        npc = {
            enable = true,
            model = 'mp_m_shopkeep_01',
            coords = vector4(-706.06, -913.97, 19.22, 88.04),
            animation = ''
        },
    },

    ['Gasstationstore4'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector4(1391.76, 3605.99, 34.98, 197.55),
        job = 'none', 
        jobgrade = 0, 
        blip = {
            enable = true,
            sprite = 59,
            color = 0,
            scale = 0.6,
            label = 'Gasoline Market'
        },
        npc = {
            enable = true,
            model = 'mp_m_shopkeep_01',
            coords = vector4(-1820.02, 794.03, 138.09, 135.45),
            animation = ''
        },
    },

    ['Gasstationstore5'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector4(1391.76, 3605.99, 34.98, 197.55),
        job = 'none', 
        jobgrade = 0, 
        blip = {
            enable = true,
            sprite = 59,
            color = 0,
            scale = 0.6,
            label = 'Gasoline Market'
        },
        npc = {
            enable = true,
            model = 'mp_m_shopkeep_01',
            coords = vector4(1164.71, -322.94, 69.21, 101.72),
            animation = ''
        },
    },

    ['Gasstationstore6'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector4(1391.76, 3605.99, 34.98, 197.55),
        job = 'none', 
        jobgrade = 0, 
        blip = {
            enable = true,
            sprite = 59,
            color = 0,
            scale = 0.6,
            label = 'Gasoline Market'
        },
        npc = {
            enable = true,
            model = 'mp_m_shopkeep_01',
            coords = vector4(1697.87, 4922.96, 42.06, 324.71),
            animation = ''
        },
    },

    ['Gasstationstore6'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector4(1391.76, 3605.99, 34.98, 197.55),      
        job = 'none', 
        jobgrade = 0, 
        blip = {
            enable = true,
            sprite = 59,
            color = 0,
            scale = 0.6,
            label = 'Gasoline Market'
        },
        npc = {
            enable = true,
            model = 'mp_m_shopkeep_01',
            coords = vector4(1697.87, 4922.96, 42.06, 324.71),
            animation = ''
        },
    },

    ['robsliquor1'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector4(1391.76, 3605.99, 34.98, 197.55),      
        job = 'none', 
        jobgrade = 0, 
        blip = {
            enable = true,
            sprite = 59,
            color = 0,
            scale = 0.6,
            label = 'Gasoline Market'
        },
        npc = {
            enable = true,
            model = 'mp_m_shopkeep_01',
            coords = vector4(-1222.62, -908.79, 12.33, 26.91),
            animation = ''
        },
    },

    ['robsliquor2'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector4(1391.76, 3605.99, 34.98, 197.55),
        job = 'none', 
        jobgrade = 0, 
        blip = {
            enable = true,
            sprite = 59,
            color = 0,
            scale = 0.6,
            label = 'Gasoline Market'
        },
        npc = {
            enable = true,
            model = 'mp_m_shopkeep_01',
            coords = vector4(-1485.58, -378.56, 40.16, 134.08),
            animation = ''
        },
    },

    ['robsliquor3'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector4(1391.76, 3605.99, 34.98, 197.55),
        job = 'none', 
        jobgrade = 0, 
        blip = {
            enable = true,
            sprite = 59,
            color = 0,
            scale = 0.6,
            label = 'Gasoline Market'
        },
        npc = {
            enable = true,
            model = 'mp_m_shopkeep_01',
            coords = vector4(-2966.43, 390.11, 15.04, 84.7),
            animation = ''
        },
    },

    ['robsliquor4'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector4(1391.76, 3605.99, 34.98, 197.55),
        job = 'none', 
        jobgrade = 0, 
        blip = {
            enable = true,
            sprite = 59,
            color = 0,
            scale = 0.6,
            label = 'Gasoline Market'
        },
        npc = {
            enable = true,
            model = 'mp_m_shopkeep_01',
            coords = vector4(1166.76, 2710.86, 38.16, 177.44),
            animation = ''
        },
    },

    ['robsliquor5'] = {
        Title = "Supermarket",
        items = Config.Products["market"],
        coords = vector4(1391.76, 3605.99, 34.98, 197.55),
        job = 'none', 
        jobgrade = 0, 
        blip = {
            enable = true,
            sprite = 59,
            color = 0,
            scale = 0.6,
            label = 'Gasoline Market'
        },
        npc = {
            enable = true,
            model = 'mp_m_shopkeep_01',
            coords = vector4(1134.11, -981.49, 46.42, 272.51),
            animation = ''
        },
    },

    ['police'] = {
        Title = "Police Arms",
        items = Config.Products["police"],
        coords = vector4(1391.76, 3605.99, 34.98, 197.55),
        job = 'police', 
        jobgrade = 0, 
        blip = {
            enable = false,
            sprite = 59,
            color = 0,
            scale = 0.6,
            label = 'Police'
        },
        npc = {
            enable = true,
            model = 'mp_m_shopkeep_01',
            coords = vector4(427.36, -977.82, 21.56, 188.15),
            animation = ''
        },
    },
}

