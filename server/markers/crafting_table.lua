local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
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
  L5_2 = L3_2.craftablesItems
  if not L5_2 then
    L5_2 = A1_2
    L6_2 = L4_2
    L5_2(L6_2)
    return
  end
  L5_2 = 1
  L6_2 = L3_2.craftablesItems
  L6_2 = #L6_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L3_2.craftablesItems
    L9_2 = L9_2[L8_2]
    L10_2 = true
    L11_2 = L9_2.recipes
    L12_2 = {}
    L13_2 = 0
    L14_2 = 1
    L15_2 = #L11_2
    L16_2 = 1
    for L17_2 = L14_2, L15_2, L16_2 do
      L18_2 = L11_2[L17_2]
      L19_2 = Framework
      L19_2 = L19_2.getPlayerGenericObjectCount
      L20_2 = A0_2
      L21_2 = L18_2.object
      L21_2 = L21_2.name
      L22_2 = L18_2.object
      L22_2 = L22_2.type
      L19_2 = L19_2(L20_2, L21_2, L22_2)
      L20_2 = Framework
      L20_2 = L20_2.getGenericObjectLabel
      L21_2 = L18_2.object
      L21_2 = L21_2.name
      L22_2 = L18_2.object
      L22_2 = L22_2.type
      L20_2 = L20_2(L21_2, L22_2)
      L21_2 = math
      L21_2 = L21_2.floor
      L22_2 = L18_2.quantity
      L22_2 = L19_2 / L22_2
      L21_2 = L21_2(L22_2)
      if L13_2 > L21_2 or 0 == L13_2 then
        L13_2 = L21_2
      end
      L22_2 = L18_2.quantity
      if L19_2 < L22_2 then
        L10_2 = false
      end
      L22_2 = getLocalizedText
      L23_2 = "ingredient"
      L24_2 = L20_2
      L25_2 = L19_2
      L26_2 = L18_2.quantity
      L22_2 = L22_2(L23_2, L24_2, L25_2, L26_2)
      L23_2 = table
      L23_2 = L23_2.insert
      L24_2 = L12_2
      L25_2 = {}
      L25_2.label = L22_2
      L26_2 = L18_2.quantity
      L25_2.quantity = L26_2
      L25_2.itemLabel = L20_2
      L25_2.itemQuantity = L19_2
      L23_2(L24_2, L25_2)
    end
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = L12_2
    L16_2 = {}
    L17_2 = getLocalizedText
    L18_2 = "craft_amount"
    L17_2 = L17_2(L18_2)
    L16_2.label = L17_2
    if L13_2 > 0 then
      L17_2 = 1
      if L17_2 then
        goto lbl_105
      end
    end
    L17_2 = 0
    ::lbl_105::
    L16_2.value = L17_2
    L16_2.min = 1
    L16_2.max = L13_2
    L16_2.type = "inputQuantity"
    L14_2(L15_2, L16_2)
    L14_2 = table
    L14_2 = L14_2.insert
    L15_2 = L4_2
    L16_2 = {}
    L17_2 = getLocalizedText
    L18_2 = "craft_item_label"
    L19_2 = Framework
    L19_2 = L19_2.getGenericObjectLabel
    L20_2 = L9_2.resultObject
    L20_2 = L20_2.name
    L21_2 = L9_2.resultObject
    L21_2 = L21_2.type
    L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L19_2(L20_2, L21_2)
    L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L16_2.label = L17_2
    L16_2.craftingIndex = L8_2
    L16_2.recipeElements = L12_2
    L14_2(L15_2, L16_2)
  end
  L5_2 = A1_2
  L6_2 = L4_2
  L5_2(L6_2)
end
L1_1 = RegisterServerCallback
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":getCraftingTableData"
L2_1 = L2_1 .. L3_1
L3_1 = L0_1
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = 1
  L3_2 = #A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = Framework
    L7_2 = L7_2.hasPlayerEnoughOfGenericObject
    L8_2 = A0_2
    L9_2 = L6_2.object
    L9_2 = L9_2.name
    L10_2 = L6_2.object
    L10_2 = L10_2.type
    L11_2 = L6_2.quantity
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    if not L7_2 then
      L7_2 = false
      return L7_2
    end
  end
  L2_2 = true
  return L2_2
end
L2_1 = {}
L3_1 = {}
L4_1 = RegisterNetEvent
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":craftItem"
L5_1 = L5_1 .. L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  if not A2_2 then
    A2_2 = 1
  end
  L3_2 = source
  L4_2 = isCloseToMarker
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    return
  end
  L4_2 = L2_1
  L4_2 = L4_2[L3_2]
  if L4_2 then
    return
  end
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.data
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = L4_2.craftablesItems
  if not L5_2 then
    return
  end
  L5_2 = L4_2.craftablesItems
  L5_2 = L5_2[A1_2]
  L6_2 = L5_2.recipes
  L7_2 = L5_2.animations
  if not L7_2 then
    L7_2 = {}
  end
  if not L6_2 then
    return
  end
  L8_2 = Framework
  L8_2 = L8_2.getGenericObjectLabel
  L9_2 = L5_2.resultObject
  L9_2 = L9_2.name
  L10_2 = L5_2.resultObject
  L10_2 = L10_2.type
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = L5_2.quantity
  if not L9_2 then
    L9_2 = 1
  end
  L10_2 = L5_2.craftingTime
  if not L10_2 then
    L10_2 = 8
  end
  L11_2 = #L7_2
  if 0 == L11_2 then
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L7_2
    L13_2 = {}
    L13_2.type = "scenario"
    L13_2.scenarioName = "PROP_HUMAN_BUM_BIN"
    L13_2.scenarioDuration = L10_2
    L11_2(L12_2, L13_2)
  end
  L11_2 = L2_1
  L11_2[L3_2] = true
  L11_2 = 1
  L12_2 = A2_2
  L13_2 = 1
  for L14_2 = L11_2, L12_2, L13_2 do
    L15_2 = L3_1
    L15_2 = L15_2[L3_2]
    if L15_2 then
      L15_2 = L2_1
      L15_2[L3_2] = false
      L15_2 = L3_1
      L15_2[L3_2] = false
      return
    end
    L15_2 = L1_1
    L16_2 = L3_2
    L17_2 = L6_2
    L15_2 = L15_2(L16_2, L17_2)
    if not L15_2 then
      L15_2 = notify
      L16_2 = L3_2
      L17_2 = getLocalizedText
      L18_2 = "dont_have_ingredients"
      L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L17_2(L18_2)
      L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      break
    end
    L15_2 = Framework
    L15_2 = L15_2.canPlayerCarryGenericObject
    L16_2 = L3_2
    L17_2 = L5_2.resultObject
    L17_2 = L17_2.name
    L18_2 = L5_2.resultObject
    L18_2 = L18_2.type
    L19_2 = L9_2
    L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
    if not L15_2 then
      L15_2 = notify
      L16_2 = L3_2
      L17_2 = getLocalizedText
      L18_2 = "no_space"
      L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L17_2(L18_2)
      L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      break
    end
    L15_2 = L10_2 * 1000
    L16_2 = TriggerClientEvent
    L17_2 = Utils
    L17_2 = L17_2.eventsPrefix
    L18_2 = ":crafting_table:startCrafting"
    L17_2 = L17_2 .. L18_2
    L18_2 = L3_2
    L19_2 = L15_2
    L20_2 = getLocalizedText
    L21_2 = "crafting"
    L22_2 = L8_2
    L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L20_2(L21_2, L22_2)
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L16_2 = playAnimation
    L17_2 = L3_2
    L18_2 = L7_2
    L16_2(L17_2, L18_2)
    L16_2 = Citizen
    L16_2 = L16_2.Wait
    L17_2 = L15_2
    L16_2(L17_2)
    L16_2 = L1_1
    L17_2 = L3_2
    L18_2 = L6_2
    L16_2 = L16_2(L17_2, L18_2)
    if not L16_2 then
      L16_2 = notify
      L17_2 = L3_2
      L18_2 = getLocalizedText
      L19_2 = "dont_have_ingredients"
      L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L18_2(L19_2)
      L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      break
    end
    L16_2 = pairs
    L17_2 = L6_2
    L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
    for L20_2, L21_2 in L16_2, L17_2, L18_2, L19_2 do
      L22_2 = L21_2.loseOnUse
      if L22_2 then
        L22_2 = Framework
        L22_2 = L22_2.removeGenericObjectFromPlayerId
        L23_2 = L3_2
        L24_2 = L21_2.object
        L24_2 = L24_2.name
        L25_2 = L21_2.object
        L25_2 = L25_2.type
        L26_2 = L21_2.quantity
        L22_2(L23_2, L24_2, L25_2, L26_2)
      end
    end
    L16_2 = Framework
    L16_2 = L16_2.giveGenericObjectToPlayerId
    L17_2 = L3_2
    L18_2 = L5_2.resultObject
    L19_2 = L9_2
    L16_2(L17_2, L18_2, L19_2)
    L16_2 = notify
    L17_2 = L3_2
    L18_2 = getLocalizedText
    L19_2 = "you_crafted"
    L20_2 = L9_2
    L21_2 = L8_2
    L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L18_2(L19_2, L20_2, L21_2)
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    L16_2 = Utils
    L16_2 = L16_2.log
    L17_2 = L3_2
    L18_2 = getLocalizedText
    L19_2 = "log_crafted_item"
    L18_2 = L18_2(L19_2)
    L19_2 = getLocalizedText
    L20_2 = "log_crafted_item_description"
    L21_2 = L9_2
    L22_2 = L8_2
    L23_2 = L5_2.resultObject
    L23_2 = L23_2.name
    L24_2 = A0_2
    L19_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2)
    L20_2 = "success"
    L21_2 = "crafting_table"
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
    L16_2 = TriggerEvent
    L17_2 = Utils
    L17_2 = L17_2.eventsPrefix
    L18_2 = ":crafting_table:craftedItem"
    L17_2 = L17_2 .. L18_2
    L18_2 = L3_2
    L19_2 = A0_2
    L20_2 = L5_2.resultObject
    L20_2 = L20_2.name
    L21_2 = L9_2
    L16_2(L17_2, L18_2, L19_2, L20_2, L21_2)
    L16_2 = Citizen
    L16_2 = L16_2.Wait
    L17_2 = 2000
    L16_2(L17_2)
  end
  L11_2 = L2_1
  L11_2[L3_2] = false
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":stopCrafting"
L5_1 = L5_1 .. L6_1
function L6_1()
  local L0_2, L1_2
  L0_2 = source
  L1_2 = L3_1
  L1_2[L0_2] = true
end
L4_1(L5_1, L6_1)
