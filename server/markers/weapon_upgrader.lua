local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
L1_1 = AddEventHandler
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":framework:ready"
L2_1 = L2_1 .. L3_1
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = getLocalizedText
  L2_2 = "tint_default"
  L1_2 = L1_2(L2_2)
  L0_2[0] = L1_2
  L1_2 = getLocalizedText
  L2_2 = "tint_green"
  L1_2 = L1_2(L2_2)
  L0_2[1] = L1_2
  L1_2 = getLocalizedText
  L2_2 = "tint_gold"
  L1_2 = L1_2(L2_2)
  L0_2[2] = L1_2
  L1_2 = getLocalizedText
  L2_2 = "tint_pink"
  L1_2 = L1_2(L2_2)
  L0_2[3] = L1_2
  L1_2 = getLocalizedText
  L2_2 = "tint_army"
  L1_2 = L1_2(L2_2)
  L0_2[4] = L1_2
  L1_2 = getLocalizedText
  L2_2 = "tint_lspd"
  L1_2 = L1_2(L2_2)
  L0_2[5] = L1_2
  L1_2 = getLocalizedText
  L2_2 = "tint_orange"
  L1_2 = L1_2(L2_2)
  L0_2[6] = L1_2
  L1_2 = getLocalizedText
  L2_2 = "tint_platinum"
  L1_2 = L1_2(L2_2)
  L0_2[7] = L1_2
  L0_1 = L0_2
end
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L4_2 = L4_2[A2_2]
  L4_2 = L4_2.data
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = {}
  L6_2 = pairs
  L7_2 = L4_2.componentsPrices
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = Framework
    L12_2 = L12_2.doesComponentExistsForWeapon
    L13_2 = A3_2
    L14_2 = L10_2
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 then
      L12_2 = Framework
      L12_2 = L12_2.hasPlayerWeaponComponent
      L13_2 = A0_2
      L14_2 = A3_2
      L15_2 = L10_2
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      if L12_2 then
        L12_2 = table
        L12_2 = L12_2.insert
        L13_2 = L5_2
        L14_2 = {}
        L15_2 = getLocalizedText
        L16_2 = "owned_component"
        L17_2 = Framework
        L17_2 = L17_2.getWeaponComponentLabel
        L18_2 = A3_2
        L19_2 = L10_2
        L17_2, L18_2, L19_2 = L17_2(L18_2, L19_2)
        L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
        L14_2.label = L15_2
        L14_2.value = L10_2
        L12_2(L13_2, L14_2)
      else
        L12_2 = table
        L12_2 = L12_2.insert
        L13_2 = L5_2
        L14_2 = {}
        L15_2 = getLocalizedText
        L16_2 = "buy_component"
        L17_2 = Framework
        L17_2 = L17_2.getWeaponComponentLabel
        L18_2 = A3_2
        L19_2 = L10_2
        L17_2 = L17_2(L18_2, L19_2)
        L18_2 = Framework
        L18_2 = L18_2.groupDigits
        L19_2 = L11_2
        L18_2, L19_2 = L18_2(L19_2)
        L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
        L14_2.label = L15_2
        L14_2.value = L10_2
        L12_2(L13_2, L14_2)
      end
    end
  end
  L6_2 = A1_2
  L7_2 = L5_2
  L6_2(L7_2)
end
L2_1 = RegisterServerCallback
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":openComponents"
L3_1 = L3_1 .. L4_1
L4_1 = L1_1
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L4_2 = L4_2[A2_2]
  L4_2 = L4_2.data
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = {}
  L6_2 = pairs
  L7_2 = L4_2.tintsPrices
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = false
    L13_2 = tonumber
    L14_2 = L10_2
    L13_2 = L13_2(L14_2)
    L14_2 = Framework
    L14_2 = L14_2.getFramework
    L14_2 = L14_2()
    if "ESX" == L14_2 then
      L14_2 = ESX
      L14_2 = L14_2.GetPlayerFromId
      L15_2 = A0_2
      L14_2 = L14_2(L15_2)
      L15_2 = L14_2.getWeapon
      L16_2 = A3_2
      L15_2, L16_2 = L15_2(L16_2)
      L17_2 = L16_2.tintIndex
      if L13_2 == L17_2 then
        L17_2 = table
        L17_2 = L17_2.insert
        L18_2 = L5_2
        L19_2 = {}
        L20_2 = getLocalizedText
        L21_2 = "owned_component"
        L22_2 = L0_1
        L22_2 = L22_2[L13_2]
        L20_2 = L20_2(L21_2, L22_2)
        L19_2.label = L20_2
        L19_2.value = L13_2
        L17_2(L18_2, L19_2)
        L12_2 = true
      end
    end
    if not L12_2 then
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L5_2
      L16_2 = {}
      L17_2 = getLocalizedText
      L18_2 = "buy_component"
      L19_2 = L0_1
      L19_2 = L19_2[L13_2]
      L20_2 = Framework
      L20_2 = L20_2.groupDigits
      L21_2 = L11_2
      L20_2, L21_2, L22_2 = L20_2(L21_2)
      L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
      L16_2.label = L17_2
      L16_2.value = L13_2
      L14_2(L15_2, L16_2)
    end
  end
  L6_2 = A1_2
  L7_2 = L5_2
  L6_2(L7_2)
end
L3_1 = RegisterServerCallback
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":openTints"
L4_1 = L4_1 .. L5_1
L5_1 = L2_1
L3_1(L4_1, L5_1)
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Framework
  L2_2 = L2_2.getPlayerWeapons
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L4_1 = RegisterServerCallback
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":getOwnedWeapons"
L5_1 = L5_1 .. L6_1
L6_1 = L3_1
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":buyWeaponTint"
L5_1 = L5_1 .. L6_1
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":buyWeaponTint"
L5_1 = L5_1 .. L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = source
  L4_2 = Framework
  L4_2 = L4_2.getFramework
  L4_2 = L4_2()
  if "ESX" == L4_2 then
    L4_2 = ESX
    L4_2 = L4_2.GetPlayerFromId
    L5_2 = L3_2
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2.setWeaponTint
    if not L5_2 then
      return
    end
    L5_2 = L4_2.getWeapon
    L6_2 = A1_2
    L5_2, L6_2 = L5_2(L6_2)
    L7_2 = L6_2.tintIndex
    if L7_2 == A2_2 then
      L7_2 = notify
      L8_2 = L3_2
      L9_2 = getLocalizedText
      L10_2 = "already_have_tint"
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2)
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      return
    end
  end
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.data
  L4_2 = L4_2.tintsPrices
  L5_2 = tostring
  L6_2 = A2_2
  L5_2 = L5_2(L6_2)
  L4_2 = L4_2[L5_2]
  L5_2 = payInSomeWay
  L6_2 = L3_2
  L7_2 = tonumber
  L8_2 = L4_2
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  if L5_2 then
    L5_2 = Framework
    L5_2 = L5_2.getWeaponLabel
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L6_2 = Framework
    L6_2 = L6_2.giveWeaponTintToPlayerWeapon
    L7_2 = L3_2
    L8_2 = A1_2
    L9_2 = A2_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = notify
    L7_2 = L3_2
    L8_2 = getLocalizedText
    L9_2 = "bought_tint"
    L10_2 = L0_1
    L10_2 = L10_2[A2_2]
    L11_2 = L5_2
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2, L10_2, L11_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L6_2 = Utils
    L6_2 = L6_2.log
    L7_2 = L3_2
    L8_2 = getLocalizedText
    L9_2 = "log_bought_tint"
    L8_2 = L8_2(L9_2)
    L9_2 = getLocalizedText
    L10_2 = "log_bought_tint_description"
    L11_2 = L5_2
    L12_2 = L0_1
    L12_2 = L12_2[A2_2]
    L13_2 = L4_2
    L14_2 = A0_2
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L10_2 = "success"
    L11_2 = "weapon_upgrader"
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L5_2 = notify
    L6_2 = L3_2
    L7_2 = getLocalizedText
    L8_2 = "not_enough_money"
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":buyWeaponComponent"
L5_1 = L5_1 .. L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = source
  L4_2 = canUseMarkerWithLog
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    return
  end
  L4_2 = Framework
  L4_2 = L4_2.hasPlayerWeapon
  L5_2 = L3_2
  L6_2 = A1_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    return
  end
  L4_2 = Framework
  L4_2 = L4_2.getWeaponComponentLabel
  L5_2 = A1_2
  L6_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = Framework
  L5_2 = L5_2.getWeaponLabel
  L6_2 = A1_2
  L5_2 = L5_2(L6_2)
  L6_2 = Framework
  L6_2 = L6_2.hasPlayerWeaponComponent
  L7_2 = L3_2
  L8_2 = A1_2
  L9_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  if L6_2 then
    L6_2 = Framework
    L6_2 = L6_2.removeWeaponComponentFromPlayer
    L7_2 = L3_2
    L8_2 = A1_2
    L9_2 = A2_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = notify
    L7_2 = L3_2
    L8_2 = getLocalizedText
    L9_2 = "removed_component"
    L10_2 = L4_2
    L11_2 = L5_2
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2, L10_2, L11_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L6_2 = Utils
    L6_2 = L6_2.log
    L7_2 = L3_2
    L8_2 = getLocalizedText
    L9_2 = "log_removed_component"
    L8_2 = L8_2(L9_2)
    L9_2 = getLocalizedText
    L10_2 = "log_removed_component_description"
    L11_2 = L4_2
    L12_2 = L5_2
    L13_2 = A0_2
    L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
    L10_2 = "success"
    L11_2 = "weapon_upgrader"
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L6_2 = tonumber
    L7_2 = JobsCreator
    L7_2 = L7_2.Markers
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2.data
    L7_2 = L7_2.componentsPrices
    L7_2 = L7_2[A2_2]
    L6_2 = L6_2(L7_2)
    L7_2 = payInSomeWay
    L8_2 = L3_2
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = Framework
      L7_2 = L7_2.addWeaponComponentToPlayer
      L8_2 = L3_2
      L9_2 = A1_2
      L10_2 = A2_2
      L7_2(L8_2, L9_2, L10_2)
      L7_2 = notify
      L8_2 = L3_2
      L9_2 = getLocalizedText
      L10_2 = "bought_component"
      L11_2 = L4_2
      L12_2 = L5_2
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2, L11_2, L12_2)
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L7_2 = Utils
      L7_2 = L7_2.log
      L8_2 = L3_2
      L9_2 = getLocalizedText
      L10_2 = "log_bought_component"
      L9_2 = L9_2(L10_2)
      L10_2 = getLocalizedText
      L11_2 = "log_bought_component_description"
      L12_2 = L4_2
      L13_2 = L5_2
      L14_2 = A0_2
      L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
      L11_2 = "success"
      L12_2 = "weapon_upgrader"
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    else
      L7_2 = notify
      L8_2 = L3_2
      L9_2 = getLocalizedText
      L10_2 = "not_enough_money"
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2)
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    end
  end
end
L4_1(L5_1, L6_1)
