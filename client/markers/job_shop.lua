local L0_1, L1_1, L2_1, L3_1, L4_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = TriggerServerPromise
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":getJobShop"
  L2_2 = L2_2 .. L3_2
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = {}
    L12_2 = getLocalizedText
    L13_2 = "job_shop_item"
    L14_2 = L8_2.item_label
    L15_2 = L8_2.item_quantity
    L16_2 = Framework
    L16_2 = L16_2.groupDigits
    L17_2 = L8_2.price
    L16_2, L17_2 = L16_2(L17_2)
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    L11_2.label = L12_2
    L12_2 = L8_2.id
    L11_2.itemId = L12_2
    L11_2.itemData = L8_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = #L2_2
  if 0 == L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = getLocalizedText
    L7_2 = "job_shop_empty"
    L6_2 = L6_2(L7_2)
    L5_2.label = L6_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = Utils
  L3_2 = L3_2.openInteractionMenu
  L4_2 = "job_owned_shop_items"
  L5_2 = getLocalizedText
  L6_2 = "job_owned_shop"
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L3_3 = A2_3.itemId
    if not L3_3 then
      return
    end
    L4_3 = A2_3.itemData
    L4_3 = L4_3.price
    L5_3 = A2_3.itemData
    L5_3 = L5_3.item_quantity
    L6_3 = A2_3.itemData
    L6_3 = L6_3.item_type
    if "item_standard" == L6_3 then
      L7_3 = Utils
      L7_3 = L7_3.askQuantity
      L8_3 = getLocalizedText
      L9_3 = "quantity"
      L8_3 = L8_3(L9_3)
      L9_3 = 1
      L10_3 = L5_3
      L7_3 = L7_3(L8_3, L9_3, L10_3)
      if not L7_3 then
        return
      end
      L8_3 = TriggerServerEvent
      L9_3 = Utils
      L9_3 = L9_3.eventsPrefix
      L10_3 = ":job_shop:buyItem"
      L9_3 = L9_3 .. L10_3
      L10_3 = A0_2
      L11_3 = L3_3
      L12_3 = L7_3
      L8_3(L9_3, L10_3, L11_3, L12_3)
      L8_3 = L0_1
      L9_3 = A0_2
      L8_3(L9_3)
    elseif "item_weapon" == L6_3 then
      L7_3 = TriggerServerEvent
      L8_3 = Utils
      L8_3 = L8_3.eventsPrefix
      L9_3 = ":job_shop:buyItem"
      L8_3 = L8_3 .. L9_3
      L9_3 = A0_2
      L10_3 = L3_3
      L11_3 = 1
      L7_3(L8_3, L9_3, L10_3, L11_3)
      L7_3 = L0_1
      L8_3 = A0_2
      L7_3(L8_3)
    end
  end
  function L8_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = Utils
  L3_2 = L3_2.openInteractionMenu
  L4_2 = "job_owned_shop_items"
  L5_2 = getLocalizedText
  L6_2 = "job_owned_shop"
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L3_3 = A2_3.itemId
    if not L3_3 then
      return
    end
    L4_3 = A2_3.itemData
    L4_3 = L4_3.price
    L5_3 = A2_3.itemData
    L5_3 = L5_3.item_quantity
    L6_3 = A2_3.itemData
    L6_3 = L6_3.item_type
    if "item_standard" == L6_3 then
      L7_3 = Utils
      L7_3 = L7_3.askQuantity
      L8_3 = getLocalizedText
      L9_3 = "quantity"
      L8_3 = L8_3(L9_3)
      L9_3 = 1
      L10_3 = L5_3
      L7_3 = L7_3(L8_3, L9_3, L10_3)
      if not L7_3 then
        return
      end
      L8_3 = TriggerServerEvent
      L9_3 = Utils
      L9_3 = L9_3.eventsPrefix
      L10_3 = ":job_shop:buyItem"
      L9_3 = L9_3 .. L10_3
      L10_3 = A0_2
      L11_3 = L3_3
      L12_3 = L7_3
      L8_3(L9_3, L10_3, L11_3, L12_3)
      L8_3 = L0_1
      L9_3 = A0_2
      L8_3(L9_3)
    elseif "item_weapon" == L6_3 then
      L7_3 = TriggerServerEvent
      L8_3 = Utils
      L8_3 = L8_3.eventsPrefix
      L9_3 = ":job_shop:buyItem"
      L8_3 = L8_3 .. L9_3
      L9_3 = A0_2
      L10_3 = L3_3
      L11_3 = 1
      L7_3(L8_3, L9_3, L10_3, L11_3)
      L7_3 = L0_1
      L8_3 = A0_2
      L7_3(L8_3)
    end
  end
  function L8_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = TriggerServerPromise
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":getSellableStuff"
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2(L2_2)
  L2_2 = #L1_2
  if 0 == L2_2 then
    L2_2 = table
    L2_2 = L2_2.insert
    L3_2 = L1_2
    L4_2 = {}
    L5_2 = getLocalizedText
    L6_2 = "job_shop:nothing_to_sell"
    L5_2 = L5_2(L6_2)
    L4_2.label = L5_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = Utils
  L2_2 = L2_2.openInteractionMenu
  L3_2 = "job_owned_shop_put_on_sale"
  L4_2 = getLocalizedText
  L5_2 = "job_owned_shop"
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3
    L3_3 = A2_3.value
    L4_3 = A2_3.count
    L5_3 = A2_3.type
    if L4_3 > 1 then
      L6_3 = Utils
      L6_3 = L6_3.askQuantity
      L7_3 = getLocalizedText
      L8_3 = "quantity"
      L7_3 = L7_3(L8_3)
      L8_3 = 1
      L9_3 = L4_3
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      if not L6_3 then
        return
      end
      L7_3 = Utils
      L7_3 = L7_3.askQuantity
      L8_3 = getLocalizedText
      L9_3 = "item_price"
      L8_3 = L8_3(L9_3)
      L9_3 = 1
      L10_3 = nil
      L7_3 = L7_3(L8_3, L9_3, L10_3)
      if not L7_3 then
        return
      end
      L8_3 = TriggerServerEvent
      L9_3 = Utils
      L9_3 = L9_3.eventsPrefix
      L10_3 = ":jobShopPutOnSale"
      L9_3 = L9_3 .. L10_3
      L10_3 = L3_3
      L11_3 = L5_3
      L12_3 = L6_3
      L13_3 = L7_3
      L14_3 = A0_2
      L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3)
      L8_3 = L1_1
      L9_3 = A0_2
      L8_3(L9_3)
    else
      L6_3 = Utils
      L6_3 = L6_3.askQuantity
      L7_3 = getLocalizedText
      L8_3 = "item_price"
      L7_3 = L7_3(L8_3)
      L8_3 = 1
      L9_3 = nil
      L6_3 = L6_3(L7_3, L8_3, L9_3)
      if not L6_3 then
        return
      end
      L7_3 = TriggerServerEvent
      L8_3 = Utils
      L8_3 = L8_3.eventsPrefix
      L9_3 = ":jobShopPutOnSale"
      L8_3 = L8_3 .. L9_3
      L9_3 = L3_3
      L10_3 = L5_3
      L11_3 = L4_3
      L12_3 = L6_3
      L13_3 = A0_2
      L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
      L7_3 = L1_1
      L8_3 = A0_2
      L7_3(L8_3)
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
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = TriggerServerPromise
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":getJobShop"
  L2_2 = L2_2 .. L3_2
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = {}
    L12_2 = getLocalizedText
    L13_2 = "job_shop_item"
    L14_2 = L8_2.item_label
    L15_2 = L8_2.item_quantity
    L16_2 = Framework
    L16_2 = L16_2.groupDigits
    L17_2 = L8_2.price
    L16_2, L17_2 = L16_2(L17_2)
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    L11_2.label = L12_2
    L12_2 = L8_2.id
    L11_2.itemId = L12_2
    L11_2.itemData = L8_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = #L2_2
  if 0 == L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = getLocalizedText
    L7_2 = "job_shop_empty"
    L6_2 = L6_2(L7_2)
    L5_2.label = L6_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = Utils
  L3_2 = L3_2.openInteractionMenu
  L4_2 = "job_owned_shop_items_remove_from_sale"
  L5_2 = getLocalizedText
  L6_2 = "job_owned_shop"
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L3_3 = A2_3.itemId
    if L3_3 then
      L4_3 = A2_3.itemData
      L4_3 = L4_3.item_quantity
      if L4_3 > 1 then
        L5_3 = Utils
        L5_3 = L5_3.askQuantity
        L6_3 = getLocalizedText
        L7_3 = "quantity"
        L6_3 = L6_3(L7_3)
        L7_3 = 1
        L8_3 = L4_3
        L5_3 = L5_3(L6_3, L7_3, L8_3)
        if not L5_3 then
          return
        end
        L6_3 = TriggerServerEvent
        L7_3 = Utils
        L7_3 = L7_3.eventsPrefix
        L8_3 = ":job_shop:removeFromSale"
        L7_3 = L7_3 .. L8_3
        L8_3 = A0_2
        L9_3 = L3_3
        L10_3 = L5_3
        L6_3(L7_3, L8_3, L9_3, L10_3)
        L6_3 = L2_1
        L7_3 = A0_2
        L6_3(L7_3)
      else
        L5_3 = TriggerServerEvent
        L6_3 = Utils
        L6_3 = L6_3.eventsPrefix
        L7_3 = ":job_shop:removeFromSale"
        L6_3 = L6_3 .. L7_3
        L7_3 = A0_2
        L8_3 = L3_3
        L9_3 = L4_3
        L5_3(L6_3, L7_3, L8_3, L9_3)
        L5_3 = L2_1
        L6_3 = A0_2
        L5_3(L6_3)
      end
    end
  end
  function L8_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = TriggerServerPromise
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":getJobShop"
  L2_2 = L2_2 .. L3_2
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = {}
    L12_2 = getLocalizedText
    L13_2 = "job_shop_item"
    L14_2 = L8_2.item_label
    L15_2 = L8_2.item_quantity
    L16_2 = Framework
    L16_2 = L16_2.groupDigits
    L17_2 = L8_2.price
    L16_2, L17_2 = L16_2(L17_2)
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    L11_2.label = L12_2
    L12_2 = L8_2.id
    L11_2.itemId = L12_2
    L11_2.itemData = L8_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = #L2_2
  if 0 == L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = getLocalizedText
    L7_2 = "job_shop_empty"
    L6_2 = L6_2(L7_2)
    L5_2.label = L6_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = Utils
  L3_2 = L3_2.openInteractionMenu
  L4_2 = "job_owned_shop_items_restock"
  L5_2 = getLocalizedText
  L6_2 = "job_owned_shop"
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L3_3 = A2_3.itemId
    if L3_3 then
      L4_3 = Utils
      L4_3 = L4_3.askQuantity
      L5_3 = getLocalizedText
      L6_3 = "job_shop:how_many_to_restock"
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
      L7_3 = ":job_shop:addSupplies"
      L6_3 = L6_3 .. L7_3
      L7_3 = A0_2
      L8_3 = L3_3
      L9_3 = L4_3
      L5_3(L6_3, L7_3, L8_3, L9_3)
      L5_3 = L3_1
      L6_3 = A0_2
      L5_3(L6_3)
    end
  end
  function L8_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = Utils
  L1_2 = L1_2.hideInteractionMenu
  L1_2()
  L1_2 = TriggerServerPromise
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":canSellInThisShop"
  L2_2 = L2_2 .. L3_2
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = {}
  L4_2 = getLocalizedText
  L5_2 = "shop"
  L4_2 = L4_2(L5_2)
  L3_2.label = L4_2
  L3_2.value = "shop"
  L2_2[1] = L3_2
  if L1_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = getLocalizedText
    L7_2 = "put_on_sale"
    L6_2 = L6_2(L7_2)
    L5_2.label = L6_2
    L5_2.value = "put_on_sale"
    L3_2(L4_2, L5_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = getLocalizedText
    L7_2 = "remove_from_sale"
    L6_2 = L6_2(L7_2)
    L5_2.label = L6_2
    L5_2.value = "remove_from_sale"
    L3_2(L4_2, L5_2)
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = getLocalizedText
    L7_2 = "job_shop:add_supplies"
    L6_2 = L6_2(L7_2)
    L5_2.label = L6_2
    L5_2.value = "add_supplies"
    L3_2(L4_2, L5_2)
  end
  L3_2 = Utils
  L3_2 = L3_2.openInteractionMenu
  L4_2 = "job_owned_shop"
  L5_2 = getLocalizedText
  L6_2 = "job_owned_shop"
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3
    L3_3 = A2_3.value
    if "shop" == L3_3 then
      L4_3 = L0_1
      L5_3 = A0_2
      L4_3(L5_3)
    elseif "put_on_sale" == L3_3 then
      L4_3 = L1_1
      L5_3 = A0_2
      L4_3(L5_3)
    elseif "remove_from_sale" == L3_3 then
      L4_3 = L2_1
      L5_3 = A0_2
      L4_3(L5_3)
    elseif "add_supplies" == L3_3 then
      L4_3 = L3_1
      L5_3 = A0_2
      L4_3(L5_3)
    end
  end
  function L8_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
openJobShop = L4_1
