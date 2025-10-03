local L0_1, L1_1, L2_1, L3_1, L4_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Framework
  L1_2 = L1_2.getFramework
  L1_2 = L1_2()
  if "QB-core" == L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.hideInteractionMenu
    L1_2()
    L1_2 = TriggerServerEvent
    L2_2 = Utils
    L2_2 = L2_2.eventsPrefix
    L3_2 = ":qb-inventory:robPlayer"
    L2_2 = L2_2 .. L3_2
    L3_2 = A0_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = Framework
    L1_2 = L1_2.getFramework
    L1_2 = L1_2()
    if "ESX" == L1_2 then
      L1_2 = TriggerServerPromise
      L2_2 = Utils
      L2_2 = L2_2.eventsPrefix
      L3_2 = ":getTargetPlayerInventory"
      L2_2 = L2_2 .. L3_2
      L3_2 = A0_2
      L1_2 = L1_2(L2_2, L3_2)
      if not L1_2 then
        return
      end
      L2_2 = #L1_2
      if 0 == L2_2 then
        L2_2 = table
        L2_2 = L2_2.insert
        L3_2 = L1_2
        L4_2 = {}
        L5_2 = getLocalizedText
        L6_2 = "search_inventory_empty"
        L5_2 = L5_2(L6_2)
        L4_2.label = L5_2
        L2_2(L3_2, L4_2)
      end
      L2_2 = Utils
      L2_2 = L2_2.openInteractionMenu
      L3_2 = "actions_menu_search"
      L4_2 = getLocalizedText
      L5_2 = "actions_menu_search"
      L4_2 = L4_2(L5_2)
      L5_2 = L1_2
      function L6_2(A0_3, A1_3, A2_3)
        local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
        L3_3 = A2_3.value
        if nil == L3_3 then
          return
        end
        L3_3 = A2_3.max
        if nil == L3_3 then
          L3_3 = TriggerServerPromise
          L4_3 = Utils
          L4_3 = L4_3.eventsPrefix
          L5_3 = ":stealFromPlayer"
          L4_3 = L4_3 .. L5_3
          L5_3 = A0_2
          L6_3 = A2_3
          L3_3 = L3_3(L4_3, L5_3, L6_3)
          if not L3_3 then
            return
          end
          L4_3 = L0_1
          L5_3 = A0_2
          L4_3(L5_3)
        end
        L3_3 = Utils
        L3_3 = L3_3.askQuantity
        L4_3 = getLocalizedText
        L5_3 = "quantity"
        L4_3 = L4_3(L5_3)
        L5_3 = 1
        L6_3 = A2_3.max
        L3_3 = L3_3(L4_3, L5_3, L6_3)
        if L3_3 then
          L4_3 = A2_3.max
          if not (L3_3 > L4_3) then
            goto lbl_44
          end
        end
        L4_3 = notifyClient
        L5_3 = getLocalizedText
        L6_3 = "invalid_quantity"
        L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
        L4_3(L5_3, L6_3, L7_3, L8_3)
        L4_3 = Utils
        L4_3 = L4_3.hideInteractionMenu
        L4_3()
        do return end
        ::lbl_44::
        L4_3 = TriggerServerPromise
        L5_3 = Utils
        L5_3 = L5_3.eventsPrefix
        L6_3 = ":stealFromPlayer"
        L5_3 = L5_3 .. L6_3
        L6_3 = A0_2
        L7_3 = A2_3
        L8_3 = L3_3
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
  end
end
L1_1 = RegisterNetEvent
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":actions:search:searchPlayer"
L2_1 = L2_1 .. L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = config
  L1_2 = L1_2.modules
  L1_2 = L1_2.search_player
  if "default" ~= L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.callModuleFunc
    L2_2 = "search_player"
    L3_2 = "search"
    L4_2 = A0_2
    L1_2(L2_2, L3_2, L4_2)
    L1_2 = Utils
    L1_2 = L1_2.hideInteractionMenu
    L1_2()
    return
  end
  L1_2 = L0_1
  L2_2 = A0_2
  L1_2(L2_2)
end
L1_1(L2_1, L3_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Utils
  L1_2 = L1_2.getPlayerServerIdFromPed
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = Framework
    L1_2 = L1_2.getClosestPlayer
    L2_2 = true
    L3_2 = 4.0
    L1_2 = L1_2(L2_2, L3_2)
  end
  if not L1_2 then
    L2_2 = notifyClient
    L3_2 = getLocalizedText
    L4_2 = "no_players_nearby"
    L3_2, L4_2, L5_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2, L5_2)
    return
  end
  L2_2 = config
  L2_2 = L2_2.searchRequiresHandcuffState
  if L2_2 then
    L2_2 = TriggerServerPromise
    L3_2 = Utils
    L3_2 = L3_2.eventsPrefix
    L4_2 = ":isPlayerHandcuffed"
    L3_2 = L3_2 .. L4_2
    L4_2 = L1_2
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L3_2 = notifyClient
      L4_2 = getLocalizedText
      L5_2 = "player_is_not_handcuffed"
      L4_2, L5_2 = L4_2(L5_2)
      L3_2(L4_2, L5_2)
      return
    end
  end
  L2_2 = TriggerEvent
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":actions:search:searchPlayer"
  L3_2 = L3_2 .. L4_2
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L2_1 = RegisterNetEvent
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":actions:search"
L3_1 = L3_1 .. L4_1
L4_1 = L1_1
L2_1(L3_1, L4_1)
