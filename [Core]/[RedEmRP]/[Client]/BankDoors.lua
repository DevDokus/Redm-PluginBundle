--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
if (((Plugins.BankDoors) and not (_StartError_) and (Framework.RedEmRP))) then

  local BankDoors = {
    -- Armadillo
    3101287960,
    -- BLACKWATER
    531022111,
    -- Saint Denis
    -1477943109,
    2089945615,
    -2136681514,
    1733501235,
    -- Rhodes
    -977211145,
    -1206757990,
    -- Valentine
    -408139633,
    -1652509687,
    2642457609,
    1340831050,
    2343746133,
    334467483,
    3718620420,
    2307914732,
  }

  Citizen.CreateThread(function()
    for i, r in pairs(BankDoors) do
      Citizen.InvokeNative(0xD99229FE93B46286, r, 1, 1, 0, 0, 0, 0)
      Citizen.InvokeNative(0x6BAB9442830C7F53, r, 0)
    end
  end)

end
