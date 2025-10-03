local L0_1, L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = TriggerServerPromise
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":getShopData"
  L2_2 = L2_2 .. L3_2
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = Utils
  L2_2 = L2_2.hideInteractionMenu
  L2_2()
  L2_2 = Utils
  L2_2 = L2_2.openInteractionMenu
  L3_2 = "job_shop"
  L4_2 = getLocalizedText
  L5_2 = "job_shop"
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L3_3 = A2_3.value
    L4_3 = A2_3.itemType
    if not L3_3 then
      return
    end
    if "item" == L4_3 then
      L5_3 = Utils
      L5_3 = L5_3.askQuantity
      L6_3 = getLocalizedText
      L7_3 = "quantity"
      L6_3 = L6_3(L7_3)
      L7_3 = 1
      L8_3 = nil
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      if not L5_3 then
        return
      end
      L6_3 = TriggerServerEvent
      L7_3 = Utils
      L7_3 = L7_3.eventsPrefix
      L8_3 = ":buyShopItem"
      L7_3 = L7_3 .. L8_3
      L8_3 = A0_2
      L9_3 = L3_3
      L10_3 = L5_3
      L6_3(L7_3, L8_3, L9_3, L10_3)
    elseif "weapon" == L4_3 then
      L5_3 = TriggerServerEvent
      L6_3 = Utils
      L6_3 = L6_3.eventsPrefix
      L7_3 = ":buyShopItem"
      L6_3 = L6_3 .. L7_3
      L7_3 = A0_2
      L8_3 = L3_3
      L9_3 = 1
      L5_3(L6_3, L7_3, L8_3, L9_3)
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
openShop = L0_1
