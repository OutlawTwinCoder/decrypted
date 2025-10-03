local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  L3_2[A0_2] = false
  L3_2 = TriggerClientEvent
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":process:finishedProcessing"
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
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
  L2_2 = L2_2.itemToRemove
  L3_2 = JobsCreator
  L3_2 = L3_2.Markers
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2.data
  L3_2 = L3_2.itemToRemoveQuantity
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.data
  L4_2 = L4_2.itemToAdd
  L5_2 = JobsCreator
  L5_2 = L5_2.Markers
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.data
  L5_2 = L5_2.itemToAddQuantity
  if not L2_2 or not L4_2 then
    L6_2 = print
    L7_2 = "^1You didn't configure properly process marker ID:"
    L8_2 = A0_2
    L9_2 = "^7"
    L6_2(L7_2, L8_2, L9_2)
    return
  end
  L6_2 = L0_1
  L6_2[L1_2] = true
  L6_2 = JobsCreator
  L6_2 = L6_2.Markers
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.data
  L6_2 = L6_2.requiresMinimumAccountMoney
  if L6_2 then
    L6_2 = JobsCreator
    L6_2 = L6_2.Markers
    L6_2 = L6_2[A0_2]
    L6_2 = L6_2.data
    L6_2 = L6_2.minimumAccountAmount
    L7_2 = JobsCreator
    L7_2 = L7_2.Markers
    L7_2 = L7_2[A0_2]
    L7_2 = L7_2.data
    L7_2 = L7_2.minimumAccountName
    L8_2 = Framework
    L8_2 = L8_2.getPlayerCharIdentifier
    L9_2 = L1_2
    L8_2 = L8_2(L9_2)
    L9_2 = Framework
    L9_2 = L9_2.getAccountMoneyFromIdentifier
    L10_2 = L8_2
    L11_2 = L7_2
    L9_2 = L9_2(L10_2, L11_2)
    if L6_2 > L9_2 then
      L9_2 = notify
      L10_2 = L1_2
      L11_2 = getLocalizedText
      L12_2 = "you_need_minimum_account_money"
      L13_2 = L6_2
      L14_2 = Framework
      L14_2 = L14_2.getAccountLabel
      L15_2 = L7_2
      L14_2, L15_2, L16_2, L17_2, L18_2 = L14_2(L15_2)
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
      L9_2 = L1_1
      L10_2 = L1_2
      L11_2 = A0_2
      L12_2 = false
      L9_2(L10_2, L11_2, L12_2)
      return
    end
  end
  L6_2 = JobsCreator
  L6_2 = L6_2.Markers
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.data
  L6_2 = L6_2.timeToProcess
  L7_2 = JobsCreator
  L7_2 = L7_2.Markers
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.data
  L7_2 = L7_2.animations
  if not L7_2 then
    L7_2 = {}
  end
  L8_2 = Framework
  L8_2 = L8_2.getGenericObjectLabel
  L9_2 = L2_2.name
  L10_2 = L2_2.type
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = Framework
  L9_2 = L9_2.getGenericObjectLabel
  L10_2 = L4_2.name
  L11_2 = L4_2.type
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = #L7_2
  if 0 == L10_2 then
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L7_2
    L12_2 = {}
    L12_2.type = "scenario"
    L12_2.scenarioName = "PROP_HUMAN_BUM_BIN"
    L12_2.scenarioDuration = L6_2
    L10_2(L11_2, L12_2)
  end
  L10_2 = Framework
  L10_2 = L10_2.hasPlayerEnoughOfGenericObject
  L11_2 = L1_2
  L12_2 = L2_2.name
  L13_2 = L2_2.type
  L14_2 = L3_2
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  if not L10_2 then
    L10_2 = notify
    L11_2 = L1_2
    L12_2 = getLocalizedText
    L13_2 = "process:you_need"
    L14_2 = L3_2
    L15_2 = L8_2
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2(L13_2, L14_2, L15_2)
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L10_2 = L1_1
    L11_2 = L1_2
    L12_2 = A0_2
    L13_2 = false
    L10_2(L11_2, L12_2, L13_2)
    return
  end
  L10_2 = Framework
  L10_2 = L10_2.canPlayerCarryGenericObject
  L11_2 = L1_2
  L12_2 = L4_2.name
  L13_2 = L4_2.type
  L14_2 = L5_2
  L10_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
  if not L10_2 then
    L10_2 = L1_1
    L11_2 = L1_2
    L12_2 = A0_2
    L13_2 = false
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = notify
    L11_2 = L1_2
    L12_2 = getLocalizedText
    L13_2 = "process:no_space"
    L14_2 = L5_2
    L15_2 = L9_2
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2(L13_2, L14_2, L15_2)
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    return
  end
  L10_2 = Framework
  L10_2 = L10_2.removeGenericObjectFromPlayerId
  L11_2 = L1_2
  L12_2 = L2_2.name
  L13_2 = L2_2.type
  L14_2 = L3_2
  L10_2(L11_2, L12_2, L13_2, L14_2)
  L10_2 = Dialogs
  L10_2 = L10_2.startProgressBar
  L11_2 = L1_2
  L12_2 = L6_2 * 1000
  L13_2 = getLocalizedText
  L14_2 = "process:processing"
  L15_2 = L8_2
  L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L13_2(L14_2, L15_2)
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = playAnimation
  L11_2 = L1_2
  L12_2 = L7_2
  L10_2(L11_2, L12_2)
  L10_2 = Citizen
  L10_2 = L10_2.Wait
  L11_2 = L6_2 * 1000
  L10_2(L11_2)
  L10_2 = isCloseToMarker
  L11_2 = L1_2
  L12_2 = A0_2
  L10_2 = L10_2(L11_2, L12_2)
  if not L10_2 then
    L10_2 = L1_1
    L11_2 = L1_2
    L12_2 = A0_2
    L13_2 = false
    L10_2(L11_2, L12_2, L13_2)
    L10_2 = notify
    L11_2 = L1_2
    L12_2 = getLocalizedText
    L13_2 = "too_far"
    L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2(L13_2)
    L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    return
  end
  L10_2 = Framework
  L10_2 = L10_2.giveGenericObjectToPlayerId
  L11_2 = L1_2
  L12_2 = L4_2
  L13_2 = L5_2
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = notify
  L11_2 = L1_2
  L12_2 = getLocalizedText
  L13_2 = "item_received"
  L14_2 = L5_2
  L15_2 = L9_2
  L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L12_2(L13_2, L14_2, L15_2)
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L10_2 = L1_1
  L11_2 = L1_2
  L12_2 = A0_2
  L13_2 = config
  L13_2 = L13_2.allowAfkFarming
  L10_2(L11_2, L12_2, L13_2)
  L10_2 = Utils
  L10_2 = L10_2.log
  L11_2 = L1_2
  L12_2 = getLocalizedText
  L13_2 = "logs:process:title"
  L12_2 = L12_2(L13_2)
  L13_2 = getLocalizedText
  L14_2 = "logs:process:description"
  L15_2 = L3_2
  L16_2 = L8_2
  L17_2 = L5_2
  L18_2 = L9_2
  L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2, L18_2)
  L14_2 = "success"
  L15_2 = "process"
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = TriggerEvent
  L11_2 = Utils
  L11_2 = L11_2.eventsPrefix
  L12_2 = ":process:processedItem"
  L11_2 = L11_2 .. L12_2
  L12_2 = L1_2
  L13_2 = A0_2
  L14_2 = L4_2.name
  L15_2 = L5_2
  L16_2 = L2_2.name
  L17_2 = L3_2
  L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
end
L3_1 = RegisterNetEvent
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":process:startProcessing"
L4_1 = L4_1 .. L5_1
L5_1 = L2_1
L3_1(L4_1, L5_1)
