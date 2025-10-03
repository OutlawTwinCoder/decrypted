local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  L3_2[A0_2] = false
  L3_2 = TriggerClientEvent
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":harvest:finishedHarvesting"
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2
  L1_2 = source
  L2_2 = canUseMarkerWithLog
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  if L2_2 then
    return
  end
  L2_2 = JobsCreator
  L2_2 = L2_2.Markers
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.data
  if not L2_2 then
    return
  end
  L2_2 = JobsCreator
  L2_2 = L2_2.Markers
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.data
  L2_2 = L2_2.harvestableItems
  L3_2 = getRandomElementFromTable
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.object
  L4_2 = L4_2.name
  L5_2 = L3_2.object
  L5_2 = L5_2.type
  L6_2 = Utils
  L6_2 = L6_2.getRandomQuantity
  L7_2 = L3_2.minQuantity
  L8_2 = L3_2.maxQuantity
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = Framework
  L7_2 = L7_2.getGenericObjectLabel
  L8_2 = L4_2
  L9_2 = L5_2
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = Framework
  L8_2 = L8_2.doesGenericObjectExist
  L9_2 = L4_2
  L10_2 = L5_2
  L8_2 = L8_2(L9_2, L10_2)
  if not L8_2 then
    L8_2 = print
    L9_2 = "^1'"
    L10_2 = L5_2
    L11_2 = L4_2
    L12_2 = "' does not exists in harvest marker '"
    L13_2 = A0_2
    L14_2 = "'^7"
    L12_2 = L12_2 .. L13_2 .. L14_2
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = L1_1
    L9_2 = L1_2
    L10_2 = A0_2
    L11_2 = false
    L8_2(L9_2, L10_2, L11_2)
    return
  end
  L8_2 = L3_2.time
  if not L8_2 then
    L8_2 = 1
  end
  L9_2 = JobsCreator
  L9_2 = L9_2.Markers
  L9_2 = L9_2[A0_2]
  L9_2 = L9_2.data
  L9_2 = L9_2.animations
  if not L9_2 then
    L9_2 = {}
  end
  L10_2 = JobsCreator
  L10_2 = L10_2.Markers
  L10_2 = L10_2[A0_2]
  L10_2 = L10_2.data
  L10_2 = L10_2.itemTool
  L11_2 = L10_2 or L11_2
  if L10_2 then
    L11_2 = L10_2.name
  end
  L12_2 = L10_2 or L12_2
  if L10_2 then
    L12_2 = L10_2.type
  end
  if L10_2 then
    L13_2 = Framework
    L13_2 = L13_2.doesGenericObjectExist
    L14_2 = L11_2
    L15_2 = L12_2
    L13_2 = L13_2(L14_2, L15_2)
    if not L13_2 then
      L13_2 = print
      L14_2 = "^1"
      L15_2 = L12_2
      L16_2 = L11_2
      L17_2 = "' does not exists in harvest marker '"
      L18_2 = A0_2
      L19_2 = "'^7"
      L17_2 = L17_2 .. L18_2 .. L19_2
      L13_2(L14_2, L15_2, L16_2, L17_2)
      L13_2 = L1_1
      L14_2 = L1_2
      L15_2 = A0_2
      L16_2 = false
      L13_2(L14_2, L15_2, L16_2)
      return
    end
  end
  L13_2 = JobsCreator
  L13_2 = L13_2.Markers
  L13_2 = L13_2[A0_2]
  L13_2 = L13_2.data
  L13_2 = L13_2.itemToolLoseQuantity
  L14_2 = JobsCreator
  L14_2 = L14_2.Markers
  L14_2 = L14_2[A0_2]
  L14_2 = L14_2.data
  L14_2 = L14_2.itemToolLoseProbability
  L15_2 = JobsCreator
  L15_2 = L15_2.Markers
  L15_2 = L15_2[A0_2]
  L15_2 = L15_2.data
  L15_2 = L15_2.disappearAfterUse
  L16_2 = JobsCreator
  L16_2 = L16_2.Markers
  L16_2 = L16_2[A0_2]
  L16_2 = L16_2.data
  L16_2 = L16_2.disappearSeconds
  L17_2 = #L9_2
  if 0 == L17_2 then
    L17_2 = table
    L17_2 = L17_2.insert
    L18_2 = L9_2
    L19_2 = {}
    L19_2.type = "animation"
    L19_2.animDict = "random@mugging4"
    L19_2.animName = "pickup_low"
    L19_2.animDuration = L8_2
    L17_2(L18_2, L19_2)
  end
  L17_2 = JobsCreator
  L17_2 = L17_2.Markers
  L17_2 = L17_2[A0_2]
  L17_2 = L17_2.data
  L17_2 = L17_2.requiresMinimumAccountMoney
  if L17_2 then
    L17_2 = JobsCreator
    L17_2 = L17_2.Markers
    L17_2 = L17_2[A0_2]
    L17_2 = L17_2.data
    L17_2 = L17_2.minimumAccountAmount
    L18_2 = JobsCreator
    L18_2 = L18_2.Markers
    L18_2 = L18_2[A0_2]
    L18_2 = L18_2.data
    L18_2 = L18_2.minimumAccountName
    L19_2 = Framework
    L19_2 = L19_2.getPlayerCharIdentifier
    L20_2 = L1_2
    L19_2 = L19_2(L20_2)
    L20_2 = Framework
    L20_2 = L20_2.getAccountMoneyFromIdentifier
    L21_2 = L19_2
    L22_2 = L18_2
    L20_2 = L20_2(L21_2, L22_2)
    if L17_2 > L20_2 then
      L20_2 = notify
      L21_2 = L1_2
      L22_2 = getLocalizedText
      L23_2 = "you_need_minimum_account_money"
      L24_2 = L17_2
      L25_2 = Framework
      L25_2 = L25_2.getAccountLabel
      L26_2 = L18_2
      L25_2, L26_2 = L25_2(L26_2)
      L22_2, L23_2, L24_2, L25_2, L26_2 = L22_2(L23_2, L24_2, L25_2, L26_2)
      L20_2(L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      L20_2 = L1_1
      L21_2 = L1_2
      L22_2 = A0_2
      L23_2 = false
      L20_2(L21_2, L22_2, L23_2)
      return
    end
  end
  L8_2 = L8_2 * 1000
  L17_2 = Framework
  L17_2 = L17_2.canPlayerCarryGenericObject
  L18_2 = L1_2
  L19_2 = L4_2
  L20_2 = L5_2
  L21_2 = L6_2
  L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
  if not L17_2 then
    L17_2 = L1_1
    L18_2 = L1_2
    L19_2 = A0_2
    L20_2 = false
    L17_2(L18_2, L19_2, L20_2)
    L17_2 = notify
    L18_2 = L1_2
    L19_2 = getLocalizedText
    L20_2 = "no_space"
    L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L19_2(L20_2)
    L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    return
  end
  L17_2 = L0_1
  L17_2[L1_2] = true
  if L10_2 then
    L17_2 = Framework
    L17_2 = L17_2.hasPlayerEnoughOfGenericObject
    L18_2 = L1_2
    L19_2 = L11_2
    L20_2 = L12_2
    L21_2 = L13_2 or L21_2
    if not L13_2 then
      L21_2 = 1
    end
    L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
    if not L17_2 then
      if L13_2 then
        L17_2 = notify
        L18_2 = L1_2
        L19_2 = getLocalizedText
        L20_2 = "harvest:you_need_tool_count"
        L21_2 = L13_2
        L22_2 = Framework
        L22_2 = L22_2.getGenericObjectLabel
        L23_2 = L11_2
        L24_2 = L12_2
        L22_2, L23_2, L24_2, L25_2, L26_2 = L22_2(L23_2, L24_2)
        L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
        L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      else
        L17_2 = notify
        L18_2 = L1_2
        L19_2 = getLocalizedText
        L20_2 = "harvest:you_need_tool"
        L21_2 = Framework
        L21_2 = L21_2.getGenericObjectLabel
        L22_2 = L11_2
        L23_2 = L12_2
        L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L21_2(L22_2, L23_2)
        L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L19_2(L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
        L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
      end
      L17_2 = L1_1
      L18_2 = L1_2
      L19_2 = A0_2
      L20_2 = false
      L17_2(L18_2, L19_2, L20_2)
      return
    end
    if L14_2 then
      L17_2 = math
      L17_2 = L17_2.random
      L18_2 = 1
      L19_2 = 100
      L17_2 = L17_2(L18_2, L19_2)
      if L14_2 >= L17_2 then
        L17_2 = Framework
        L17_2 = L17_2.removeGenericObjectFromPlayerId
        L18_2 = L1_2
        L19_2 = L11_2
        L20_2 = L12_2
        L21_2 = L13_2
        L17_2(L18_2, L19_2, L20_2, L21_2)
      end
    end
  end
  L17_2 = Dialogs
  L17_2 = L17_2.startProgressBar
  L18_2 = L1_2
  L19_2 = L8_2
  L20_2 = getLocalizedText
  L21_2 = "harvest:harvesting"
  L22_2 = L7_2
  L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L20_2(L21_2, L22_2)
  L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
  L17_2 = playAnimation
  L18_2 = L1_2
  L19_2 = L9_2
  L17_2(L18_2, L19_2)
  L17_2 = Citizen
  L17_2 = L17_2.Wait
  L18_2 = L8_2
  L17_2(L18_2)
  L17_2 = isCloseToMarker
  L18_2 = L1_2
  L19_2 = A0_2
  L17_2 = L17_2(L18_2, L19_2)
  if not L17_2 then
    L17_2 = L1_1
    L18_2 = L1_2
    L19_2 = A0_2
    L20_2 = false
    L17_2(L18_2, L19_2, L20_2)
    L17_2 = notify
    L18_2 = L1_2
    L19_2 = getLocalizedText
    L20_2 = "too_far"
    L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L19_2(L20_2)
    L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    return
  end
  L17_2 = Framework
  L17_2 = L17_2.canPlayerCarryGenericObject
  L18_2 = L1_2
  L19_2 = L4_2
  L20_2 = L5_2
  L21_2 = L6_2
  L17_2 = L17_2(L18_2, L19_2, L20_2, L21_2)
  if not L17_2 then
    L17_2 = L1_1
    L18_2 = L1_2
    L19_2 = A0_2
    L20_2 = false
    L17_2(L18_2, L19_2, L20_2)
    L17_2 = notify
    L18_2 = L1_2
    L19_2 = getLocalizedText
    L20_2 = "no_space"
    L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2 = L19_2(L20_2)
    L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2)
    return
  end
  L17_2 = Framework
  L17_2 = L17_2.giveGenericObjectToPlayerId
  L18_2 = L1_2
  L19_2 = L3_2.object
  L20_2 = L6_2
  L21_2 = true
  L17_2(L18_2, L19_2, L20_2, L21_2)
  L17_2 = Utils
  L17_2 = L17_2.log
  L18_2 = L1_2
  L19_2 = getLocalizedText
  L20_2 = "log_harvested"
  L19_2 = L19_2(L20_2)
  L20_2 = getLocalizedText
  L21_2 = "log_harvested_description"
  L22_2 = L6_2
  L23_2 = L7_2
  L24_2 = A0_2
  L20_2 = L20_2(L21_2, L22_2, L23_2, L24_2)
  L21_2 = "success"
  L22_2 = "harvest"
  L17_2(L18_2, L19_2, L20_2, L21_2, L22_2)
  L17_2 = TriggerEvent
  L18_2 = Utils
  L18_2 = L18_2.eventsPrefix
  L19_2 = ":harvest:harvestedItem"
  L18_2 = L18_2 .. L19_2
  L19_2 = L1_2
  L20_2 = A0_2
  L21_2 = L4_2
  L22_2 = L5_2
  L23_2 = L6_2
  L17_2(L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
  if not L15_2 then
    L17_2 = L1_1
    L18_2 = L1_2
    L19_2 = A0_2
    L20_2 = config
    L20_2 = L20_2.allowAfkFarming
    L17_2(L18_2, L19_2, L20_2)
  else
    L17_2 = L1_1
    L18_2 = L1_2
    L19_2 = A0_2
    L20_2 = false
    L17_2(L18_2, L19_2, L20_2)
    L17_2 = TriggerClientEvent
    L18_2 = Utils
    L18_2 = L18_2.eventsPrefix
    L19_2 = ":harvest:hideMarker"
    L18_2 = L18_2 .. L19_2
    L19_2 = L1_2
    L20_2 = A0_2
    L21_2 = L16_2
    L17_2(L18_2, L19_2, L20_2, L21_2)
  end
end
L3_1 = RegisterNetEvent
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":harvestMarkerId"
L4_1 = L4_1 .. L5_1
L5_1 = L2_1
L3_1(L4_1, L5_1)
