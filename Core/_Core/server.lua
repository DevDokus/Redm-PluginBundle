--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------- DONT CHANGE ANYTHING BELOW --------------------------
--------------------------------------------------------------------------------
-- Check Dependencies.
print("^5[DokusCore]^2[SYSTEM]: ^6---------- Version 1.1.0 ----------")

if (Plugins.UsableItems == true) and (Plugins.Metabolism == false) then
  print('^5[DokusCore]^1[ERROR]: ^3The plugin UsableItems is depending on the plugin ^1Metabolism^3.')
  print("^5[DokusCore]^1[ERROR]: ^3If you want to use UsableItems, please set Metabolism to ^1true^3. ")
else
  print("^5[DokusCore]^2[SYSTEM]: ^5All settings are standing correctly!")
end

-- Report online features.
if Plugins.Metabolism then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6Metabolism ^3is running") end
if Plugins.Stores then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6Stores ^3is running") end
if Plugins.Teleport then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6Teleport ^3is running") end
if Plugins.UsableItems then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6UsableItems ^3is running") end
if Plugins.iMaps then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6iMaps ^3is running") end

-- Report offline features
if not Plugins.Metabolism then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6Metabolism ^3is not running") end
if not Plugins.Stores then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6Stores ^3is not running") end
if not Plugins.Teleport then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6Teleport ^3is not running") end
if not Plugins.UsableItems then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6UsableItems ^3is not running") end
if not Plugins.iMaps then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6iMaps ^3is not running") end

-- Thanks
print("^5[DokusCore]^2[SYSTEM]: ^5Thanks for using DokusCore for Vorp!")
print("^5[DokusCore]^2[SYSTEM]: ^5Developed By DevDokus")
print("^5[DokusCore]^2[DISCORD]: ^5Http://discord.gg/2gdypBhsye")
print("^5[DokusCore]^2[WEBSITE]: ^5Https://KDNGaming.com")
print("^5[DokusCore]^2[SYSTEM]: ^6-----------------------------------")
