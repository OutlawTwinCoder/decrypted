local L0_1, L1_1, L2_1, L3_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = TriggerServerPromise
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":openComponents"
  L3_2 = L3_2 .. L4_2
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = Utils
  L3_2 = L3_2.openInteractionMenu
  L4_2 = "weapon_upgrader_components"
  L5_2 = getLocalizedText
  L6_2 = "weapon_upgrader"
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L3_3 = A2_3.value
    if not L3_3 then
      return
    end
    L4_3 = TriggerServerEvent
    L5_3 = Utils
    L5_3 = L5_3.eventsPrefix
    L6_3 = ":buyWeaponComponent"
    L5_3 = L5_3 .. L6_3
    L6_3 = A0_2
    L7_3 = A1_2
    L8_3 = L3_3
    L4_3(L5_3, L6_3, L7_3, L8_3)
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
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = TriggerServerPromise
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":openTints"
  L3_2 = L3_2 .. L4_2
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = Utils
  L3_2 = L3_2.openInteractionMenu
  L4_2 = "weapon_upgrader_tints"
  L5_2 = getLocalizedText
  L6_2 = "weapon_upgrader"
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L3_3 = A2_3.value
    if not L3_3 then
      return
    end
    L4_3 = TriggerServerEvent
    L5_3 = Utils
    L5_3 = L5_3.eventsPrefix
    L6_3 = ":buyWeaponTint"
    L5_3 = L5_3 .. L6_3
    L6_3 = A0_2
    L7_3 = A1_2
    L8_3 = L3_3
    L4_3(L5_3, L6_3, L7_3, L8_3)
  end
  function L8_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
    openedMenu = nil
  end
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = getLocalizedText
  L5_2 = "components"
  L4_2 = L4_2(L5_2)
  L3_2.label = L4_2
  L3_2.value = "components"
  L4_2 = {}
  L5_2 = getLocalizedText
  L6_2 = "tints"
  L5_2 = L5_2(L6_2)
  L4_2.label = L5_2
  L4_2.value = "tints"
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L3_2 = Utils
  L3_2 = L3_2.openInteractionMenu
  L4_2 = "weapon_upgrader"
  L5_2 = getLocalizedText
  L6_2 = "weapon_upgrader"
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = A2_3.value
    if "components" == L3_3 then
      L4_3 = L0_1
      L5_3 = A0_2
      L6_3 = A1_2
      L4_3(L5_3, L6_3)
    elseif "tints" == L3_3 then
      L4_3 = L1_1
      L5_3 = A0_2
      L6_3 = A1_2
      L4_3(L5_3, L6_3)
    end
  end
  function L8_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
    openedMenu = nil
  end
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = INVENTORY_TO_USE
  if "ox_inventory" == L1_2 then
    L1_2 = notifyClient
    L2_2 = "Weapon upgrader can't be used with OX inventory"
    L1_2(L2_2)
    L1_2 = notifyClient
    L2_2 = "To upgrade weapons, use the ox_inventory and not Jobs Creator"
    L1_2(L2_2)
    return
  end
  L1_2 = Utils
  L1_2 = L1_2.hideInteractionMenu
  L1_2()
  L1_2 = TriggerServerPromise
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":getOwnedWeapons"
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = {}
    L12_2 = L8_2.label
    L11_2.label = L12_2
    L12_2 = L8_2.name
    L11_2.value = L12_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = Utils
  L3_2 = L3_2.openInteractionMenu
  L4_2 = "weapon_upgrader_owned_weapons"
  L5_2 = getLocalizedText
  L6_2 = "weapon_upgrader"
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = A2_3.value
    if not L3_3 then
      return
    end
    L4_3 = L2_1
    L5_3 = A0_2
    L6_3 = L3_3
    L4_3(L5_3, L6_3)
  end
  function L8_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
openOwnedWeapons = L3_1
