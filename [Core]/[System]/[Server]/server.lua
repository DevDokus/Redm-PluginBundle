--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-------------------------- DONT CHANGE ANYTHING BELOW --------------------------
--------------------------------------------------------------------------------
-- Check Dependencies.
print("^5[DokusCore]^2[SYSTEM]: ^6---------- Version ".._Version_.."----------")
if (_vConfig_ ~= __vConfig__) then _StartError_ = true end
-- Error for missing Dependencies
if (Plugins.UsableItems == true) and (Plugins.Metabolism == false) then
  print('^5[DokusCore]^1[ERROR]: ^3The plugin UsableItems is depending on the plugin ^1Metabolism^3.')
  print("^5[DokusCore]^1[ERROR]: ^3If you want to use UsableItems, please set Metabolism to ^1true^3. ")
  _StartError_ = true
else
  if not (_StartError_) then print("^5[DokusCore]^2[SYSTEM]: ^5All settings are standing correctly!") end
  if not (_StartError_) then print("^5[DokusCore]^2[SYSTEM]: ^6-----------------------------------") end
end

-- Check what Framework is online
if (Framework.RedEmRP and Framework.Vorp) then
  _StartError_ = true
  print('^5[DokusCore]^1[ERROR]:  ^3You have both the ^1RedEmRP^3 and ^1Vorp^3 Framework selected!')
  print("^5[DokusCore]^1[ERROR]:  ^3Please select only 1 Framework and restart DokusCore!")
elseif (not Framework.RedEmRP and not Framework.Vorp) then
  _StartError_ = true
  print('^5[DokusCore]^1[ERROR]:  ^3You have no Framework selected!')
  print("^5[DokusCore]^1[ERROR]:  ^3Please, go to the config and select a Framework!")
end

-- Report online feat))ures.
if not _StartError_ and Plugins.Metabolism       then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6Metabolism ^3is running") end
if not _StartError_ and Plugins.Stores           then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6Stores ^3is running") end
if not _StartError_ and Plugins.Teleport         then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6Teleport ^3is running") end
if not _StartError_ and Plugins.UsableItems      then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6UsableItems ^3is running") end
if not _StartError_ and Plugins.iMaps            then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6iMaps ^3is running") end
if not _StartError_ and Plugins.BankDoors        then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6BankDoors ^3is running") end
if not _StartError_ and Plugins.ShowCoords       then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6ShowCoords ^3is running") end
if not _StartError_ and Plugins.BountyHunter     then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6BountyHunter ^3is running") end
if not _StartError_ and Plugins.PlayPiano        then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6PlayPiano ^3is running") end
if not _StartError_ and Plugins.Rivers           then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6Rivers ^3is running") end
if not _StartError_ and Plugins.PickableFruits   then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6PickableFruits ^3is running") end
if not _StartError_ and Plugins.PayCheck         then print("^5[DokusCore]^2[ONLINE]: ^3The Feature ^6PayCheck ^3is running") end

-- Report offline features
if not _StartError_ and not Plugins.Metabolism      then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6Metabolism ^3is not running") end
if not _StartError_ and not Plugins.Stores          then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6Stores ^3is not running") end
if not _StartError_ and not Plugins.Teleport        then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6Teleport ^3is not running") end
if not _StartError_ and not Plugins.UsableItems     then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6UsableItems ^3is not running") end
if not _StartError_ and not Plugins.iMaps           then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6iMaps ^3is not running") end
if not _StartError_ and not Plugins.BankDoors       then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6BankDoors ^3is not running") end
if not _StartError_ and not Plugins.ShowCoords      then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6ShowCoords ^3is not running") end
if not _StartError_ and not Plugins.BountyHunter    then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6BountyHunter ^3is not running") end
if not _StartError_ and not Plugins.PlayPiano       then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6PlayPiano ^3is not running") end
if not _StartError_ and not Plugins.Rivers          then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6Rivers ^3is not running") end
if not _StartError_ and not Plugins.PickableFruits  then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6PickableFruits ^3is not running") end
if not _StartError_ and not Plugins.PayCheck        then print("^5[DokusCore]^1[OFFLINE]: ^3The Feature ^6PayCheck ^3is not running") end

-- Config Update Warning
print("^5[DokusCore]^2[SYSTEM]: ^6-----------------------------------")

if (_vConfig_ == __vConfig__) then print("^5[DokusCore]^2[SYSTEM]: ^2You've the latests config version!") end
if (_vConfig_ ~= __vConfig__) then print("^5[DokusCore]^1[SYSTEM]: ^1Your config file is not up to date!!!") end
if (_vConfig_ ~= __vConfig__) then print("^5[DokusCore]^1[SYSTEM]: ^1Download the latest DokusCore from Github.") end
if (_vConfig_ ~= __vConfig__) then print("^5[DokusCore]^1[SYSTEM]: ^1Github.com/devdokus/DokusCore") end
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

-- Send error when the wrong plugins are used when using RedEmRP
if (not (_StartError_) and (Framework.RedEmRP) and not (Framework.Vorp) and (Plugins.BountyHunter))   then print('^5[DokusCore]^1[ERROR]: ^3The plugin ^1BountyHunter^3 is not RedEmRP Ready yet!') end
if (not (_StartError_) and (Framework.RedEmRP) and not (Framework.Vorp) and (Plugins.Metabolism))     then print('^5[DokusCore]^1[ERROR]: ^3The plugin ^1Metabolism^3 is not RedEmRP Ready yet!') end
if (not (_StartError_) and (Framework.RedEmRP) and not (Framework.Vorp) and (Plugins.PayCheck))       then print('^5[DokusCore]^1[ERROR]: ^3The plugin ^1PayCheck^3 is not RedEmRP Ready yet!') end
if (not (_StartError_) and (Framework.RedEmRP) and not (Framework.Vorp) and (Plugins.PickableFruits)) then print('^5[DokusCore]^1[ERROR]: ^3The plugin ^1PickableFruits^3 is not RedEmRP Ready yet!') end
if (not (_StartError_) and (Framework.RedEmRP) and not (Framework.Vorp) and (Plugins.Rivers))         then print('^5[DokusCore]^1[ERROR]: ^3The plugin ^1Rivers^3 is not RedEmRP Ready yet!') end
if (not (_StartError_) and (Framework.RedEmRP) and not (Framework.Vorp) and (Plugins.Stores))         then print('^5[DokusCore]^1[ERROR]: ^3The plugin ^1Stores^3 is not RedEmRP Ready yet!') end
if (not (_StartError_) and (Framework.RedEmRP) and not (Framework.Vorp) and (Plugins.Teleport))       then print('^5[DokusCore]^1[ERROR]: ^3The plugin ^1Teleport^3 is not RedEmRP Ready yet!') end
if (not (_StartError_) and (Framework.RedEmRP) and not (Framework.Vorp) and (Plugins.UsableItems))    then print('^5[DokusCore]^1[ERROR]: ^3The plugin ^1UsableItems^3 is not RedEmRP Ready yet!') end


print("^5[DokusCore]^2[SYSTEM]: ^6-----------------------------------")

















-- Send messages to the console.
-- Used for relay client side outputs.
RegisterServerEvent('C')
AddEventHandler('C', function(args) print(args[1], args[2], args[3], args[4], args[5]) end)
