local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = false
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Utils
  L1_2 = L1_2.hideInteractionMenu
  L1_2()
  L1_2 = TriggerServerPromise
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":getMarketItems"
  L2_2 = L2_2 .. L3_2
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L2_2 = {}
    L1_2 = L2_2
  end
  L2_2 = #L1_2
  if 0 == L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = {}
    L5_2 = getLocalizedText
    L6_2 = "nothing_can_be_sold_yet"
    L5_2 = L5_2(L6_2)
    L4_2.label = L5_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = Utils
  L2_2 = L2_2.openInteractionMenu
  L3_2 = "market"
  L4_2 = getLocalizedText
  L5_2 = "market"
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L3_3 = A2_3.value
    if not L3_3 then
      return
    end
    L4_3 = config
    L4_3 = L4_3.marketSellOnePerTime
    if L4_3 then
      L4_3 = Utils
      L4_3 = L4_3.askQuantity
      L5_3 = getLocalizedText
      L6_3 = "market:how_many_to_sell"
      L5_3 = L5_3(L6_3)
      L6_3 = 1
      L7_3 = nil
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      if not L4_3 then
        return
      end
      L5_3 = TriggerServerEvent
      L6_3 = Utils
      L6_3 = L6_3.eventsPrefix
      L7_3 = ":sellMarketItem"
      L6_3 = L6_3 .. L7_3
      L7_3 = A0_2
      L8_3 = L3_3
      L9_3 = L4_3
      L5_3(L6_3, L7_3, L8_3, L9_3)
    else
      L4_3 = TriggerServerEvent
      L5_3 = Utils
      L5_3 = L5_3.eventsPrefix
      L6_3 = ":sellMarketItem"
      L5_3 = L5_3 .. L6_3
      L6_3 = A0_2
      L7_3 = L3_3
      L8_3 = 1
      L4_3(L5_3, L6_3, L7_3, L8_3)
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
openMarket = L1_1
function L1_1()
  local L0_2, L1_2, L2_2
  while true do
    L0_2 = L0_1
    if not L0_2 then
      break
    end
    L0_2 = showHelpNotification
    L1_2 = getLocalizedText
    L2_2 = "press_to_stop"
    L1_2, L2_2 = L1_2(L2_2)
    L0_2(L1_2, L2_2)
    L0_2 = IsControlJustReleased
    L1_2 = 0
    L2_2 = 38
    L0_2 = L0_2(L1_2, L2_2)
    if L0_2 then
      L0_2 = TriggerServerEvent
      L1_2 = Utils
      L1_2 = L1_2.eventsPrefix
      L2_2 = ":market:stopSelling"
      L1_2 = L1_2 .. L2_2
      L0_2(L1_2)
      L0_2 = stopTimedFreeze
      L0_2()
      L0_2 = Dialogs
      L0_2 = L0_2.stopProgressBar
      L0_2()
    end
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 0
    L0_2(L1_2)
  end
end
L2_1 = RegisterNetEvent
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":market:toggleSelling"
L3_1 = L3_1 .. L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L0_1 = A0_2
  L1_2 = L0_1
  if L1_2 then
    L1_2 = Citizen
    L1_2 = L1_2.CreateThread
    L2_2 = L1_1
    L1_2(L2_2)
  end
end
L2_1(L3_1, L4_1)
