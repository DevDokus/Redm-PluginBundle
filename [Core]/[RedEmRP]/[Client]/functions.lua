--------------------------------------------------------------------------------
----------------------------------- DevDokus -----------------------------------
--------------------------------------------------------------------------------
if not ((_StartError_) and (Framework.Vorp)) then
  function DrawCircle(x, y, z, r, g, b, a)
    Citizen.InvokeNative(0x2A32FAA57B937173, 0x94FDAE17, x, y, z - 0.95, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.25, r, g, b, a, 0, 0, 2, 0, 0, 0, 0)
  end

  function Notify(text, time)
    TriggerEvent("vorp:TipRight", text, time)
  end

  function DrawInfo(text, x, y, size)
    local xc = x / 1.0;
    local yc = y / 1.0;
    SetScriptGfxDrawOrder(3)
    SetTextScale(size, size)
    SetTextCentre(true)
    SetTextColor(255, 255, 255, 100)
    SetTextFontForCurrentCommand(6)
    DisplayText(CreateVarString(10, 'LITERAL_STRING', text), xc, yc)
    SetScriptGfxDrawOrder(3)
  end

  function DrawCoords(text, x, y, size)
    local xc = x / 1.0;
    local yc = y / 1.0;
    SetScriptGfxDrawOrder(3)
    SetTextScale(size, size)
    SetTextCentre(true)
    SetTextColor(255, 255, 255, 100)
    SetTextFontForCurrentCommand(6)
    DisplayText(CreateVarString(10, 'LITERAL_STRING', text), xc, yc)
    SetScriptGfxDrawOrder(3)
  end

  function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, center)
    local str = CreateVarString(10, "LITERAL_STRING", str, Citizen.ResultAsLong())
    SetTextScale(w, h)
    SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
    SetTextCentre(center)
    if enableShadow then SetTextDropshadow(1, 0, 0, 0, 255) end
    Citizen.InvokeNative(0xADA9255D, 10);
    DisplayText(str, x, y)
  end

  -- Spawn a NPC model
  function SpawnNPC(_, x, y, z, heading)
    local _ = GetHashKey(_)
    while not HasModelLoaded(_) do RequestModel(_) Wait(1) end
    local NCP = Citizen.InvokeNative(0xD49F9B0955C367DE, _, x, y, z, heading, 0, 0, 0, Citizen.ResultAsInteger())
    Citizen.InvokeNative(0x1794B4FCC84D812F, NCP, 1) -- SetEntityVisible
    Citizen.InvokeNative(0x0DF7692B1D9E7BA7, NCP, 255, false) -- SetEntityAlpha
    Citizen.InvokeNative(0x283978A15512B2FE, NCP, true) -- Invisible without
    Citizen.InvokeNative(0x7D9EFB7AD6B19754, NCP, true) -- FreezeEntityPosition
    Citizen.InvokeNative(0xDC19C288082E586E, NCP, 1, 1) --SetEntityAsMissionEntity
    Citizen.InvokeNative(0x919BE13EED931959, NPC, - 1) -- TaskStandStill
    Wait(100)
    Citizen.InvokeNative(0xC80A74AC829DDD92, npc, _) -- SET_PED_RELATIONSHIP_GROUP_HASH
    Citizen.InvokeNative(0x4AD96EF928BD4F9A, NCP) -- SetModelAsNoLongerNeeded
    return NCP
  end

  function RoundNumber(n, d)
    local m = 10^(d or 0)
    return math.floor(n * m + 0.5) / m
  end

  RegisterNetEvent('DokusCore:ProgressBars')
  AddEventHandler('DokusCore:ProgressBars', function(text, x, y, size, time)
    local Text, run, count, loop, End = nil, true, 0, 1, ((time - 2) / 2)
    while run do Wait(1)
      if (count <= 15) then Text = (text..'.') end
      if ((count > 15) and (count <= 30)) then Text = (text..'..') end
      if ((count > 30) and (count <= 45)) then Text = (text..'...') end
      if ((count > 60) and (loop ~= End)) then count = 0 loop = (loop + 1) end
      if (loop >= End) then count = 0 loop = 1 run = false end
      DrawInfo(Text, x, y, size)
      count = (count + 1)
    end
  end)
end
