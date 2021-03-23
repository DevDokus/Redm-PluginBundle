--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

 -- ==== Will be used in a later update ==== --
 -- Keep an eye on Github for future updates! --

--------------------------------------------------------------------------------


-- local VorpCore = {}
-- TriggerEvent("getCore", function(core) VorpCore = core end)
-- VORP = exports.vorp_core:vorpAPI()
-- --------------------------------------------------------------------------------
-- -- Event Register
-- RegisterServerEvent('DevDokus:Metabolism:S:StartStatus')
-- --------------------------------------------------------------------------------
-- AddEventHandler('DevDokus:Metabolism:S:StartStatus', function()
--   if VorpCore ~= nil then
--     TriggerEvent("vorp:getCharacter", source, function(Data)
--       Ident = Data.identifier
--       exports.ghmattimysql:execute("Select * from `characters` where `identifier` = @ident", {
--         ['@ident'] = Ident
--       }, function(cb)
--         if cb[1] ~= nil then
--           local Status = json.decode(cb[1].status)
--           TriggerClientEvent('DevDokus:Metabolism:C:SetFirstStatus', -1, Status)
--         end
--       end)
--     end)
--   end
-- end)
--










--------------------------------------------------------------------------------
