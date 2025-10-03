local L0_1, L1_1, L2_1, L3_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
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
  if not L3_2 then
    L3_2 = {}
  end
  L4_2 = {}
  L5_2 = L3_2.itemsOnSale
  if L5_2 then
    L5_2 = 1
    L6_2 = L3_2.itemsOnSale
    L6_2 = #L6_2
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = L3_2.itemsOnSale
      L9_2 = L9_2[L8_2]
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L4_2
      L12_2 = {}
      L13_2 = getLocalizedText
      L14_2 = "shop:item"
      L15_2 = Framework
      L15_2 = L15_2.getGenericObjectLabel
      L16_2 = L9_2.object
      L16_2 = L16_2.name
      L17_2 = L9_2.object
      L17_2 = L17_2.type
      L15_2 = L15_2(L16_2, L17_2)
      L16_2 = L9_2.price
      L13_2 = L13_2(L14_2, L15_2, L16_2)
      L12_2.label = L13_2
      L12_2.value = L8_2
      L13_2 = L9_2.object
      L13_2 = L13_2.type
      L12_2.itemType = L13_2
      L10_2(L11_2, L12_2)
    end
  end
  L5_2 = #L4_2
  if 0 == L5_2 then
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L4_2
    L7_2 = {}
    L8_2 = getLocalizedText
    L9_2 = "shop_empty"
    L8_2 = L8_2(L9_2)
    L7_2.label = L8_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = A1_2
  L6_2 = L4_2
  L5_2(L6_2)
end
L1_1 = RegisterServerCallback
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":getShopData"
L2_1 = L2_1 .. L3_1
L3_1 = L0_1
L1_1(L2_1, L3_1)
L1_1 = RegisterNetEvent
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":buyShopItem"
L2_1 = L2_1 .. L3_1
L1_1(L2_1)
L1_1 = AddEventHandler
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":buyShopItem"
L2_1 = L2_1 .. L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L3_2 = source
  if A2_2 <= 0 then
    return
  end
  L4_2 = canUseMarkerWithLog
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    return
  end
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.data
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = L4_2.itemsOnSale
  if not L5_2 then
    return
  end
  L5_2 = L4_2.itemsOnSale
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.object
  L6_2 = L4_2.itemsOnSale
  L6_2 = L6_2[A1_2]
  L6_2 = L6_2.price
  L7_2 = L4_2.itemsOnSale
  L7_2 = L7_2[A1_2]
  L7_2 = L7_2.blackMoney
  L8_2 = L6_2 * A2_2
  if not L6_2 then
    L9_2 = Utils
    L9_2 = L9_2.log
    L10_2 = L3_2
    L11_2 = getLocalizedText
    L12_2 = "log_not_existing_item"
    L11_2 = L11_2(L12_2)
    L12_2 = getLocalizedText
    L13_2 = "log_not_existing_item_description"
    L14_2 = itemName
    L15_2 = A0_2
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L13_2 = "error"
    L14_2 = "shop"
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    return
  end
  L9_2 = Framework
  L9_2 = L9_2.canPlayerCarryGenericObject
  L10_2 = L3_2
  L11_2 = L5_2.name
  L12_2 = L5_2.type
  L13_2 = A2_2
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
  if not L9_2 then
    L9_2 = notify
    L10_2 = L3_2
    L11_2 = getLocalizedText
    L12_2 = "no_space"
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L11_2(L12_2)
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
    return
  end
  if L7_2 then
    L9_2 = Framework
    L9_2 = L9_2.getBlackMoneyValue
    L10_2 = L3_2
    L9_2 = L9_2(L10_2)
    if L8_2 > L9_2 then
      L9_2 = notify
      L10_2 = L3_2
      L11_2 = getLocalizedText
      L12_2 = "not_enough_money"
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L11_2(L12_2)
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      return
    end
    L9_2 = Framework
    L9_2 = L9_2.removeBlackMoneyValue
    L10_2 = L3_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
  else
    L9_2 = payInSomeWay
    L10_2 = L3_2
    L11_2 = L8_2
    L9_2 = L9_2(L10_2, L11_2)
    if not L9_2 then
      L9_2 = notify
      L10_2 = L3_2
      L11_2 = getLocalizedText
      L12_2 = "not_enough_money"
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L11_2(L12_2)
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      return
    end
  end
  L9_2 = Framework
  L9_2 = L9_2.giveGenericObjectToPlayerId
  L10_2 = L3_2
  L11_2 = L5_2
  L12_2 = A2_2
  L9_2(L10_2, L11_2, L12_2)
  L9_2 = Framework
  L9_2 = L9_2.getGenericObjectLabel
  L10_2 = L5_2.name
  L11_2 = L5_2.type
  L9_2 = L9_2(L10_2, L11_2)
  if L7_2 then
    L10_2 = "r"
    if L10_2 then
      goto lbl_119
    end
  end
  L10_2 = "g"
  ::lbl_119::
  L11_2 = notify
  L12_2 = L3_2
  L13_2 = getLocalizedText
  L14_2 = "you_bought"
  L15_2 = A2_2
  L16_2 = L9_2
  L17_2 = L10_2
  L18_2 = Framework
  L18_2 = L18_2.groupDigits
  L19_2 = L8_2
  L18_2, L19_2 = L18_2(L19_2)
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
  L11_2 = Utils
  L11_2 = L11_2.log
  L12_2 = L3_2
  L13_2 = getLocalizedText
  L14_2 = "log_bought_item"
  L13_2 = L13_2(L14_2)
  L14_2 = getLocalizedText
  L15_2 = "log_bought_item_description"
  L16_2 = A2_2
  L17_2 = L9_2
  L18_2 = L5_2.name
  L19_2 = A0_2
  L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
  L15_2 = "success"
  L16_2 = "shop"
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
  L11_2 = TriggerEvent
  L12_2 = Utils
  L12_2 = L12_2.eventsPrefix
  L13_2 = ":shop:boughtItem"
  L12_2 = L12_2 .. L13_2
  L13_2 = L3_2
  L14_2 = A0_2
  L15_2 = L5_2.name
  L16_2 = L5_2.type
  L17_2 = A2_2
  L18_2 = L8_2
  L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
end
L1_1(L2_1, L3_1)
