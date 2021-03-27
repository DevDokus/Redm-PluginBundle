--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
-- This will turn features on or off.
Plugins = {
  Metabolism    = true,  -- Gives you Character vitals like eat and drink.
  Stores        = true,  -- Gives you multiple stores to buy and sell items.
  Teleport      = true,  -- Lets admins or all players teleport to map marker.
  UsableItems   = true,  -- Makes items usable that otherwise can't be used.
  iMaps         = true,  -- Fixed hole and glitched buildings. Adds tons of objects.
  BankDoors     = true,  -- Open or close the Bank Doors.
  ShowCoords    = true,  -- Show coordinate with ( /coords )
  BountyHunter  = true,  -- Enable the Bounty Hunter System
  PlayPiano     = true,  -- Lets users play the saloon pianos.
}

--------------------------------------------------------------------------------
------------------------------- Plugin Teleport --------------------------------
--------------------------------------------------------------------------------
-- This plugin will later also be intergraded into the admin menu i am building.
Teleport = {
  AdminGroup = 'admin', -- This is the admin group name you have set.
  AdminOnly  = false     -- Set false if everyone may use it
}

--------------------------------------------------------------------------------
------------------------------- Plugin ShowCoords ------------------------------
--------------------------------------------------------------------------------
ShowCoords = {
  -- AdminOnly =  true,        -- Will be used in a later version!
  -- AdminGroup = 'admin',     -- Will be used in a later version!
  FontSize = 0.60,
  PosX = { Horizon = 0.185, Vertical = 0.77 },
  PosY = { Horizon = 0.189, Vertical = 0.82 },
  PosZ = { Horizon = 0.189, Vertical = 0.87 },
  PosH = { Horizon = 0.179, Vertical = 0.92 }
}

--------------------------------------------------------------------------------
-----------------------------  Plugin Metabolism -------------------------------
--------------------------------------------------------------------------------
Metabolism = {
  Temperature = {
    Format = 'C', -- Set it to C or F
    Max = 20, -- Max Temp before losing more vitals stats.
    Min = -15, -- Min Temp before losing more vitals stats.
    ColdDamage = { Water = 0.05, Food = 0.1 }, -- Amount of drain per second below min Temp
    HotDamage = { Water = 0.25, Food = 0.01}, -- Amount of drain per second above max Temp
  },

  -- Food Settings
  Food = {
    DrainIdle    = 0.01, -- Amount of drain when standing still
    DrainRunning = 0.20, -- Amount of drain when running
    DrainWalking = 0.03, -- Amount of drain when walking
    LoseWhen     = 10.0, -- Losing innercore health below this threshold
    DamagePerSec = 1.0,  -- Amount of damage on innercore health per second.
  },

  -- Water Settings
  Water = {
    DrainIdle    = 0.02, -- Amount of drain when standing still
    DrainRunning = 0.50, -- Amount of drain when running
    DrainWalking = 0.05, -- Amount of drain when walking
    LoseWhen     = 10.0, -- Losing innercore health below this threshold
    DamagePerSec = 1.0,  -- Amount of damage on innercore health per second.
  }
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
    {ID = 'wooden_boards', Type = 'Misc', Name = 'Wooden Board', Price = 0.75, Text = 'Fresh Smelling Wooden Board'},
  },
}

BountyHunter = {
  ------------------------------------------------------------------------------
  -------------------------------- Bounty Hunter ---------------------------------
  --------------------------------------------------------------------------------
  -- Here you can choose how you want your UI to look like.
  -- NOTE: That you can only have 1 enabled at the same time.
  -- If 1 is set to [ true ] the other one needs to be [ false ]
  --------------------------------------------------------------------------------
  -- Same thing counts for the Themes. Only 1 can be activated at once!
  --------------------------------------------------------------------------------
  NUI = {
    Theme = { Dark = false, Red = true },
    Position = { Right = true, Left = false, Center = false }
  },

  --------------------------------------------------------------------------------
  -- Here you can set if BountyHunter needs a job or not for it to work.
  -- You can add multiple on this list. If set to true, the job is active
  -- NoJob is simply the error you get when you dont have the correct job.
  -- Make sure that you put every job on this line if you put them on the listz
  -- NOTE: if you disable one of the jobs, make sure to edit the NoJob also!
  -- Otherwise people will thet need a job that maybe doesn't exists.
  --------------------------------------------------------------------------------
  Jobs = {
    { Job = 'police', Use = false },
    { Job = 'hunter', Use = false },
    NoJob = 'You need the jobs ~e~Police~q~ or ~e~Hunter~q~ job to hunt for bounties'
  },

  --------------------------------------------------------------------------------
  Payment = {
    Money = {
      BPK    = true,    -- true = Pay per kill  |  false = fixed amount per kill
      Min    = 5,       -- Minimal money value a player can get per kill.
      Max    = 7,       -- Maximum money value a player can get per kill
      Static = 10       -- Fixed value of money per bounty kill
    },
    --------------------------------------------------------------------------------
    XP = {
      XPK    = true,    -- true = XP per kill  |  false = fixed amount per kill
      Min    = 25,      -- Minimal XP value a player can get per kill.
      Max    = 75,      -- Maximum XP value a player can get per kill
      Static = 50       -- Fixed value of XP per bounty kill
    }
  },
  --------------------------------------------------------------------------------
  -- Here you can add all BountyBoards Menu locations.
  -- The City name does nothing! this is just a visual reference.
  --------------------------------------------------------------------------------
  BountyBoards = {
    { City = 'Valentine',    x = -274.8, y = 805.5, z = 119.3 },
    { City = 'Saint Dennis', x = 2513.4, y = -1305.2, z = 48.9 },
    { City = 'Blackwater',   x = -758.0, y = -1266.0, z = 44.0 },
    -- { City = 'Valentine', x = -274.8, y = 805.5, z = 119.3 },
  },
  --------------------------------------------------------------------------------
  -- These are the NPC bounties you can hunt. If you want to add
  -- new location/mission, just add the coordinates on the list.
  -- NOTE: that the IDs are what combines the enemies in a group.
  -- If ID 1 is selected by the randomizer, all enemies with
  -- ID 1 will be selected for the mission. The more enties
  -- on the same ID, there more you have to kill per mission.
  --------------------------------------------------------------------------------
  Bounties = {
    {ID = 1, Coords = { x = -30.77, y = 1226.8, z = 172.92 }},
    {ID = 1, Coords = { x = -33.77, y = 1229.8, z = 172.92 }},
    {ID = 2, Coords = { x = 489.53, y = 619.81, z = 111.7 }},
    {ID = 2, Coords = { x = 516.53, y = 621.81, z = 111.7 }},
    {ID = 2, Coords = { x = 516.53, y = 619.81, z = 111.7 }},
    {ID = 3, Coords = { x = -423.75, y = 1736.52, z = 216.56 }},
    {ID = 3, Coords = { x = -413.31, y = 1752.52, z = 216.25 }},
    {ID = 3, Coords = { x = -397.92, y = 1726.46, z = 216.43 }},
    {ID = 4, Coords = { x = -29.9, y = 1227.25, z = 172.98 }},
    {ID = 4, Coords = { x = -17.65, y = 1230.56, z = 173.26 }},
    {ID = 5, Coords = { x = 201.13, y = 1001.63, z = 189.77 }},
    {ID = 5, Coords = { x = 223.16, y = 987.52, z = 190.89 }},
    {ID = 6, Coords = { x = -156.23, y = 1491.12, z = 116.16 }},
    {ID = 7, Coords = { x = -689.1, y = 1042.07, z = 135.0 }},
    {ID = 8, Coords = { x = -948.0, y = 2171.54, z = 342.11 }},
    {ID = 8, Coords = { x = -967.86, y = 2182.34, z = 340.86 }},
    {ID = 9, Coords = { x = -1020.68, y = 1690.35, z = 244.33 }},
    {ID = 10, Coords = { x = -552.95, y = 2703.03, z = 320.42 }},
    {ID = 10, Coords = { x = -541.7, y = 2670.44, z = 319.09 }},
    {ID = 10, Coords = { x = -556.19, y = 2708.72, z = 320.42 }},
    {ID = 11, Coords = { x = -1962.41, y = 2159.86, z = 327.58 }},
    {ID = 12, Coords = { x = -1632.56, y = 1229.4, z = 352.09 }},
    {ID = 12, Coords = { x = -1625.73, y = 1252, 83, z = 348.51 }},
    {ID = 12, Coords = { x = -1634.14, y = 1214.69, z = 352.5 }},
    {ID = 12, Coords = { x = -1648.31, y = 1247.34, z = 351.08 }},
    {ID = 13, Coords = { x = -1492.04, y = 1248.68, z = 314.49 }},
    {ID = 13, Coords = { x = -1508.15, y = 1247.45, z = 313.72 }},
    {ID = 13, Coords = { x = -1505.53, y = 1247.58, z = 313.76 }},
    {ID = 14, Coords = { x = -1085.23, y = 706.71, z = 104.49 }},
    {ID = 15, Coords = { x = -815.71, y = 352.22, z = 98.09 }},
    {ID = 15, Coords = { x = -860.24, y = 335.94, z = 96.42 }},
    {ID = 16, Coords = { x = -613.34, y = -26.31, z = 85.98 }},
    {ID = 16, Coords = { x = -629.76, y = -60.95, z = 82.86 }},
    {ID = 17, Coords = { x = -362.68, y = -122.4, z = 51.18 }},
    {ID = 17, Coords = { x = -344.13, y = -157.94, z = 50.71 }},
    {ID = 17, Coords = { x = -327.29, y = -149.8, z = 51.08 }},
    {ID = 17, Coords = { x = -360.85, y = -116.76, z = 47.6 }},
    {ID = 18, Coords = { x = -61.14, y = -393.23, z = 72.21 }},
    {ID = 19, Coords = { x = 900.69, y = 261.53, z = 116.0 }},
    {ID = 20, Coords = { x = 1114.8, y = 488.62, z = 97.28 }},
    {ID = 20, Coords = { x = 1122.96, y = 469.77, z = 97.02 }},
    {ID = 20, Coords = { x = 1178.78, y = 430.47, z = 92.78 }},
    {ID = 21, Coords = { x = 769.29, y = 874.3, z = 120.95 }},
    {ID = 21, Coords = { x = 776.87, y = 850.21, z = 118.9 }}
  }
}




--------------------------------------------------------------------------------
---------------------------------- Play Piano ----------------------------------
--------------------------------------------------------------------------------
PlayPiano = {
  Pianos = {
    {ID = "Valentine",    x= -312.36,  y= 799.05,   z= 118.48, h= 102.3},
    {ID = "Saint Dennis", x= 2631.82,  y= -1232.31, z= 53.70,  h= 62.0},
    {ID = "Rhodos",       x= 1346.95,  y= -1371.07, z= 79.99,  h=351.0},
    {ID = "Blackwater",   x= -814.98,  y= -1313.04, z= 43.18,  h= 358.0},
    {ID = "Armadillo",    x= -3706.38, y= -2589.00, z= -13.82, h= 360.0},
    {ID = "Tumbleweed",   x= -5516.0,  y= -2914.53, z= -2.26,  h= 121.4},
    {ID = "vHoorn",       x= 2944.12,   y= 528.87,  z= 44.85,  h= 359.03},
  }
}






--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
Keys = {
  -- Mouse buttons
  ["MOUSE1"] = 0x07CE1E61, ["MOUSE2"] = 0xF84FA74F, ["MOUSE3"] = 0xCEE12B50, ["MWUP"] = 0x3076E97C,
  -- keyboard
  ["A"] = 0x7065027D, ["B"] = 0x4CC0E2FE, ["C"] = 0x9959A6F0, ["D"] = 0xB4E465B4, ["E"] = 0xCEFD9220,
  ["F"] = 0xB2F377E8, ["G"] = 0x760A9C6F, ["H"] = 0x24978A28, ["I"] = 0xC1989F95, ["J"] = 0xF3830D8E,
  ["L"] = 0x80F28E95, ["M"] = 0xE31C6A41, ["N"] = 0x4BC9DABB, ["O"] = 0xF1301666, ["P"] = 0xD82E0BD2,
  ["Q"] = 0xDE794E3E, ["R"] = 0xE30CD707, ["S"] = 0xD27782E3, ["U"] = 0xD8F73058, ["V"] = 0x7F8D09B8,
  ["W"] = 0x8FD015D8, ["X"] = 0x8CC9CD42, ["Z"] = 0x26E9DC00, ["RIGHTBRACKET"] = 0xA5BDCD3C,
  ["LEFTBRACKET"] = 0x430593AA, ["CTRL"] = 0xDB096B85, ["TAB"] = 0xB238FE0B, ["SHIFT"] = 0x8FFC75D6,
  ["SPACEBAR"] = 0xD9D0E1C0, ["ENTER"] = 0xC7B5340A, ["BACKSPACE"] = 0x156F7119, ["LALT"] = 0x8AAA0AD4,
  ["DEL"] = 0x4AF4D473, ["PGUP"] = 0x446258B6, ["PGDN"] = 0x3C3DD371, ["F1"] = 0xA8E3F467,
  ["F4"] = 0x1F6D95E5, ["F6"] = 0x3C0A40F2, ["1"] = 0xE6F612E4, ["2"] = 0x1CE6D9EB, ["3"] = 0x4F49CC4C,
  ["4"] = 0x8F9F9E58, ["5"] = 0xAB62E997, ["6"] = 0xA1FDE2A6, ["7"] = 0xB03A913B, ["8"] = 0x42385422,
  ["DOWN"] = 0x05CA7C52, ["UP"] = 0x6319DB71, ["LEFT"] = 0xA65EBAB4, ["RIGHT"] = 0xDEB34313,
}














































--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- DON'T TOUCH ANYTHING BELOW THIS, It WILL CREATE A DISTURBANCE IN THE FORCE --
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
_Version_ = "1.6.0"
_vConfig_ = 114727032021
_StartError_ = false
