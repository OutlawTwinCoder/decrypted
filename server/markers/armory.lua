local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  return L1_2
end
L2_1 = exports
L3_1 = "getAllArmoryWeapons"
L4_1 = L1_1
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = ESX
  L3_2 = L3_2.GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.identifier
  L5_2 = {}
  L6_2 = pairs
  L7_2 = L0_1
  L7_2 = L7_2[A1_2]
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = L11_2.identifier
    if L12_2 == L4_2 then
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = L5_2
      L14_2 = L11_2
      L12_2(L13_2, L14_2)
    end
  end
  L6_2 = A2_2
  L7_2 = L5_2
  L6_2(L7_2)
end
L3_1 = RegisterNetEvent
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":armory:getPlayerArmoryWeapons"
L4_1 = L4_1 .. L5_1
L5_1 = L2_1
L3_1(L4_1, L5_1)
function L3_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = MySQL
  L0_2 = L0_2.Async
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT * FROM jobs_armories"
  L2_2 = {}
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = pairs
    L2_3 = A0_3
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = L6_3.marker_id
      L8_3 = L0_1
      L8_3 = L8_3[L7_3]
      if not L8_3 then
        L8_3 = L0_1
        L9_3 = {}
        L8_3[L7_3] = L9_3
      end
      L8_3 = L0_1
      L8_3 = L8_3[L7_3]
      L9_3 = L6_3.id
      L8_3[L9_3] = L6_3
    end
  end
  L0_2(L1_2, L2_2, L3_2)
end
getAllArmoryData = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = canUseMarkerWithLog
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L3_2 = JobsCreator
  L3_2 = L3_2.Markers
  L3_2 = L3_2[A2_2]
  L3_2 = L3_2.data
  if L3_2 then
    L3_2 = JobsCreator
    L3_2 = L3_2.Markers
    L3_2 = L3_2[A2_2]
    L3_2 = L3_2.data
    L3_2 = L3_2.isShared
    if L3_2 then
      goto lbl_22
    end
  end
  L3_2 = nil
  ::lbl_22::
  L4_2 = L0_1
  L4_2 = L4_2[A2_2]
  if L4_2 then
    if L3_2 then
      L4_2 = L1_1
      L5_2 = A2_2
      L4_2 = L4_2(L5_2)
      L5_2 = A1_2
      L6_2 = L4_2
      L5_2(L6_2)
    else
      L4_2 = L2_1
      L5_2 = A0_2
      L6_2 = A2_2
      L7_2 = A1_2
      L4_2(L5_2, L6_2, L7_2)
    end
  else
    L4_2 = A1_2
    L5_2 = {}
    L4_2(L5_2)
  end
end
L4_1 = RegisterServerCallback
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":retrieveArmoryWeapons"
L5_1 = L5_1 .. L6_1
L6_1 = L3_1
L4_1(L5_1, L6_1)
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L6_2 = promise
  L6_2 = L6_2.new
  L6_2 = L6_2()
  L7_2 = MySQL
  L7_2 = L7_2.Async
  L7_2 = L7_2.insert
  L8_2 = "INSERT INTO jobs_armories(weapon, components, ammo, tint, marker_id, identifier) VALUES(@weaponName, @weaponComponents, @weaponAmmo, @weaponTint, @markerId, @identifier);"
  L9_2 = {}
  L9_2["@markerId"] = A0_2
  L9_2["@weaponName"] = A2_2
  L10_2 = A3_2 or L10_2
  if not A3_2 then
    L10_2 = 0
  end
  L9_2["@weaponAmmo"] = L10_2
  L10_2 = A5_2 or L10_2
  if not A5_2 then
    L10_2 = 0
  end
  L9_2["@weaponTint"] = L10_2
  if A4_2 then
    L10_2 = json
    L10_2 = L10_2.encode
    L11_2 = A4_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      goto lbl_29
    end
  end
  L10_2 = "{}"
  ::lbl_29::
  L9_2["@weaponComponents"] = L10_2
  L9_2["@identifier"] = A1_2
  function L10_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 > 0 then
      L2_3 = A0_2
      L1_3 = L0_1
      L1_3 = L1_3[L2_3]
      if not L1_3 then
        L2_3 = A0_2
        L1_3 = L0_1
        L3_3 = {}
        L1_3[L2_3] = L3_3
      end
      L2_3 = A0_2
      L1_3 = L0_1
      L1_3 = L1_3[L2_3]
      L2_3 = {}
      L3_3 = A2_2
      L2_3.weapon = L3_3
      L3_3 = A3_2
      if not L3_3 then
        L3_3 = 0
      end
      L2_3.ammo = L3_3
      L3_3 = A5_2
      if not L3_3 then
        L3_3 = 0
      end
      L2_3.tint = L3_3
      L3_3 = A4_2
      L2_3.components = L3_3
      L3_3 = A1_2
      L2_3.identifier = L3_3
      L2_3.id = A0_3
      L1_3[A0_3] = L2_3
      L1_3 = L6_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = true
      L1_3(L2_3, L3_3)
    else
      L1_3 = L6_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = false
      L1_3(L2_3, L3_3)
    end
  end
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = Citizen
  L7_2 = L7_2.Await
  L8_2 = L6_2
  return L7_2(L8_2)
end
L5_1 = exports
L6_1 = "addWeaponToArmory"
L7_1 = L4_1
L5_1(L6_1, L7_1)
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L4_2 = canUseMarkerWithLog
  L5_2 = A0_2
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    return
  end
  L4_2 = ESX
  L4_2 = L4_2.GetPlayerFromId
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2.getWeapon
  L6_2 = A3_2
  L5_2, L6_2 = L5_2(L6_2)
  if not L6_2 then
    L7_2 = notify
    L8_2 = L4_2.source
    L9_2 = getLocalizedText
    L10_2 = "you_dont_have_weapon"
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L9_2(L10_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    return
  end
  L7_2 = L4_2.removeWeapon
  L8_2 = A3_2
  L7_2(L8_2)
  L7_2 = L4_1
  L8_2 = A2_2
  L9_2 = L4_2.identifier
  L10_2 = A3_2
  L11_2 = L6_2.ammo
  L12_2 = L6_2.components
  L13_2 = L6_2.tintIndex
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  if not L7_2 then
    L8_2 = A1_2
    L9_2 = false
    L8_2(L9_2)
    return
  end
  L8_2 = notify
  L9_2 = L4_2.source
  L10_2 = getLocalizedText
  L11_2 = "you_deposited_weapon"
  L12_2 = L6_2.label
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2(L11_2, L12_2)
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L8_2 = Utils
  L8_2 = L8_2.log
  L9_2 = A0_2
  L10_2 = getLocalizedText
  L11_2 = "log_deposited_weapon"
  L10_2 = L10_2(L11_2)
  L11_2 = getLocalizedText
  L12_2 = "log_deposited_weapon_description"
  L13_2 = ESX
  L13_2 = L13_2.GetWeaponLabel
  L14_2 = A3_2
  L13_2 = L13_2(L14_2)
  L14_2 = A3_2
  L15_2 = L6_2.ammo
  if not L15_2 then
    L15_2 = 0
  end
  L16_2 = A2_2
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L12_2 = "success"
  L13_2 = "armory"
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = A1_2
  L9_2 = true
  L8_2(L9_2)
end
L6_1 = RegisterServerCallback
L7_1 = Utils
L7_1 = L7_1.eventsPrefix
L8_1 = ":depositWeaponInArmory"
L7_1 = L7_1 .. L8_1
L8_1 = L5_1
L6_1(L7_1, L8_1)
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = promise
  L2_2 = L2_2.new
  L2_2 = L2_2()
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L3_2 = L0_1
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2[A1_2]
    if L3_2 then
      L3_2 = MySQL
      L3_2 = L3_2.Async
      L3_2 = L3_2.execute
      L4_2 = "DELETE FROM jobs_armories WHERE id = @weaponId"
      L5_2 = {}
      L5_2["@weaponId"] = A1_2
      function L6_2(A0_3)
        local L1_3, L2_3, L3_3
        if A0_3 > 0 then
          L2_3 = A0_2
          L1_3 = L0_1
          L1_3 = L1_3[L2_3]
          L2_3 = A1_2
          L1_3[L2_3] = nil
          L1_3 = L2_2
          L2_3 = L1_3
          L1_3 = L1_3.resolve
          L3_3 = true
          L1_3(L2_3, L3_3)
        else
          L1_3 = L2_2
          L2_3 = L1_3
          L1_3 = L1_3.resolve
          L3_3 = false
          L1_3(L2_3, L3_3)
        end
      end
      L3_2(L4_2, L5_2, L6_2)
    else
      L3_2 = print
      L4_2 = format
      L5_2 = "Couldn't find weapon ID %d in marker ID %d"
      L6_2 = A1_2
      L7_2 = A0_2
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
      L3_2(L4_2, L5_2, L6_2, L7_2)
      L4_2 = L2_2
      L3_2 = L2_2.resolve
      L5_2 = false
      L3_2(L4_2, L5_2)
    end
  else
    L3_2 = print
    L4_2 = format
    L5_2 = "Couldn't find armory marker ID %d"
    L6_2 = A0_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2)
    L4_2 = L2_2
    L3_2 = L2_2.resolve
    L5_2 = false
    L3_2(L4_2, L5_2)
  end
  L3_2 = Citizen
  L3_2 = L3_2.Await
  L4_2 = L2_2
  return L3_2(L4_2)
end
L7_1 = exports
L8_1 = "removeWeaponFromArmory"
L9_1 = L6_1
L7_1(L8_1, L9_1)
function L7_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L4_2 = canUseMarkerWithLog
  L5_2 = A0_2
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    return
  end
  L4_2 = L0_1
  L4_2 = L4_2[A2_2]
  L4_2 = L4_2[A3_2]
  if L4_2 then
    L5_2 = ESX
    L5_2 = L5_2.GetPlayerFromId
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L6_2 = L4_2.weapon
    L7_2 = L5_2.hasWeapon
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if not L7_2 then
      L7_2 = L6_1
      L8_2 = A2_2
      L9_2 = A3_2
      L7_2 = L7_2(L8_2, L9_2)
      if L7_2 then
        L8_2 = JobsCreator
        L8_2 = L8_2.Markers
        L8_2 = L8_2[A2_2]
        L8_2 = L8_2.data
        if L8_2 then
          L8_2 = JobsCreator
          L8_2 = L8_2.Markers
          L8_2 = L8_2[A2_2]
          L8_2 = L8_2.data
          L8_2 = L8_2.refillOnTake
          if L8_2 then
            L8_2 = L5_2.addWeapon
            L9_2 = L6_2
            L10_2 = 250
            L8_2(L9_2, L10_2)
        end
        else
          L8_2 = L5_2.addWeapon
          L9_2 = L6_2
          L10_2 = L4_2.ammo
          if not L10_2 then
            L10_2 = 0
          end
          L8_2(L9_2, L10_2)
        end
        L8_2 = L5_2.setWeaponTint
        if L8_2 then
          L8_2 = L5_2.setWeaponTint
          L9_2 = L6_2
          L10_2 = L4_2.tint
          L8_2(L9_2, L10_2)
        end
        L8_2 = L4_2.components
        if L8_2 then
          L8_2 = type
          L9_2 = L4_2.components
          L8_2 = L8_2(L9_2)
          if "table" == L8_2 then
            L8_2 = L4_2.components
            if L8_2 then
              goto lbl_76
            end
          end
          L8_2 = json
          L8_2 = L8_2.decode
          L9_2 = L4_2.components
          L8_2 = L8_2(L9_2)
          ::lbl_76::
          L9_2 = pairs
          L10_2 = L8_2
          L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
          for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
            L15_2 = L5_2.addWeaponComponent
            L16_2 = L6_2
            L17_2 = L14_2
            L15_2(L16_2, L17_2)
          end
        end
        L8_2 = Utils
        L8_2 = L8_2.log
        L9_2 = A0_2
        L10_2 = getLocalizedText
        L11_2 = "log_took_weapon"
        L10_2 = L10_2(L11_2)
        L11_2 = getLocalizedText
        L12_2 = "log_took_weapon_description"
        L13_2 = ESX
        L13_2 = L13_2.GetWeaponLabel
        L14_2 = L6_2
        L13_2 = L13_2(L14_2)
        L14_2 = L6_2
        L15_2 = L4_2.ammo
        if not L15_2 then
          L15_2 = 0
        end
        L16_2 = A2_2
        L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
        L12_2 = "success"
        L13_2 = "armory"
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
        L8_2 = notify
        L9_2 = L5_2.source
        L10_2 = getLocalizedText
        L11_2 = "you_took_weapon"
        L12_2 = ESX
        L12_2 = L12_2.GetWeaponLabel
        L13_2 = L6_2
        L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L12_2(L13_2)
        L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
        L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
        L8_2 = A1_2
        L9_2 = true
        L8_2(L9_2)
      else
        L8_2 = A1_2
        L9_2 = false
        L8_2(L9_2)
      end
    else
      L7_2 = notify
      L8_2 = L5_2.source
      L9_2 = getLocalizedText
      L10_2 = "you_already_have_that_weapon"
      L11_2 = ESX
      L11_2 = L11_2.GetWeaponLabel
      L12_2 = L6_2
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2(L12_2)
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
  else
    L5_2 = A1_2
    L6_2 = false
    L5_2(L6_2)
  end
end
L8_1 = RegisterServerCallback
L9_1 = Utils
L9_1 = L9_1.eventsPrefix
L10_1 = ":takeWeaponFromArmory"
L9_1 = L9_1 .. L10_1
L10_1 = L7_1
L8_1(L9_1, L10_1)
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = ESX
  L2_2 = L2_2.GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2
  L4_2 = L2_2.getLoadout
  L4_2 = L4_2()
  L3_2(L4_2)
end
L9_1 = RegisterServerCallback
L10_1 = Utils
L10_1 = L10_1.eventsPrefix
L11_1 = ":getPlayerWeapons"
L10_1 = L10_1 .. L11_1
L11_1 = L8_1
L9_1(L10_1, L11_1)
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Utils
  L3_2 = L3_2.isAllowed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Async
    L3_2 = L3_2.execute
    L4_2 = "DELETE FROM jobs_armories WHERE marker_id=@markerId"
    L5_2 = {}
    L5_2["@markerId"] = A2_2
    function L6_2(A0_3)
      local L1_3, L2_3, L3_3
      if A0_3 > 0 then
        L2_3 = A2_2
        L1_3 = L0_1
        L3_3 = {}
        L1_3[L2_3] = L3_3
        L1_3 = {}
        L1_3.isSuccessful = true
        L1_3.message = "Successful"
        L2_3 = A1_2
        L3_3 = L1_3
        L2_3(L3_3)
      else
        L1_3 = {}
        L1_3.isSuccessful = false
        L1_3.message = "Couldn't delete armory inventory or it was empty"
        L2_3 = A1_2
        L3_3 = L1_3
        L2_3(L3_3)
      end
    end
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = {}
    L3_2.isSuccessful = false
    L3_2.message = "Couldn't delete armory inventory (Not allowed)"
    L4_2 = A1_2
    L5_2 = L3_2
    L4_2(L5_2)
  end
end
L10_1 = RegisterServerCallback
L11_1 = Utils
L11_1 = L11_1.eventsPrefix
L12_1 = ":deleteArmoryInventory"
L11_1 = L11_1 .. L12_1
L12_1 = L9_1
L10_1(L11_1, L12_1)
