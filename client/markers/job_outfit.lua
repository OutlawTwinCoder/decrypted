local L0_1, L1_1
L0_1 = nil
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = config
  L1_2 = L1_2.modules
  L1_2 = L1_2.outfits
  if "default" ~= L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.callModuleFunc
    L2_2 = "outfits"
    L3_2 = "openExternalMenu"
    L1_2 = L1_2(L2_2, L3_2)
    if L1_2 then
      L2_2 = Utils
      L2_2 = L2_2.callModuleFunc
      L3_2 = "outfits"
      L4_2 = "openJobOutfits"
      L2_2(L3_2, L4_2)
      return
    end
  end
  L1_2 = TriggerServerPromise
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":getJobOutfits"
  L2_2 = L2_2 .. L3_2
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = #L1_2
  if L3_2 > 0 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = getLocalizedText
    L7_2 = "civilian_outfit"
    L6_2 = L6_2(L7_2)
    L5_2.label = L6_2
    L5_2.value = "civilian"
    L3_2(L4_2, L5_2)
    L3_2 = pairs
    L4_2 = L1_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = {}
      L12_2 = L8_2.label
      L11_2.label = L12_2
      L11_2.value = L8_2
      L9_2(L10_2, L11_2)
    end
  else
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = getLocalizedText
    L7_2 = "no_outfits"
    L6_2 = L6_2(L7_2)
    L5_2.label = L6_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = Utils
  L3_2 = L3_2.hideInteractionMenu
  L3_2()
  L3_2 = Utils
  L3_2 = L3_2.openInteractionMenu
  L4_2 = "job_outfit"
  L5_2 = getLocalizedText
  L6_2 = "job_outfit"
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3
    L3_3 = A2_3.value
    if "civilian" == L3_3 then
      L4_3 = L0_1
      if L4_3 then
        L4_3 = setClothes
        L5_3 = L0_1
        L4_3(L5_3)
        L4_3 = nil
        L0_1 = L4_3
      end
    elseif L3_3 then
      L4_3 = L0_1
      if nil == L4_3 then
        L4_3 = Framework
        L4_3 = L4_3.getPlayerSkin
        L4_3 = L4_3()
        L0_1 = L4_3
      end
      L4_3 = Framework
      L4_3 = L4_3.getFramework
      L4_3 = L4_3()
      if "QB-core" == L4_3 then
        L4_3 = config
        L4_3 = L4_3.modules
        L4_3 = L4_3.outfits
        if "default" == L4_3 then
          L4_3 = Framework
          L4_3 = L4_3.convertOutfitFromESXToQBCore
          L5_3 = L3_3
          L4_3 = L4_3(L5_3)
          L3_3 = L4_3
        end
      end
      L4_3 = setClothes
      L5_3 = L3_3
      L6_3 = false
      L4_3(L5_3, L6_3)
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
openJobOutfit = L1_1
