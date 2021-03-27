
if Plugins.PlayPiano and not _StartError_ then

  --------------------------------------------------------------------------------
  ----------------------------------- DevDokus -----------------------------------
  --------------------------------------------------------------------------------
  function Wait(args) Citizen.Wait(args) end
  --------------------------------------------------------------------------------
  -- Varables
  local InRange = false
  local IsPlaying = false
  local Location = nil
  RegisterNetEvent('DevDokus:PlayPiano:C:ActPiano')
  --------------------------------------------------------------------------------
  -- Core
  --------------------------------------------------------------------------------
  -- Check player disctance from coords.
  Citizen.CreateThread(function()
    while true do Wait(2000)
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    for k, v in pairs(PlayPiano.Pianos) do
      local x, y, z = v.x, v.y, v.z
      local dist = GetDistanceBetweenCoords(coords, x, y, z)

      -- Set the current closest piano to the player
      if Location == nil and (dist <= 5) then Location = v.ID end
      if Location == v.ID then

        if (dist > 2) and InRange then
          InRange = false
          Location = nil
        end

        if (dist <= 2) and not InRange then
          Location = v.ID
          InRange = true
          TriggerEvent('DevDokus:PlayPiano:C:ActPiano', ped, x, y, z, v.h)
        end

      end
    end
  end
end)



AddEventHandler('DevDokus:PlayPiano:C:ActPiano', function(ped, x, y, z, h)
  while InRange do Wait(1)
  local Space = IsControlJustPressed(0, Keys['SPACEBAR'])
  local F = IsControlJustPressed(0, Keys['F'])

  if not IsPlaying then DrawInfo('Press [~e~Space~q~] to play the piano', 0.5, 0.95, 0.75) end
  if IsPlaying then DrawInfo('Press [~e~F~q~] to stop playing', 0.5, 0.95, 0.75) end

  if Space and not IsPlaying then
    IsPlaying = true
    local male = IsPedMale(ped)
    local hash = nil

    if male then hash = GetHashKey('PROP_HUMAN_PIANO')
    else hash = GetHashKey('PROP_HUMAN_ABIGAIL_PIANO') end

    Wait(500)
    TaskStartScenarioAtPosition(ped, hash, x, y, z, h, 0, true, true, 0, true)
  end

  if F and IsPlaying then
    Location = nil
    IsPlaying = false
    ClearPedTasks(GetPlayerPed())
  end
end
end)




















--------------------------------------------------------------------------------
end
