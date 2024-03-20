--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
 Citizen.CreateThread(function() Wait(1000)
   if (((Plugins.PayCheck) and not (_StartError_) and (Framework.Vorp) and not (Framework.RedEmRP))) then
     Citizen.CreateThread(function()
       while true do
         Wait(PayCheck.CoolDown * 60000)
         TriggerServerEvent('DevDokus:PayCheck:S:PayUser')
       end
     end)
   end
 end)
--------------------------------------------------------------------------------
