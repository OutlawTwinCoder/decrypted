local L0_1, L1_1, L2_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = TriggerServerPromise
  L1_2 = Utils
  L1_2 = L1_2.eventsPrefix
  L2_2 = ":getPlayerWardrobe"
  L1_2 = L1_2 .. L2_2
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2.outfits
  L2_2 = L0_2.propertyOutfits
  L3_2 = {}
  L4_2 = pairs
  L5_2 = L1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L3_2
    L12_2 = {}
    L13_2 = L9_2.label
    L12_2.label = L13_2
    L12_2.id = L8_2
    L13_2 = L9_2.outfit
    L12_2.outfit = L13_2
    L12_2.isPropertyOutfit = false
    L10_2(L11_2, L12_2)
  end
  L4_2 = Framework
  L4_2 = L4_2.getFramework
  L4_2 = L4_2()
  if "ESX" == L4_2 then
    L4_2 = pairs
    L5_2 = L2_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L3_2
      L12_2 = {}
      L13_2 = L9_2.label
      L12_2.label = L13_2
      L12_2.id = L8_2
      L13_2 = L9_2.skin
      L12_2.outfit = L13_2
      L12_2.isPropertyOutfit = true
      L10_2(L11_2, L12_2)
    end
  else
    L4_2 = Framework
    L4_2 = L4_2.getFramework
    L4_2 = L4_2()
    if "QB-core" == L4_2 then
      L4_2 = pairs
      L5_2 = L2_2
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L3_2
        L12_2 = {}
        L13_2 = L9_2.outfitname
        L12_2.label = L13_2
        L13_2 = L9_2.id
        L12_2.id = L13_2
        L13_2 = L9_2.skin
        L12_2.outfit = L13_2
        L12_2.isPropertyOutfit = true
        L10_2(L11_2, L12_2)
      end
    end
  end
  L4_2 = #L3_2
  if 0 == L4_2 then
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L3_2
    L6_2 = {}
    L7_2 = getLocalizedText
    L8_2 = "wardrobe:empty"
    L7_2 = L7_2(L8_2)
    L6_2.label = L7_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = Utils
  L4_2 = L4_2.openInteractionMenu
  L5_2 = "player_dressing"
  L6_2 = getLocalizedText
  L7_2 = "player_clothes"
  L6_2 = L6_2(L7_2)
  L7_2 = L3_2
  function L8_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3
    L3_3 = A2_3.outfit
    if not L3_3 then
      return
    end
    L3_3 = setClothes
    L4_3 = A2_3.outfit
    L5_3 = true
    L3_3(L4_3, L5_3)
  end
  function L9_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = TriggerServerPromise
  L1_2 = Utils
  L1_2 = L1_2.eventsPrefix
  L2_2 = ":getPlayerWardrobe"
  L1_2 = L1_2 .. L2_2
  L0_2 = L0_2(L1_2)
  L1_2 = L0_2.outfits
  L2_2 = L0_2.propertyOutfits
  L3_2 = {}
  L4_2 = pairs
  L5_2 = L1_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L3_2
    L12_2 = {}
    L13_2 = getLocalizedText
    L14_2 = "wardrobe:delete"
    L15_2 = L9_2.label
    L13_2 = L13_2(L14_2, L15_2)
    L12_2.label = L13_2
    L12_2.id = L8_2
    L13_2 = L9_2.outfit
    L12_2.outfit = L13_2
    L12_2.isPropertyOutfit = false
    L10_2(L11_2, L12_2)
  end
  L4_2 = Framework
  L4_2 = L4_2.getFramework
  L4_2 = L4_2()
  if "ESX" == L4_2 then
    L4_2 = pairs
    L5_2 = L2_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L3_2
      L12_2 = {}
      L13_2 = getLocalizedText
      L14_2 = "wardrobe:delete"
      L15_2 = L9_2.label
      L13_2 = L13_2(L14_2, L15_2)
      L12_2.label = L13_2
      L12_2.id = L8_2
      L13_2 = L9_2.skin
      L12_2.outfit = L13_2
      L12_2.isPropertyOutfit = true
      L10_2(L11_2, L12_2)
    end
  else
    L4_2 = Framework
    L4_2 = L4_2.getFramework
    L4_2 = L4_2()
    if "QB-core" == L4_2 then
      L4_2 = pairs
      L5_2 = L2_2
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = L3_2
        L12_2 = {}
        L13_2 = getLocalizedText
        L14_2 = "wardrobe:delete"
        L15_2 = L9_2.outfitname
        L13_2 = L13_2(L14_2, L15_2)
        L12_2.label = L13_2
        L13_2 = L9_2.id
        L12_2.id = L13_2
        L13_2 = L9_2.skin
        L12_2.outfit = L13_2
        L12_2.isPropertyOutfit = true
        L10_2(L11_2, L12_2)
      end
    end
  end
  L4_2 = #L3_2
  if 0 == L4_2 then
    L4_2 = table
    L4_2 = L4_2.insert
    L5_2 = L3_2
    L6_2 = {}
    L7_2 = getLocalizedText
    L8_2 = "wardrobe:empty"
    L7_2 = L7_2(L8_2)
    L6_2.label = L7_2
    L4_2(L5_2, L6_2)
  end
  L4_2 = Utils
  L4_2 = L4_2.openInteractionMenu
  L5_2 = "remove_cloth"
  L6_2 = getLocalizedText
  L7_2 = "remove_cloth"
  L6_2 = L6_2(L7_2)
  L7_2 = L3_2
  function L8_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = A2_3.id
    L4_3 = A2_3.isPropertyOutfit
    if not L3_3 then
      return
    end
    if L4_3 then
      L5_3 = TriggerServerEvent
      L6_3 = Utils
      L6_3 = L6_3.eventsPrefix
      L7_3 = ":wardrobe:deletePropertyOutfit"
      L6_3 = L6_3 .. L7_3
      L7_3 = L3_3
      L5_3(L6_3, L7_3)
    else
      L5_3 = TriggerServerEvent
      L6_3 = Utils
      L6_3 = L6_3.eventsPrefix
      L7_3 = ":wardrobe:deleteOutfit"
      L6_3 = L6_3 .. L7_3
      L7_3 = L3_3
      L5_3(L6_3, L7_3)
    end
    L5_3 = notifyClient
    L6_3 = getLocalizedText
    L7_3 = "delete_outfit"
    L6_3, L7_3 = L6_3(L7_3)
    L5_3(L6_3, L7_3)
  end
  function L9_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = config
  L0_2 = L0_2.modules
  L0_2 = L0_2.outfits
  if "default" ~= L0_2 then
    L0_2 = Utils
    L0_2 = L0_2.callModuleFunc
    L1_2 = "outfits"
    L2_2 = "openWardrobe"
    L0_2(L1_2, L2_2)
    return
  end
  L0_2 = {}
  L1_2 = {}
  L2_2 = getLocalizedText
  L3_2 = "player_clothes"
  L2_2 = L2_2(L3_2)
  L1_2.label = L2_2
  L1_2.value = "player_dressing"
  L2_2 = {}
  L3_2 = getLocalizedText
  L4_2 = "remove_cloth"
  L3_2 = L3_2(L4_2)
  L2_2.label = L3_2
  L2_2.value = "remove_cloth"
  L3_2 = {}
  L4_2 = getLocalizedText
  L5_2 = "save_cloth"
  L4_2 = L4_2(L5_2)
  L3_2.label = L4_2
  L3_2.value = "save_cloth"
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L1_2 = Utils
  L1_2 = L1_2.hideInteractionMenu
  L1_2()
  L1_2 = Utils
  L1_2 = L1_2.openInteractionMenu
  L2_2 = "wardrobe"
  L3_2 = getLocalizedText
  L4_2 = "wardrobe"
  L3_2 = L3_2(L4_2)
  L4_2 = L0_2
  function L5_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L3_3 = A2_3.value
    if "player_dressing" == L3_3 then
      L4_3 = L0_1
      L4_3()
    elseif "remove_cloth" == L3_3 then
      L4_3 = L1_1
      L4_3()
    elseif "save_cloth" == L3_3 then
      L4_3 = Utils
      L4_3 = L4_3.askInput
      L5_3 = getLocalizedText
      L6_3 = "outfit_name"
      L5_3, L6_3, L7_3, L8_3, L9_3 = L5_3(L6_3)
      L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
      if L4_3 then
        L5_3 = Framework
        L5_3 = L5_3.getPlayerSkin
        L5_3 = L5_3()
        if L5_3 then
          L6_3 = TriggerServerEvent
          L7_3 = Utils
          L7_3 = L7_3.eventsPrefix
          L8_3 = ":saveNewOutfitInWardrobe"
          L7_3 = L7_3 .. L8_3
          L8_3 = L5_3
          L9_3 = L4_3
          L6_3(L7_3, L8_3, L9_3)
        end
      else
        L5_3 = notifyClient
        L6_3 = getLocalizedText
        L7_3 = "outfit_label_empty"
        L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
        L5_3(L6_3, L7_3, L8_3, L9_3)
      end
    end
  end
  function L6_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
end
openWardrobe = L2_1
