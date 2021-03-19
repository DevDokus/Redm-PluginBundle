--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
-- This will turn features on or off.
Plugins = {
  FixHolesInMap = true,
  Metabolism    = true,
  Stores        = true,
  Teleport      = true,
  UsableItems   = true
}

--------------------------------------------------------------------------------
------------------------ Plugin Teleport (Standalone) --------------------------
--------------------------------------------------------------------------------
-- This plugin will later also be intergraded into the admin menu i am building.
Teleport = {
  AdminGroup  = 'admin',
  AdminOnly   = false
}

--------------------------------------------------------------------------------
-----------------------------  Plugin Metabolism -------------------------------
--------------------------------------------------------------------------------
Metabolism = {
  Temperature   = {
    Format      = 'C',                          -- Set it to C or F
    Max         = 20,                           -- Max Temp before losing more vitals stats.
    Min         = -15,                          -- Min Temp before losing more vitals stats.
    ColdDamage  = { Water = 0.05, Food = 0.1 }, -- Amount of drain per second below min Temp
    HotDamage   = { Water = 0.25, Food = 0.01}, -- Amount of drain per second above max Temp
  },

  -- Food Settings
  Food = {
    DrainIdle = 0.01,                           -- Amount of drain when standing still
    DrainRunning = 0.20,                        -- Amount of drain when running
    DrainWalking = 0.03,                        -- Amount of drain when walking
    LoseWhen = 10.0,                            -- Losing innercore health below this threshold
    DamagePerSec = 1.0,                         -- Amount of damage on innercore health per second.
  },

  -- Water Settings
  Water = {
    DrainIdle = 0.02,                            -- Amount of drain when standing still
    DrainRunning = 0.50,                         -- Amount of drain when running
    DrainWalking = 0.05,                         -- Amount of drain when walking
    LoseWhen = 10.0,                             -- Losing innercore health below this threshold
    DamagePerSec = 1.0,                          -- Amount of damage on innercore health per second.
  },
}

--------------------------------------------------------------------------------
------------------------------ Plugin UsableItems ------------------------------
--------------------------------------------------------------------------------
-- Here you can add the items you want to be using in game.
-- Additionally you can also change your metabolism per item.
UsableItems = {
  Items = {
    {ID = 'consumable_coffee', Name = 'Coffee', Type = 'Eat', Hunger = -5, Thirst = 20, Stamina = 20, Health = 5},
    {ID = 'consumable_peach', Name = 'Peach', Type = 'Eat', Hunger = 15, Thirst = 10, Stamina = 5, Health = 5},
    {ID = 'tent', Name = 'Tent', Type = 'Placing', Hunger = 0, Thirst = 0, Stamina = -50, Health = 0},
    {ID = 'campfire', Name = 'Campfire', Type = 'Placing', Hunger = 0, Thirst = 0, Stamina = -25, Health = 0},
    {ID = 'consumable_sugarcube', Name = 'Sugercube', Type = 'Eat', Hunger = 5, Thirst = -5, Stamina = 5, Health = 5},
    -- {ID = '', Name = '', Type = '', Hunger = 15, Thirst = 10, Stamina = 5, Health = 5},
  }
}
-- TYPES: There are 3 types (Eat - Drink - Placing).
--  -- Eat: Means the character makes a eat animation.
--  -- Drink: Means you character uses a bottle like beer.
--  -- Placing: Means your character knees and looks around.

-- Metabolism:
-- Each item when used can increase/decrease your
-- (hunger - thirst - stamina - health).
-- Increase: Set the value to be a positive value 1 to 100
-- Decrease: Set the value to be a negative value -1 to -100
-- No Change: Set the value to be 0. Then no changes will be made.

--------------------------------------------------------------------------------
-------------------------------- Plugin Stores ---------------------------------
--------------------------------------------------------------------------------
Stores = {
  -- Change this if you want to alter the store locations.
  -- You can also remove or add more stores on the list.
  Stores = {
    {Store = 'Valentine', Coords = {x = -321.89, y = 803.99, z = 117.88}},
    {Store = 'Saint Denis', Coords = {x = 2825.74, y = -1317.91, z = 46.76}},
    {Store = 'Blackwater', Coords = {x = -784.50, y = -1324.07, z = 43.88}},
    {Store = 'Tumbleweed', Coords = {x = -5487.4, y = -2935.80, z = -0.40}}
  },

  -- These are the items that will appear in the buy section of the menu.
  -- Be aware, items you buy need to be in the database as vorp wants it.
  -- Items that can not be used can be added via my plugin DevDokus--UsableItems
  -- TYPE: There are 3 types (Food - Meds - Misc) more will be added in a later update.
  Buy = {
    {ID = 'consumable_peach', Type = 'Food', Name = 'Peach', Price = 1.0, Max = 5, Text = 'Very good for your health'},
    {ID = 'consumable_coffee', Type = 'Food', Name = 'Coffee', Price = 1.0, Max = 5, Text = 'A fine brown brew'},
    {ID = 'consumable_meat_greavy', Type = 'Food', Name = 'Cooked Meat', Price = 2.5, Max = 5, Text = 'Cooked Meat free from pests'},
    {ID = 'consumable_salmon_can', Type = 'Food', Name = 'Can Salmon', Price = 1.5, Max = 5, Text = 'Salmon from a can, really?'},
    {ID = 'consumable_medicine', Type = 'Meds', Name = 'Medicine', Price = 15.0, Max = 5, Text = 'When you just need to feel better!'},
    {ID = 'campfire', Type = 'Misc', Name = 'campfire', Price = 12.0, Max = 1, Text = 'Then he said: Let there be light!'},
    {ID = 'tent', Type = 'Misc', Name = 'tent', Price = 120.0, Max = 1, Text = 'For the softies'},
    {ID = 'weapon_fishingrod', Type = 'Misc', Name = 'Fishing Rod', Price = 15.0, Max = 1, Text = 'There\'s no fishing without'},
    {ID = 'bait', Type = 'Misc', Name = 'Fishing Bait', Price = 1.25, Max = 10, Text = 'Fish need to eat something you know!'},
  },

  -- These are the items that will appear in the sell section of the menu.
  -- Any item can be added to the list and it does not need to be in the database.
  -- As long the items is on the list by its item name id, it will work.
  Sell = {
    {ID = 'consumable_peach', Type = 'Food', Name = 'Peach', Price = 0.25, Text = 'Sell Peach'},
    {ID = 'consumable_coffee', Type = 'Food', Name = 'Coffee', Price = 0.55, Text = 'Sell Coffee'},
    {ID = 'consumable_kidneybeans_can', Type = 'Food', Name = 'Can Kidney Beans', Price = 0.75, Text = 'Sell Bean Can'},
    {ID = 'consumable_meat_greavy', Type = 'Food', Name = 'Cooked Meat', Price = 0.80, Text = 'Sell Cooked Meat'},
    {ID = 'consumable_salmon_can', Type = 'Food', Name = 'Can Salmon', Price = 0.85, Text = 'Sell Can Salmon'},
    {ID = 'consumable_medicine', Type = 'Meds', Name = 'Medicine', Price = 7.50, Text = 'Sell Medicine'},
    {ID = 'campfire', Type = 'Misc', Name = 'campfire', Price = 5.00, Text = 'Sell Campfire'},
    {ID = 'tent', Type = 'Misc', Name = 'tent', Price = 75.0, Text = 'Sell Tent '},
    {ID = 'consumable_haycube', Type = 'Misc', Name = 'HayCube', Price = 30.0, Text = 'Sell HayCube '},
    {ID = 'weapon_fishingrod', Type = 'Misc', Name = 'Fishing Rod', Price = 5.0, Text = 'Sell Fishing Rod '},
    {ID = 'bait', Type = 'Misc', Name = 'Fishing Bait', Price = 0.5, Text = 'Sell Fishing Bait'},
  },
}
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
Keys = {["Enter"] = 0xC7B5340A, ["Space"] = 0xD9D0E1C0, ['Backspace'] = 0x308588E6}
