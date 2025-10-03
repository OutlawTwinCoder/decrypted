local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = TriggerServerPromise
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":getPlayerWeapons"
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = #L1_2
  if L3_2 > 0 then
    L3_2 = pairs
    L4_2 = L1_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = {}
      L12_2 = getLocalizedText
      L13_2 = "weapon"
      L14_2 = L8_2.label
      L15_2 = L8_2.ammo
      if not L15_2 then
        L15_2 = 0
      end
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L11_2.label = L12_2
      L12_2 = L8_2.name
      L11_2.value = L12_2
      L9_2(L10_2, L11_2)
    end
  else
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = getLocalizedText
    L7_2 = "not_have_any_weapon"
    L6_2 = L6_2(L7_2)
    L5_2.label = L6_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = Utils
  L3_2 = L3_2.openInteractionMenu
  L4_2 = "armory_deposit"
  L5_2 = getLocalizedText
  L6_2 = "armory_deposit"
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = A2_3.value
    if not L3_3 then
      return
    end
    L4_3 = TriggerServerPromise
    L5_3 = Utils
    L5_3 = L5_3.eventsPrefix
    L6_3 = ":depositWeaponInArmory"
    L5_3 = L5_3 .. L6_3
    L6_3 = A0_2
    L7_3 = L3_3
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    if not L4_3 then
      return
    end
    L5_3 = L0_1
    L6_3 = A0_2
    L5_3(L6_3)
  end
  function L8_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Utils
  L2_2 = L2_2.openInteractionMenu
  L3_2 = "armory_choose_weapon"
  L4_2 = getLocalizedText
  L5_2 = "armory_take"
  L4_2 = L4_2(L5_2)
  L5_2 = A1_2
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = A2_3.value
    if not L3_3 then
      return
    end
    L4_3 = TriggerServerPromise
    L5_3 = Utils
    L5_3 = L5_3.eventsPrefix
    L6_3 = ":takeWeaponFromArmory"
    L5_3 = L5_3 .. L6_3
    L6_3 = A0_2
    L7_3 = L3_3
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    if not L4_3 then
      return
    end
    L5_3 = takeWeaponFromArmory
    L6_3 = A0_2
    L5_3(L6_3)
  end
  function L7_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = TriggerServerPromise
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":retrieveArmoryWeapons"
  L2_2 = L2_2 .. L3_2
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = {}
  L4_2 = pairs
  L5_2 = L1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = ESX
    L10_2 = L10_2.GetWeaponLabel
    L11_2 = L9_2.weapon
    L10_2 = L10_2(L11_2)
    L11_2 = L3_2[L10_2]
    if not L11_2 then
      L11_2 = {}
      L3_2[L10_2] = L11_2
      L11_2 = table
      L11_2 = L11_2.insert
      L12_2 = L2_2
      L13_2 = {}
      L13_2.label = L10_2
      L14_2 = L3_2[L10_2]
      L13_2.weapons = L14_2
      L11_2(L12_2, L13_2)
    end
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L3_2[L10_2]
    L13_2 = {}
    L14_2 = getLocalizedText
    L15_2 = "weapon"
    L16_2 = ESX
    L16_2 = L16_2.GetWeaponLabel
    L17_2 = L9_2.weapon
    L16_2 = L16_2(L17_2)
    L17_2 = L9_2.ammo
    L14_2 = L14_2(L15_2, L16_2, L17_2)
    L13_2.label = L14_2
    L14_2 = L9_2.id
    L13_2.value = L14_2
    L11_2(L12_2, L13_2)
  end
  L4_2 = #L2_2
  if 0 == L4_2 then
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L2_2
    L6_2 = {}
    L7_2 = getLocalizedText
    L8_2 = "no_weapons_in_armory"
    L7_2 = L7_2(L8_2)
    L6_2.label = L7_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = Utils
  L4_2 = L4_2.hideInteractionMenu
  L4_2()
  L4_2 = Utils
  L4_2 = L4_2.openInteractionMenu
  L5_2 = "armory_take"
  L6_2 = getLocalizedText
  L7_2 = "armory_take"
  L6_2 = L6_2(L7_2)
  L7_2 = L2_2
  function L8_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = A2_3.weapons
    if not L3_3 then
      return
    end
    L4_3 = L1_1
    L5_3 = A0_2
    L6_3 = L3_3
    L4_3(L5_3, L6_3)
  end
  function L9_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
takeWeaponFromArmory = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = Utils
  L2_2 = L2_2.hideInteractionMenu
  L2_2()
  L2_2 = Utils
  L2_2 = L2_2.openInteractionMenu
  L3_2 = "armory"
  L4_2 = getLocalizedText
  L5_2 = "armory"
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = {}
  L7_2 = getLocalizedText
  L8_2 = "deposit_weapon"
  L7_2 = L7_2(L8_2)
  L6_2.label = L7_2
  L6_2.value = "deposit"
  L7_2 = {}
  L8_2 = getLocalizedText
  L9_2 = "take_weapon"
  L8_2 = L8_2(L9_2)
  L7_2.label = L8_2
  L7_2.value = "take"
  L5_2[1] = L6_2
  L5_2[2] = L7_2
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3
    L3_3 = A2_3.value
    if "deposit" == L3_3 then
      L4_3 = L0_1
      L5_3 = A0_2
      L4_3(L5_3)
    elseif "take" == L3_3 then
      L4_3 = takeWeaponFromArmory
      L5_3 = A0_2
      L4_3(L5_3)
    end
  end
  function L7_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L3_1 = RegisterNetEvent
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":armory:openArmory"
L4_1 = L4_1 .. L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = config
  L1_2 = L1_2.modules
  L1_2 = L1_2.stash
  if "default" ~= L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.callModuleFunc
    L2_2 = "stash"
    L3_2 = "open"
    L4_2 = "armory"
    L5_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
    return
  end
  L1_2 = L2_1
  L2_2 = A0_2
  L1_2(L2_2)
end
L3_1(L4_1, L5_1)
