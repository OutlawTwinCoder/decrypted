local L0_1, L1_1, L2_1, L3_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = TriggerServerPromise
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":getCraftingTableData"
  L2_2 = L2_2 .. L3_2
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = Utils
  L2_2 = L2_2.hideInteractionMenu
  L2_2()
  L2_2 = #L1_2
  if 0 == L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = {}
    L5_2 = getLocalizedText
    L6_2 = "crafting_table:nothing_to_craft"
    L5_2 = L5_2(L6_2)
    L4_2.label = L5_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = Utils
  L2_2 = L2_2.openInteractionMenu
  L3_2 = "crafting_table"
  L4_2 = getLocalizedText
  L5_2 = "crafting_table"
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L3_3 = A2_3.craftingIndex
    if not L3_3 then
      return
    end
    L4_3 = Utils
    L4_3 = L4_3.openInteractionMenu
    L5_3 = "crafting_table_recipe"
    L6_3 = getLocalizedText
    L7_3 = "crafting_table"
    L6_3 = L6_3(L7_3)
    L7_3 = A2_3.recipeElements
    function L8_3(A0_4, A1_4, A2_4)
      local L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
      L3_4 = A2_4.type
      if "inputQuantity" ~= L3_4 then
        return
      end
      L3_4 = Utils
      L3_4 = L3_4.askQuantity
      L4_4 = getLocalizedText
      L5_4 = "craft_amount"
      L4_4, L5_4, L6_4, L7_4, L8_4 = L4_4(L5_4)
      L3_4 = L3_4(L4_4, L5_4, L6_4, L7_4, L8_4)
      L4_4 = TriggerServerEvent
      L5_4 = Utils
      L5_4 = L5_4.eventsPrefix
      L6_4 = ":craftItem"
      L5_4 = L5_4 .. L6_4
      L6_4 = A0_2
      L7_4 = L3_3
      L8_4 = L3_4
      L4_4(L5_4, L6_4, L7_4, L8_4)
      L4_4 = Utils
      L4_4 = L4_4.hideInteractionMenu
      L4_4()
    end
    L4_3(L5_3, L6_3, L7_3, L8_3)
  end
  function L7_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
openCraftingTable = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = Dialogs
  L2_2 = L2_2.startProgressBar
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = true
  L3_2 = SetTimeout
  L4_2 = A0_2
  function L5_2()
    local L0_3, L1_3
    L0_3 = L2_2
    if L0_3 then
      L0_3 = false
      L2_2 = L0_3
    end
  end
  L3_2(L4_2, L5_2)
  L3_2 = false
  while L2_2 do
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 24
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 257
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 263
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 32
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 34
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 31
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 30
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 45
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 22
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 44
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 37
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 23
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 59
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 71
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 72
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 36
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 47
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 264
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 257
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 140
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 141
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 142
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 143
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = DisableControlAction
    L5_2 = 0
    L6_2 = 75
    L7_2 = true
    L4_2(L5_2, L6_2, L7_2)
    if not L3_2 then
      L4_2 = showHelpNotification
      L5_2 = getLocalizedText
      L6_2 = "press_to_stop"
      L5_2, L6_2, L7_2 = L5_2(L6_2)
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = IsControlJustReleased
      L5_2 = 0
      L6_2 = 38
      L4_2 = L4_2(L5_2, L6_2)
      if L4_2 then
        L4_2 = TriggerServerEvent
        L5_2 = Utils
        L5_2 = L5_2.eventsPrefix
        L6_2 = ":stopCrafting"
        L5_2 = L5_2 .. L6_2
        L4_2(L5_2)
        L4_2 = notifyClient
        L5_2 = getLocalizedText
        L6_2 = "you_stopped"
        L5_2, L6_2, L7_2 = L5_2(L6_2)
        L4_2(L5_2, L6_2, L7_2)
        L3_2 = true
      end
    end
    L4_2 = Citizen
    L4_2 = L4_2.Wait
    L5_2 = 0
    L4_2(L5_2)
  end
end
L1_1 = RegisterNetEvent
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":crafting_table:startCrafting"
L2_1 = L2_1 .. L3_1
L3_1 = L0_1
L1_1(L2_1, L3_1)
