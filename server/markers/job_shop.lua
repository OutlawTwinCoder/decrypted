local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = {}
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = MySQL
  L0_2 = L0_2.Async
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT * FROM jobs_shops"
  L2_2 = {}
  L3_2 = markerId
  L2_2["@markerId"] = L3_2
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L1_3 = pairs
    L2_3 = A0_3
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = L6_3.marker_id
      L8_3 = L0_1
      L8_3 = L8_3[L7_3]
      if not L8_3 then
        L8_3 = L0_1
        L9_3 = {}
        L8_3[L7_3] = L9_3
      end
      L8_3 = L6_3.item_type
      if "item_standard" == L8_3 then
        L8_3 = Framework
        L8_3 = L8_3.getItemLabel
        L9_3 = L6_3.item_name
        L8_3 = L8_3(L9_3)
        L6_3.item_label = L8_3
      else
        L8_3 = L6_3.item_type
        if "item_weapon" == L8_3 then
          L8_3 = Framework
          L8_3 = L8_3.getWeaponLabel
          L9_3 = L6_3.item_name
          L8_3 = L8_3(L9_3)
          L6_3.item_label = L8_3
        end
      end
      L8_3 = L0_1
      L8_3 = L8_3[L7_3]
      L9_3 = L6_3.id
      L8_3[L9_3] = L6_3
    end
  end
  L0_2(L1_2, L2_2, L3_2)
end
getAllShopsData = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Framework
  L2_2 = L2_2.getPlayerJobName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Framework
  L3_2 = L3_2.getPlayerJobGrade
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.data
  L5_2 = L4_2.allowedJob
  L5_2 = L5_2 == L2_2
  return L5_2
end
L2_1 = RegisterServerCallback
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":canSellInThisShop"
L3_1 = L3_1 .. L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = A1_2
  L4_2 = L1_1
  L5_2 = A0_2
  L6_2 = A2_2
  L4_2, L5_2, L6_2 = L4_2(L5_2, L6_2)
  L3_2(L4_2, L5_2, L6_2)
end
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = canUseMarkerWithLog
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L3_2 = L0_1
  L3_2 = L3_2[A2_2]
  if L3_2 then
    L3_2 = A1_2
    L4_2 = L0_1
    L4_2 = L4_2[A2_2]
    L3_2(L4_2)
  else
    L3_2 = MySQL
    L3_2 = L3_2.Async
    L3_2 = L3_2.fetchAll
    L4_2 = "SELECT * FROM jobs_shops WHERE marker_id=@markerId"
    L5_2 = {}
    L5_2["@markerId"] = A2_2
    function L6_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L2_3 = A2_2
      L1_3 = L0_1
      L3_3 = {}
      L1_3[L2_3] = L3_3
      L1_3 = pairs
      L2_3 = A0_3
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = Framework
        L7_3 = L7_3.getItemLabel
        L8_3 = L6_3.item_name
        L7_3 = L7_3(L8_3)
        if not L7_3 then
          L7_3 = Framework
          L7_3 = L7_3.getWeaponLabel
          L8_3 = L6_3.item_name
          L7_3 = L7_3(L8_3)
        end
        L6_3.item_label = L7_3
        L8_3 = A2_2
        L7_3 = L0_1
        L7_3 = L7_3[L8_3]
        L8_3 = L6_3.id
        L7_3[L8_3] = L6_3
      end
      L1_3 = L2_1
      L2_3 = A0_2
      L3_3 = A1_2
      L4_3 = A2_2
      L1_3(L2_3, L3_3, L4_3)
    end
    L3_2(L4_2, L5_2, L6_2)
  end
end
L3_1 = RegisterServerCallback
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":getJobShop"
L4_1 = L4_1 .. L5_1
L5_1 = L2_1
L3_1(L4_1, L5_1)
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L5_2 = source
  L6_2 = canUseMarkerWithLog
  L7_2 = L5_2
  L8_2 = A4_2
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    return
  end
  if A2_2 <= 0 or A3_2 <= 0 then
    return
  end
  L6_2 = L1_1
  L7_2 = L5_2
  L8_2 = A4_2
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 then
    return
  end
  L6_2 = false
  L7_2 = nil
  if "item_standard" == A1_2 then
    L8_2 = Framework
    L8_2 = L8_2.hasPlayerEnoughOfItem
    L9_2 = L5_2
    L10_2 = A0_2
    L11_2 = A2_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    if L8_2 then
      L6_2 = true
      L8_2 = Framework
      L8_2 = L8_2.getItemLabel
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L7_2 = L8_2
      L8_2 = Framework
      L8_2 = L8_2.removeItemFromPlayer
      L9_2 = L5_2
      L10_2 = A0_2
      L11_2 = A2_2
      L8_2(L9_2, L10_2, L11_2)
    end
  elseif "item_weapon" == A1_2 then
    L8_2 = Framework
    L8_2 = L8_2.hasPlayerWeapon
    L9_2 = L5_2
    L10_2 = A0_2
    L8_2 = L8_2(L9_2, L10_2)
    if L8_2 then
      L6_2 = true
      L8_2 = Framework
      L8_2 = L8_2.getWeaponLabel
      L9_2 = A0_2
      L8_2 = L8_2(L9_2)
      L7_2 = L8_2
      L8_2 = Framework
      L8_2 = L8_2.removeWeaponFromPlayer
      L9_2 = L5_2
      L10_2 = A0_2
      L8_2(L9_2, L10_2)
    end
  end
  if not L6_2 then
    return
  end
  L8_2 = MySQL
  L8_2 = L8_2.Sync
  L8_2 = L8_2.insert
  L9_2 = "INSERT INTO jobs_shops(marker_id, item_name, item_type, item_quantity, price) VALUES (@markerId, @itemName, @itemType, @itemQuantity, @price)"
  L10_2 = {}
  L10_2["@itemName"] = A0_2
  L10_2["@itemType"] = A1_2
  L10_2["@itemQuantity"] = A2_2
  L10_2["@price"] = A3_2
  L10_2["@markerId"] = A4_2
  L8_2 = L8_2(L9_2, L10_2)
  if not L8_2 or 0 == L8_2 then
    return
  end
  L9_2 = L0_1
  L9_2 = L9_2[A4_2]
  L10_2 = {}
  L10_2.id = L8_2
  L10_2.marker_id = A4_2
  L10_2.item_name = A0_2
  L10_2.item_type = A1_2
  L10_2.item_quantity = A2_2
  L10_2.price = A3_2
  L10_2.item_label = L7_2
  L9_2[L8_2] = L10_2
  L9_2 = notify
  L10_2 = L5_2
  L11_2 = getLocalizedText
  L12_2 = "job_shop:you_put_on_sale"
  L13_2 = A2_2
  L14_2 = L7_2
  L15_2 = Framework
  L15_2 = L15_2.groupDigits
  L16_2 = A3_2
  L15_2, L16_2, L17_2 = L15_2(L16_2)
  L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L9_2 = Utils
  L9_2 = L9_2.log
  L10_2 = L5_2
  L11_2 = getLocalizedText
  L12_2 = "logs:job_shop:put_on_sale"
  L11_2 = L11_2(L12_2)
  L12_2 = getLocalizedText
  L13_2 = "logs:job_shop:put_on_sale:description"
  L14_2 = A2_2
  L15_2 = L7_2
  L16_2 = Framework
  L16_2 = L16_2.groupDigits
  L17_2 = A3_2
  L16_2 = L16_2(L17_2)
  L17_2 = A4_2
  L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
  L13_2 = "success"
  L14_2 = "job_shop"
  L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
end
L4_1 = RegisterNetEvent
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":jobShopPutOnSale"
L5_1 = L5_1 .. L6_1
L6_1 = L3_1
L4_1(L5_1, L6_1)
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = source
  if not A2_2 or A2_2 <= 0 then
    return
  end
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.data
  L4_2 = L4_2.allowedJob
  if L4_2 then
    L4_2 = JobsCreator
    L4_2 = L4_2.Markers
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2.data
    L4_2 = L4_2.minimumRank
    if L4_2 then
      goto lbl_28
    end
  end
  L4_2 = print
  L5_2 = "^1No job/rank defined in 'Job Shop' marker ID "
  L6_2 = A0_2
  L7_2 = "^7"
  L5_2 = L5_2 .. L6_2 .. L7_2
  do return L4_2(L5_2) end
  ::lbl_28::
  L4_2 = canUseMarkerWithLog
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    return
  end
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2[A1_2]
  if L4_2 then
    L5_2 = L4_2.item_quantity
    if A2_2 <= L5_2 then
      L5_2 = false
      L6_2 = L4_2.item_type
      if "item_standard" == L6_2 then
        L6_2 = Framework
        L6_2 = L6_2.canPlayerCarryItem
        L7_2 = L3_2
        L8_2 = L4_2.item_name
        L9_2 = A2_2
        L6_2 = L6_2(L7_2, L8_2, L9_2)
        if L6_2 then
          L5_2 = true
        else
          L6_2 = notify
          L7_2 = L3_2
          L8_2 = getLocalizedText
          L9_2 = "no_space"
          L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2)
          L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        end
      else
        L6_2 = L4_2.item_type
        if "item_weapon" == L6_2 then
          L6_2 = Framework
          L6_2 = L6_2.hasPlayerWeapon
          L7_2 = L3_2
          L8_2 = L4_2.item_name
          L6_2 = L6_2(L7_2, L8_2)
          if not L6_2 then
            L5_2 = true
          else
            L6_2 = notify
            L7_2 = L3_2
            L8_2 = getLocalizedText
            L9_2 = "job_shop:you_already_have_that_weapon"
            L10_2 = Framework
            L10_2 = L10_2.getWeaponLabel
            L11_2 = L4_2.item_name
            L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L10_2(L11_2)
            L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
            L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
          end
        end
      end
      if L5_2 then
        L6_2 = L4_2.price
        L6_2 = L6_2 * A2_2
        L7_2 = payInSomeWay
        L8_2 = L3_2
        L9_2 = L6_2
        L7_2 = L7_2(L8_2, L9_2)
        if L7_2 then
          L7_2 = Framework
          L7_2 = L7_2.giveMoneyToSocietyAccount
          L8_2 = JobsCreator
          L8_2 = L8_2.Markers
          L8_2 = L8_2[A0_2]
          L8_2 = L8_2.data
          L8_2 = L8_2.allowedJob
          L9_2 = L6_2
          L7_2(L8_2, L9_2)
          L7_2 = L4_2.item_type
          if "item_standard" == L7_2 then
            L7_2 = Framework
            L7_2 = L7_2.giveItemToPlayer
            L8_2 = L3_2
            L9_2 = L4_2.item_name
            L10_2 = A2_2
            L7_2(L8_2, L9_2, L10_2)
          else
            L7_2 = L4_2.item_type
            if "item_weapon" == L7_2 then
              L7_2 = Framework
              L7_2 = L7_2.giveWeaponToPlayer
              L8_2 = L3_2
              L9_2 = L4_2.item_name
              L10_2 = 60
              L7_2(L8_2, L9_2, L10_2)
            end
          end
          L7_2 = notify
          L8_2 = L3_2
          L9_2 = getLocalizedText
          L10_2 = "job_shop:bought_item"
          L11_2 = A2_2
          L12_2 = L4_2.item_label
          L13_2 = Framework
          L13_2 = L13_2.groupDigits
          L14_2 = L6_2
          L13_2, L14_2, L15_2 = L13_2(L14_2)
          L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
          L7_2 = Utils
          L7_2 = L7_2.log
          L8_2 = L3_2
          L9_2 = getLocalizedText
          L10_2 = "logs:job_shop:bought_item"
          L9_2 = L9_2(L10_2)
          L10_2 = getLocalizedText
          L11_2 = "logs:job_shop:bought_item:description"
          L12_2 = A2_2
          L13_2 = L4_2.item_label
          L14_2 = Framework
          L14_2 = L14_2.groupDigits
          L15_2 = L6_2
          L14_2 = L14_2(L15_2)
          L15_2 = A0_2
          L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
          L11_2 = "success"
          L12_2 = "job_shop"
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
          L7_2 = L4_2.item_quantity
          L7_2 = L7_2 - A2_2
          if L7_2 > 0 then
            L4_2.item_quantity = L7_2
            L8_2 = MySQL
            L8_2 = L8_2.Async
            L8_2 = L8_2.execute
            L9_2 = "UPDATE jobs_shops SET item_quantity=@itemQuantity WHERE id=@itemId"
            L10_2 = {}
            L10_2["@itemQuantity"] = L7_2
            L10_2["@itemId"] = A1_2
            L8_2(L9_2, L10_2)
          else
            L8_2 = L0_1
            L8_2 = L8_2[A0_2]
            L8_2[A1_2] = nil
            L8_2 = MySQL
            L8_2 = L8_2.Async
            L8_2 = L8_2.execute
            L9_2 = "DELETE FROM jobs_shops WHERE id=@itemId"
            L10_2 = {}
            L10_2["@itemId"] = A1_2
            L8_2(L9_2, L10_2)
          end
        else
          L7_2 = notify
          L8_2 = L3_2
          L9_2 = getLocalizedText
          L10_2 = "job_shop_cant_afford"
          L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L9_2(L10_2)
          L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
        end
      end
    end
  end
end
L5_1 = RegisterNetEvent
L6_1 = Utils
L6_1 = L6_1.eventsPrefix
L7_1 = ":job_shop:buyItem"
L6_1 = L6_1 .. L7_1
L7_1 = L4_1
L5_1(L6_1, L7_1)
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L3_2 = source
  L4_2 = canUseMarkerWithLog
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    return
  end
  L4_2 = L1_1
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    return
  end
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2[A1_2]
  L5_2 = L4_2.item_type
  if "item_weapon" == L5_2 then
    L5_2 = Framework
    L5_2 = L5_2.hasPlayerWeapon
    L6_2 = L3_2
    L7_2 = L4_2.item_name
    L5_2 = L5_2(L6_2, L7_2)
    if not L5_2 then
      A2_2 = 1
    else
      L5_2 = notify
      L6_2 = L3_2
      L7_2 = getLocalizedText
      L8_2 = "job_shop:you_already_have_that_weapon"
      L9_2 = Framework
      L9_2 = L9_2.getWeaponLabel
      L10_2 = L4_2.item_name
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2)
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      return
    end
  end
  L5_2 = L4_2.item_quantity
  if A2_2 > L5_2 then
    return
  end
  L5_2 = Framework
  L5_2 = L5_2.canPlayerCarryItem
  L6_2 = L3_2
  L7_2 = L4_2.item_name
  L8_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  if not L5_2 then
    L5_2 = notify
    L6_2 = L3_2
    L7_2 = getLocalizedText
    L8_2 = "no_space"
    L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    return
  end
  L5_2 = nil
  L6_2 = L4_2.item_type
  if "item_standard" == L6_2 then
    L6_2 = Framework
    L6_2 = L6_2.giveItemToPlayer
    L7_2 = L3_2
    L8_2 = L4_2.item_name
    L9_2 = A2_2
    L6_2(L7_2, L8_2, L9_2)
    L6_2 = Framework
    L6_2 = L6_2.getItemLabel
    L7_2 = L4_2.item_name
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  else
    L6_2 = L4_2.item_type
    if "item_weapon" == L6_2 then
      L6_2 = Framework
      L6_2 = L6_2.giveWeaponToPlayer
      L7_2 = L3_2
      L8_2 = L4_2.item_name
      L9_2 = 60
      L6_2(L7_2, L8_2, L9_2)
      L6_2 = Framework
      L6_2 = L6_2.getWeaponLabel
      L7_2 = L4_2.item_name
      L6_2 = L6_2(L7_2)
      L5_2 = L6_2
    end
  end
  L6_2 = notify
  L7_2 = L3_2
  L8_2 = getLocalizedText
  L9_2 = "job_shop:you_removed_from_sale"
  L10_2 = A2_2
  L11_2 = L5_2
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2, L10_2, L11_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L6_2 = Utils
  L6_2 = L6_2.log
  L7_2 = L3_2
  L8_2 = getLocalizedText
  L9_2 = "logs:job_shop:remove_from_sale"
  L8_2 = L8_2(L9_2)
  L9_2 = getLocalizedText
  L10_2 = "logs:job_shop:remove_from_sale:description"
  L11_2 = A2_2
  L12_2 = L5_2
  L13_2 = Framework
  L13_2 = L13_2.groupDigits
  L14_2 = L4_2.price
  L13_2 = L13_2(L14_2)
  L14_2 = A0_2
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
  L10_2 = "success"
  L11_2 = "job_shop"
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = L4_2.item_quantity
  L6_2 = L6_2 - A2_2
  if L6_2 > 0 then
    L4_2.item_quantity = L6_2
    L7_2 = MySQL
    L7_2 = L7_2.Async
    L7_2 = L7_2.execute
    L8_2 = "UPDATE jobs_shops SET item_quantity=@itemQuantity WHERE id=@itemId"
    L9_2 = {}
    L9_2["@itemQuantity"] = L6_2
    L9_2["@itemId"] = A1_2
    L7_2(L8_2, L9_2)
  else
    L7_2 = L0_1
    L7_2 = L7_2[A0_2]
    L7_2[A1_2] = nil
    L7_2 = MySQL
    L7_2 = L7_2.Async
    L7_2 = L7_2.execute
    L8_2 = "DELETE FROM jobs_shops WHERE id=@itemId"
    L9_2 = {}
    L9_2["@itemId"] = A1_2
    L7_2(L8_2, L9_2)
  end
end
L6_1 = RegisterNetEvent
L7_1 = Utils
L7_1 = L7_1.eventsPrefix
L8_1 = ":job_shop:removeFromSale"
L7_1 = L7_1 .. L8_1
L8_1 = L5_1
L6_1(L7_1, L8_1)
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = source
  L4_2 = canUseMarkerWithLog
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    return
  end
  L4_2 = L1_1
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  if L4_2 then
    L4_2 = L0_1
    L4_2 = L4_2[A0_2]
    L4_2 = L4_2[A1_2]
    L5_2 = L4_2.item_name
    L6_2 = nil
    L7_2 = false
    L8_2 = L4_2.item_type
    if "item_standard" == L8_2 then
      L8_2 = Framework
      L8_2 = L8_2.getItemLabel
      L9_2 = L5_2
      L8_2 = L8_2(L9_2)
      L6_2 = L8_2
      L8_2 = Framework
      L8_2 = L8_2.hasPlayerEnoughOfItem
      L9_2 = L3_2
      L10_2 = L5_2
      L11_2 = A2_2
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      if L8_2 then
        L8_2 = Framework
        L8_2 = L8_2.removeItemFromPlayer
        L9_2 = L3_2
        L10_2 = L5_2
        L11_2 = A2_2
        L8_2(L9_2, L10_2, L11_2)
        L7_2 = true
      end
    else
      L8_2 = L4_2.item_type
      if "item_weapon" == L8_2 then
        L8_2 = Framework
        L8_2 = L8_2.getWeaponLabel
        L9_2 = L5_2
        L8_2 = L8_2(L9_2)
        L6_2 = L8_2
        A2_2 = 1
        L8_2 = Framework
        L8_2 = L8_2.hasPlayerWeapon
        L9_2 = L3_2
        L10_2 = L5_2
        L8_2 = L8_2(L9_2, L10_2)
        if L8_2 then
          L8_2 = Framework
          L8_2 = L8_2.removeWeaponFromPlayer
          L9_2 = L3_2
          L10_2 = L5_2
          L8_2(L9_2, L10_2)
          L7_2 = true
        end
      end
    end
    if L7_2 then
      L8_2 = L4_2.item_quantity
      L8_2 = L8_2 + A2_2
      L4_2.item_quantity = L8_2
      L9_2 = MySQL
      L9_2 = L9_2.Async
      L9_2 = L9_2.execute
      L10_2 = "UPDATE jobs_shops SET item_quantity=@newQuantity WHERE id=@id"
      L11_2 = {}
      L11_2["@id"] = A1_2
      L11_2["@newQuantity"] = L8_2
      L9_2(L10_2, L11_2)
      L9_2 = notify
      L10_2 = L3_2
      L11_2 = getLocalizedText
      L12_2 = "job_shop:added_to_supplies"
      L13_2 = A2_2
      L14_2 = L6_2
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2(L12_2, L13_2, L14_2)
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
      L9_2 = Utils
      L9_2 = L9_2.log
      L10_2 = L3_2
      L11_2 = getLocalizedText
      L12_2 = "logs:job_shop:add_to_supplies"
      L11_2 = L11_2(L12_2)
      L12_2 = getLocalizedText
      L13_2 = "logs:job_shop:add_to_supplies:description"
      L14_2 = A2_2
      L15_2 = L6_2
      L16_2 = Framework
      L16_2 = L16_2.groupDigits
      L17_2 = L4_2.price
      L16_2 = L16_2(L17_2)
      L17_2 = A0_2
      L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
      L13_2 = "success"
      L14_2 = "job_shop"
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    else
      L8_2 = notify
      L9_2 = L3_2
      L10_2 = getLocalizedText
      L11_2 = "not_enough"
      L12_2 = L6_2
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L10_2(L11_2, L12_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
  else
    L4_2 = print
    L5_2 = "tried to supply but can't "
    L4_2(L5_2)
  end
end
L7_1 = RegisterNetEvent
L8_1 = Utils
L8_1 = L8_1.eventsPrefix
L9_1 = ":job_shop:addSupplies"
L8_1 = L8_1 .. L9_1
L9_1 = L6_1
L7_1(L8_1, L9_1)
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = {}
  L3_2 = Framework
  L3_2 = L3_2.getFramework
  L3_2 = L3_2()
  if "ESX" == L3_2 then
    L3_2 = ESX
    L3_2 = L3_2.GetPlayerFromId
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = pairs
    L5_2 = L3_2.getInventory
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L5_2()
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L9_2.count
      if L10_2 > 0 then
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L2_2
        L12_2 = {}
        L13_2 = getLocalizedText
        L14_2 = "job_shop:item"
        L15_2 = L9_2.count
        L16_2 = L9_2.label
        L13_2 = L13_2(L14_2, L15_2, L16_2)
        L12_2.label = L13_2
        L13_2 = L9_2.name
        L12_2.value = L13_2
        L13_2 = L9_2.count
        L12_2.count = L13_2
        L12_2.type = "item_standard"
        L10_2(L11_2, L12_2)
      end
    end
  else
    L3_2 = Framework
    L3_2 = L3_2.getFramework
    L3_2 = L3_2()
    if "QB-core" == L3_2 then
      L3_2 = QBCore
      L3_2 = L3_2.Functions
      L3_2 = L3_2.GetPlayer
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      L4_2 = pairs
      L5_2 = L3_2.PlayerData
      L5_2 = L5_2.items
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = L9_2.amount
        if L10_2 > 0 then
          L10_2 = Framework
          L10_2 = L10_2.isItemWeapon
          L11_2 = L9_2.name
          L10_2 = L10_2(L11_2)
          if not L10_2 then
            L10_2 = table
            L10_2 = L10_2.insert
            L11_2 = L2_2
            L12_2 = {}
            L13_2 = getLocalizedText
            L14_2 = "job_shop:item"
            L15_2 = L9_2.amount
            L16_2 = L9_2.label
            L13_2 = L13_2(L14_2, L15_2, L16_2)
            L12_2.label = L13_2
            L13_2 = L9_2.name
            L12_2.value = L13_2
            L13_2 = L9_2.amount
            L12_2.count = L13_2
            L12_2.type = "item_standard"
            L10_2(L11_2, L12_2)
          end
        end
      end
      L4_2 = pairs
      L5_2 = Framework
      L5_2 = L5_2.getPlayerWeapons
      L6_2 = A0_2
      L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L5_2(L6_2)
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L2_2
        L12_2 = {}
        L13_2 = L9_2.label
        L12_2.label = L13_2
        L13_2 = L9_2.name
        L12_2.value = L13_2
        L12_2.count = 1
        L12_2.type = "item_weapon"
        L10_2(L11_2, L12_2)
      end
    end
  end
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L8_1 = RegisterServerCallback
L9_1 = Utils
L9_1 = L9_1.eventsPrefix
L10_1 = ":getSellableStuff"
L9_1 = L9_1 .. L10_1
L10_1 = L7_1
L8_1(L9_1, L10_1)
