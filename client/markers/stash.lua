local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = TriggerServerPromise
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":retrieveStash"
  L2_2 = L2_2 .. L3_2
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = #L1_2
  if 0 == L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = {}
    L5_2 = getLocalizedText
    L6_2 = "empty_stash"
    L5_2 = L5_2(L6_2)
    L4_2.label = L5_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = Utils
  L2_2 = L2_2.openInteractionMenu
  L3_2 = "stash_take"
  L4_2 = getLocalizedText
  L5_2 = "stash_take"
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L3_3 = Utils
    L3_3 = L3_3.askQuantity
    L4_3 = getLocalizedText
    L5_3 = "quantity"
    L4_3 = L4_3(L5_3)
    L5_3 = 1
    L6_3 = A2_3.quantity
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    if not L3_3 then
      return
    end
    L4_3 = TriggerServerPromise
    L5_3 = Utils
    L5_3 = L5_3.eventsPrefix
    L6_3 = ":stash:takeItem"
    L5_3 = L5_3 .. L6_3
    L6_3 = A2_3.value
    L7_3 = L3_3
    L8_3 = A0_2
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
    if not L4_3 then
      return
    end
    L5_3 = L0_1
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
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = TriggerServerPromise
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":getPlayerInventory"
  L2_2 = L2_2 .. L3_2
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = #L1_2
  if 0 == L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = {}
    L5_2 = getLocalizedText
    L6_2 = "empty_inventory"
    L5_2 = L5_2(L6_2)
    L4_2.label = L5_2
    L4_2.value = "emptyinventory"
    L2_2(L3_2, L4_2)
  end
  L2_2 = Utils
  L2_2 = L2_2.openInteractionMenu
  L3_2 = "stash_deposit"
  L4_2 = getLocalizedText
  L5_2 = "stash_deposit"
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L3_3 = Utils
    L3_3 = L3_3.askQuantity
    L4_3 = getLocalizedText
    L5_3 = "quantity"
    L4_3 = L4_3(L5_3)
    L5_3 = 1
    L6_3 = A2_3.quantity
    L3_3 = L3_3(L4_3, L5_3, L6_3)
    if not L3_3 then
      return
    end
    L4_3 = TriggerServerPromise
    L5_3 = Utils
    L5_3 = L5_3.eventsPrefix
    L6_3 = ":stash:depositItem"
    L5_3 = L5_3 .. L6_3
    L6_3 = A2_3.value
    L7_3 = L3_3
    L8_3 = A0_2
    L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3)
    if not L4_3 then
      return
    end
    L5_3 = L1_1
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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Utils
  L1_2 = L1_2.hideInteractionMenu
  L1_2()
  L1_2 = {}
  L2_2 = {}
  L3_2 = getLocalizedText
  L4_2 = "deposit"
  L3_2 = L3_2(L4_2)
  L2_2.label = L3_2
  L2_2.value = "deposit"
  L3_2 = {}
  L4_2 = getLocalizedText
  L5_2 = "take"
  L4_2 = L4_2(L5_2)
  L3_2.label = L4_2
  L3_2.value = "take"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L2_2 = Utils
  L2_2 = L2_2.openInteractionMenu
  L3_2 = "stash"
  L4_2 = getLocalizedText
  L5_2 = "stash"
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3
    L3_3 = A2_3.value
    if "deposit" == L3_3 then
      L4_3 = L1_1
      L5_3 = A0_2
      L4_3(L5_3)
    elseif "take" == L3_3 then
      L4_3 = L0_1
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
L5_1 = ":stash:openStash"
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
    L4_2 = "stash"
    L5_2 = A0_2
    L1_2(L2_2, L3_2, L4_2, L5_2)
    return
  end
  L1_2 = Framework
  L1_2 = L1_2.getFramework
  L1_2 = L1_2()
  if "ESX" == L1_2 then
    L1_2 = L2_1
    L2_2 = A0_2
    L1_2(L2_2)
  else
    L1_2 = print
    L2_2 = "^1Choose an inventory to use for stash in Jobs Creator settings^7"
    L1_2(L2_2)
  end
end
L3_1(L4_1, L5_1)
