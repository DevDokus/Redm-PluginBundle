--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------- DONT CHANGE ANYTHING BELOW --------------------------
--------------------------------------------------------------------------------
-- Check Dependencies.
print("^5[DokusCore]^2[SYSTEM]: ^6---------- Version ".._Version_.."----------")

if (Plugins.UsableItems == true) and (Plugins.Metabolism == false) then
  print('^5[DokusCore]^1[ERROR]: ^3The plugin UsableItems is depending on the plugin ^1Metabolism^3.')
  print("^5[DokusCore]^1[ERROR]: ^3If you want to use UsableItems, please set Metabolism to ^1true^3. ")
  _StartError_ = true
else
  print("^5[DokusCore]^2[SYSTEM]: ^5All settings are standing correctly!")
end

-- Report online features.
if not _StartError_ and Plugins.Metabolism      then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6Metabolism ^3is running") end
if not _StartError_ and Plugins.Stores          then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6Stores ^3is running") end
if not _StartError_ and Plugins.Teleport        then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6Teleport ^3is running") end
if not _StartError_ and Plugins.UsableItems     then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6UsableItems ^3is running") end
if not _StartError_ and Plugins.iMaps           then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6iMaps ^3is running") end
if not _StartError_ and Plugins.BankDoors       then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6BankDoors ^3is running") end

-- Report offline features
if not _StartError_ and not Plugins.Metabolism  then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6Metabolism ^3is not running") end
if not _StartError_ and not Plugins.Stores      then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6Stores ^3is not running") end
if not _StartError_ and not Plugins.Teleport    then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6Teleport ^3is not running") end
if not _StartError_ and not Plugins.UsableItems then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6UsableItems ^3is not running") end
if not _StartError_ and not Plugins.iMaps       then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6iMaps ^3is not running") end
if not _StartError_ and not Plugins.BankDoors   then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6BankDoors ^3is not running") end

-- Config Update Warning
print("^5[DokusCore]^2[SYSTEM]: ^6-----------------------------------")
if _vConfig_ == __vConfig__ then print("^5[DokusCore]^2[SYSTEM]: ^2You've the latests config version!") end
if _vConfig_ ~= __vConfig__ then print("^5[DokusCore]^1[SYSTEM]: ^1Your config file is not up to date!!!") end
if _vConfig_ ~= __vConfig__ then print("^5[DokusCore]^1[SYSTEM]: ^1Download the latest DokusCore from Github.") end
if _vConfig_ ~= __vConfig__ then print("^5[DokusCore]^1[SYSTEM]: ^1Github.com/devdokus/DokusCore") end
print("^5[DokusCore]^2[SYSTEM]: ^6-----------------------------------")
-- Thanks
if not _StartError_ then print("^5[DokusCore]^2[SYSTEM]: ^5Thanks for using DokusCore for Vorp!") end
if not _StartError_ then print("^5[DokusCore]^2[SYSTEM]: ^5Developed By DevDokus") end
if not _StartError_ then print("^5[DokusCore]^2[DISCORD]: ^5Http://discord.gg/2gdypBhsye") end
if not _StartError_ then print("^5[DokusCore]^2[WEBSITE]: ^5Https://KDNGaming.com") end
if not _StartError_ then print("^5[DokusCore]^2[SYSTEM]: ^6-----------------------------------") end

if _StartError_     then print("^5[DokusCore]^3[SYSTEM]: ^1DokusCore stopped all features for now!") end
if _StartError_     then print("^5[DokusCore]^3[SYSTEM]: ^1This is to prevent server crashes.") end
if _StartError_     then print("^5[DokusCore]^3[SYSTEM]: ^1Please go to your config to fix this error.") end
if _StartError_     then print("^5[DokusCore]^3[SYSTEM]: ^5If you need any help you can visit our Discord.") end
if _StartError_     then print("^5[DokusCore]^3[SYSTEM]: ^5Http://discord.gg/2gdypBhsye") end
if _StartError_     then print("^5[DokusCore]^2[SYSTEM]: ^6-----------------------------------") end

-- Send messages to the console.
-- Used for relay client side outputs.
RegisterServerEvent('C')
AddEventHandler('C', function(args) print(args[1], args[2], args[3], args[4], args[5]) end)
