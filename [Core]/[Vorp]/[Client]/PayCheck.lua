--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
 Citizen.CreateThread(function() Wait(500)
   if Plugins.PayCheck and not _StartError_ then
     Citizen.CreateThread(function()
       while true do
         Wait(PayCheck.CoolDown * 60000)
         TriggerServerEvent('DevDokus:PayCheck:S:PayUser')
       end
     end)
   end
 end)
--------------------------------------------------------------------------------
