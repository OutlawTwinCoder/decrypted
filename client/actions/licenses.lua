local L0_1, L1_1, L2_1, L3_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = Utils
  L4_2 = L4_2.getPlayerServerIdFromPed
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = Framework
    L4_2 = L4_2.getClosestPlayer
    L5_2 = true
    L6_2 = 3.0
    L4_2 = L4_2(L5_2, L6_2)
  end
  if not L4_2 then
    L5_2 = notifyClient
    L6_2 = getLocalizedText
    L7_2 = "actions:no_player_found"
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L6_2(L7_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    return
  end
  L5_2 = config
  L5_2 = L5_2.useJSFourIdCard
  if L5_2 then
    L5_2 = TriggerServerEvent
    L6_2 = EXTERNAL_EVENTS_NAMES
    L6_2 = L6_2["jsfour-idcard:open"]
    L7_2 = L4_2
    L8_2 = GetPlayerServerId
    L9_2 = PlayerId
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L9_2()
    L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    L9_2 = A1_2
    L5_2(L6_2, L7_2, L8_2, L9_2)
    L5_2 = Utils
    L5_2 = L5_2.hideInteractionMenu
    L5_2()
    return
  end
  L5_2 = Framework
  L5_2 = L5_2.getPlayerLicenses
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = {}
  L7_2 = Framework
  L7_2 = L7_2.getFramework
  L7_2 = L7_2()
  if "ESX" == L7_2 then
    L7_2 = pairs
    L8_2 = L5_2
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
    for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
      L13_2 = config
      L13_2 = L13_2.licenses
      L13_2 = L13_2[A1_2]
      L14_2 = L12_2.type
      L13_2 = L13_2[L14_2]
      if L13_2 then
        L13_2 = table
        L13_2 = L13_2.insert
        L14_2 = L6_2
        L15_2 = {}
        L16_2 = getLocalizedText
        L17_2 = "actions:license"
        L18_2 = L12_2.label
        L16_2 = L16_2(L17_2, L18_2)
        L15_2.label = L16_2
        L13_2(L14_2, L15_2)
      end
    end
  else
    L7_2 = Framework
    L7_2 = L7_2.getFramework
    L7_2 = L7_2()
    if "QB-core" == L7_2 then
      L7_2 = pairs
      L8_2 = L5_2
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L13_2 = config
        L13_2 = L13_2.licenses
        L13_2 = L13_2[A1_2]
        L13_2 = L13_2[L11_2]
        if L13_2 then
          L13_2 = table
          L13_2 = L13_2.insert
          L14_2 = L6_2
          L15_2 = {}
          L16_2 = getLocalizedText
          L17_2 = "actions:license"
          L18_2 = Utils
          L18_2 = L18_2.firstToUpper
          L19_2 = L11_2
          L18_2, L19_2 = L18_2(L19_2)
          L16_2 = L16_2(L17_2, L18_2, L19_2)
          L15_2.label = L16_2
          L13_2(L14_2, L15_2)
        end
      end
    end
  end
  L7_2 = #L6_2
  if 0 == L7_2 then
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L6_2
    L9_2 = {}
    L10_2 = getLocalizedText
    L11_2 = "actions:no_license_found"
    L10_2 = L10_2(L11_2)
    L9_2.label = L10_2
    L7_2(L8_2, L9_2)
  end
  L7_2 = Utils
  L7_2 = L7_2.openInteractionMenu
  L8_2 = "actions_license_menu_check"
  L9_2 = getLocalizedText
  L10_2 = "actions:licenses"
  L9_2 = L9_2(L10_2)
  L10_2 = L6_2
  L11_2 = nil
  L7_2(L8_2, L9_2, L10_2, L11_2)
end
L1_1 = RegisterNetEvent
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":actions:checkPlayerLicenses"
L2_1 = L2_1 .. L3_1
L3_1 = L0_1
L1_1(L2_1, L3_1)
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = promise
  L0_2 = L0_2.new
  L0_2 = L0_2()
  L1_2 = TriggerServerCallback
  L2_2 = "esx_license:getLicensesList"
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L0_2
    L2_3 = L1_3
    L1_3 = L1_3.resolve
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2)
  L1_2 = Citizen
  L1_2 = L1_2.Await
  L2_2 = L0_2
  return L1_2(L2_2)
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = Framework
  L4_2 = L4_2.getFramework
  L4_2 = L4_2()
  if "ESX" == L4_2 then
    L4_2 = L1_1
    L4_2 = L4_2()
    L3_2 = L4_2
  else
    L4_2 = Framework
    L4_2 = L4_2.getFramework
    L4_2 = L4_2()
    if "QB-core" == L4_2 then
      L4_2 = config
      L4_2 = L4_2.licenses
      L3_2 = L4_2[A1_2]
    end
  end
  L4_2 = Framework
  L4_2 = L4_2.getPlayerLicenses
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = Framework
  L6_2 = L6_2.getFramework
  L6_2 = L6_2()
  if "ESX" == L6_2 then
    L6_2 = pairs
    L7_2 = L3_2
    L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
    for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
      L12_2 = config
      L12_2 = L12_2.licenses
      L12_2 = L12_2[A1_2]
      L13_2 = L11_2.type
      L12_2 = L12_2[L13_2]
      if L12_2 then
        L12_2 = false
        L13_2 = pairs
        L14_2 = L4_2
        L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
        for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
          L19_2 = L18_2.type
          L20_2 = L11_2.type
          if L19_2 == L20_2 then
            L12_2 = true
            break
          end
        end
        if L12_2 then
          L13_2 = "[+]"
          if L13_2 then
            goto lbl_64
          end
        end
        L13_2 = "[-]"
        ::lbl_64::
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = L5_2
        L16_2 = {}
        L17_2 = L13_2
        L18_2 = L11_2.label
        L17_2 = L17_2 .. L18_2
        L16_2.label = L17_2
        L17_2 = L11_2.type
        L16_2.type = L17_2
        L16_2.owned = L12_2
        L17_2 = L11_2.label
        L16_2.licenseLabel = L17_2
        L14_2(L15_2, L16_2)
      end
    end
  else
    L6_2 = Framework
    L6_2 = L6_2.getFramework
    L6_2 = L6_2()
    if "QB-core" == L6_2 then
      L6_2 = pairs
      L7_2 = L3_2
      L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
      for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
        L12_2 = L4_2[L10_2]
        if nil ~= L12_2 then
          L12_2 = false
          L13_2 = pairs
          L14_2 = L4_2
          L13_2, L14_2, L15_2, L16_2 = L13_2(L14_2)
          for L17_2, L18_2 in L13_2, L14_2, L15_2, L16_2 do
            if L10_2 == L17_2 and L18_2 then
              L12_2 = true
              break
            end
          end
          if L12_2 then
            L13_2 = "[+]"
            if L13_2 then
              goto lbl_115
            end
          end
          L13_2 = "[-]"
          ::lbl_115::
          L14_2 = Utils
          L14_2 = L14_2.firstToUpper
          L15_2 = L10_2
          L14_2 = L14_2(L15_2)
          L15_2 = table
          L15_2 = L15_2.insert
          L16_2 = L5_2
          L17_2 = {}
          L18_2 = L13_2
          L19_2 = L14_2
          L18_2 = L18_2 .. L19_2
          L17_2.label = L18_2
          L17_2.type = L10_2
          L17_2.owned = L12_2
          L17_2.licenseLabel = L14_2
          L15_2(L16_2, L17_2)
        end
      end
    end
  end
  L6_2 = Utils
  L6_2 = L6_2.openInteractionMenu
  L7_2 = "license_give_remove_menu"
  L8_2 = getLocalizedText
  L9_2 = "actions_menu"
  L8_2 = L8_2(L9_2)
  L9_2 = L5_2
  function L10_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L3_3 = A2_3.type
    L4_3 = A2_3.owned
    L5_3 = A2_3.licenseLabel
    if L4_3 then
      L6_3 = Framework
      L6_3 = L6_3.removeLicenseFromPlayer
      L7_3 = A0_2
      L8_3 = L3_3
      L6_3(L7_3, L8_3)
      L6_3 = notifyClient
      L7_3 = getLocalizedText
      L8_3 = "actions:removed_license"
      L9_3 = L5_3
      L7_3, L8_3, L9_3 = L7_3(L8_3, L9_3)
      L6_3(L7_3, L8_3, L9_3)
    else
      L6_3 = Framework
      L6_3 = L6_3.giveLicenseToPlayer
      L7_3 = A0_2
      L8_3 = L3_3
      L6_3(L7_3, L8_3)
      L6_3 = notifyClient
      L7_3 = getLocalizedText
      L8_3 = "actions:gave_license"
      L9_3 = L5_3
      L7_3, L8_3, L9_3 = L7_3(L8_3, L9_3)
      L6_3(L7_3, L8_3, L9_3)
    end
    L6_3 = L2_1
    L7_3 = A0_2
    L8_3 = A1_2
    L6_3(L7_3, L8_3)
  end
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = Utils
  L1_2 = L1_2.openInteractionMenu
  L2_2 = "actions_license_menu"
  L3_2 = getLocalizedText
  L4_2 = "actions_menu"
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = {}
  L6_2 = getLocalizedText
  L7_2 = "actions:license:give_remove"
  L6_2 = L6_2(L7_2)
  L5_2.label = L6_2
  L5_2.value = "license_give_remove"
  L6_2 = {}
  L7_2 = getLocalizedText
  L8_2 = "actions:check_licenses"
  L7_2 = L7_2(L8_2)
  L6_2.label = L7_2
  L6_2.value = "checklicenses"
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  function L5_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L3_3 = A2_3.value
    if "license_give_remove" == L3_3 then
      L4_3 = PlayerPedId
      L4_3 = L4_3()
      L5_3 = GetEntityCoords
      L6_3 = L4_3
      L5_3 = L5_3(L6_3)
      L6_3 = Framework
      L6_3 = L6_3.getClosestPlayer
      L7_3 = true
      L8_3 = 3.0
      L6_3 = L6_3(L7_3, L8_3)
      if not L6_3 then
        L7_3 = notifyClient
        L8_3 = getLocalizedText
        L9_3 = "actions:no_player_found"
        L8_3, L9_3 = L8_3(L9_3)
        L7_3(L8_3, L9_3)
        return
      end
      L7_3 = L2_1
      L8_3 = L6_3
      L9_3 = A0_2
      L7_3(L8_3, L9_3)
    elseif "checklicenses" == L3_3 then
      L4_3 = TriggerEvent
      L5_3 = Utils
      L5_3 = L5_3.eventsPrefix
      L6_3 = ":actions:checkPlayerLicenses"
      L5_3 = L5_3 .. L6_3
      L6_3 = nil
      L7_3 = A0_2
      L4_3(L5_3, L6_3, L7_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
openLicenseMenu = L3_1
