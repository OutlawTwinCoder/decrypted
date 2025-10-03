local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = canUseMarkerWithLog
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L3_2 = {}
  L4_2 = 1
  L5_2 = JobsCreator
  L5_2 = L5_2.Markers
  L5_2 = L5_2[A2_2]
  L5_2 = L5_2.data
  L5_2 = L5_2.items
  L5_2 = #L5_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = JobsCreator
    L8_2 = L8_2.Markers
    L8_2 = L8_2[A2_2]
    L8_2 = L8_2.data
    L8_2 = L8_2.items
    L8_2 = L8_2[L7_2]
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L3_2
    L11_2 = {}
    L12_2 = getLocalizedText
    L13_2 = "market_item"
    L14_2 = Framework
    L14_2 = L14_2.getGenericObjectLabel
    L15_2 = L8_2.object
    L15_2 = L15_2.name
    L16_2 = L8_2.object
    L16_2 = L16_2.type
    L14_2 = L14_2(L15_2, L16_2)
    L15_2 = L8_2.minPrice
    L16_2 = L8_2.maxPrice
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
    L11_2.label = L12_2
    L11_2.value = L7_2
    L9_2(L10_2, L11_2)
  end
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L2_1 = RegisterServerCallback
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":getMarketItems"
L3_1 = L3_1 .. L4_1
L4_1 = L1_1
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A2_2 <= 0 then
    return
  end
  L3_2 = source
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
  L4_2 = L4_2.items
  L4_2 = L4_2[A1_2]
  if not L4_2 then
    return
  end
  L5_2 = L4_2.object
  L6_2 = L0_1
  L6_2 = L6_2[L3_2]
  if L6_2 then
    L6_2 = notify
    L7_2 = L3_2
    L8_2 = getLocalizedText
    L9_2 = "market:you_are_already_selling"
    L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L8_2(L9_2)
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    return
  end
  L6_2 = Framework
  L6_2 = L6_2.getGenericObjectLabel
  L7_2 = L5_2.name
  L8_2 = L5_2.type
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = Framework
  L7_2 = L7_2.hasPlayerEnoughOfGenericObject
  L8_2 = L3_2
  L9_2 = L5_2.name
  L10_2 = L5_2.type
  L11_2 = A2_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
  if not L7_2 then
    L7_2 = notify
    L8_2 = L3_2
    L9_2 = getLocalizedText
    L10_2 = "not_enough_item"
    L11_2 = L6_2
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2, L11_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    return
  end
  L7_2 = L4_2.sellTime
  if not L7_2 then
    L7_2 = 0
  end
  L7_2 = L7_2 * 1000
  L7_2 = L7_2 * A2_2
  if L7_2 > 0 then
    L8_2 = Dialogs
    L8_2 = L8_2.startProgressBar
    L9_2 = L3_2
    L10_2 = L7_2
    L11_2 = getLocalizedText
    L12_2 = "market:selling"
    L13_2 = A2_2
    L14_2 = L6_2
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2, L13_2, L14_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L8_2 = timedFreezePlayer
    L9_2 = L3_2
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
  L8_2 = TriggerClientEvent
  L9_2 = Utils
  L9_2 = L9_2.eventsPrefix
  L10_2 = ":market:toggleSelling"
  L9_2 = L9_2 .. L10_2
  L10_2 = L3_2
  L11_2 = true
  L8_2(L9_2, L10_2, L11_2)
  L8_2 = L0_1
  L9_2 = Timeout
  L10_2 = L7_2
  function L11_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = Framework
    L0_3 = L0_3.hasPlayerEnoughOfGenericObject
    L1_3 = L3_2
    L2_3 = L5_2.name
    L3_3 = L5_2.type
    L4_3 = A2_2
    L0_3 = L0_3(L1_3, L2_3, L3_3, L4_3)
    if L0_3 then
      L0_3 = Framework
      L0_3 = L0_3.removeGenericObjectFromPlayerId
      L1_3 = L3_2
      L2_3 = L5_2.name
      L3_3 = L5_2.type
      L4_3 = A2_2
      L0_3(L1_3, L2_3, L3_3, L4_3)
      L0_3 = Utils
      L0_3 = L0_3.getRandomQuantity
      L1_3 = L4_2.minPrice
      L2_3 = L4_2.maxPrice
      L0_3 = L0_3(L1_3, L2_3)
      L1_3 = A2_2
      L0_3 = L0_3 * L1_3
      L1_3 = JobsCreator
      L1_3 = L1_3.Markers
      L2_3 = A0_2
      L1_3 = L1_3[L2_3]
      L1_3 = L1_3.jobName
      if "public_marker" ~= L1_3 then
        L1_3 = JobsCreator
        L1_3 = L1_3.Markers
        L2_3 = A0_2
        L1_3 = L1_3[L2_3]
        L1_3 = L1_3.data
        L1_3 = L1_3.percentageForSociety
        if L1_3 then
          L1_3 = math
          L1_3 = L1_3.floor
          L2_3 = JobsCreator
          L2_3 = L2_3.Markers
          L3_3 = A0_2
          L2_3 = L2_3[L3_3]
          L2_3 = L2_3.data
          L2_3 = L2_3.percentageForSociety
          L2_3 = L0_3 * L2_3
          L2_3 = L2_3 / 100
          L1_3 = L1_3(L2_3)
          L0_3 = L0_3 - L1_3
          L2_3 = exports
          L3_3 = GetCurrentResourceName
          L3_3 = L3_3()
          L2_3 = L2_3[L3_3]
          L3_3 = L2_3
          L2_3 = L2_3.addSocietyMoney
          L4_3 = JobsCreator
          L4_3 = L4_3.Markers
          L5_3 = A0_2
          L4_3 = L4_3[L5_3]
          L4_3 = L4_3.jobName
          L5_3 = L1_3
          L2_3 = L2_3(L3_3, L4_3, L5_3)
          if L2_3 then
            L3_3 = notify
            L4_3 = L3_2
            L5_3 = getLocalizedText
            L6_3 = "society_received_money_from_your_sale"
            L7_3 = Framework
            L7_3 = L7_3.groupDigits
            L8_3 = L1_3
            L7_3, L8_3, L9_3, L10_3 = L7_3(L8_3)
            L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
            L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
          else
            L3_3 = TriggerClientEvent
            L4_3 = Utils
            L4_3 = L4_3.eventsPrefix
            L5_3 = ":market:toggleSelling"
            L4_3 = L4_3 .. L5_3
            L5_3 = L3_2
            L6_3 = false
            L3_3(L4_3, L5_3, L6_3)
            L3_3 = print
            L4_3 = "^1Couldn't give money to society ^3"
            L5_3 = JobsCreator
            L5_3 = L5_3.Markers
            L6_3 = A0_2
            L5_3 = L5_3[L6_3]
            L5_3 = L5_3.jobName
            L6_3 = "^1 (try deleting and recreating the job)^7"
            L4_3 = L4_3 .. L5_3 .. L6_3
            L3_3(L4_3)
            return
          end
        end
      end
      L1_3 = L4_2.blackMoney
      if L1_3 then
        L1_3 = Framework
        L1_3 = L1_3.giveBlackMoneyValue
        L2_3 = L3_2
        L3_3 = L0_3
        L1_3(L2_3, L3_3)
      else
        L1_3 = Framework
        L1_3 = L1_3.getFramework
        L1_3 = L1_3()
        if "ESX" == L1_3 then
          L1_3 = Framework
          L1_3 = L1_3.giveAccountMoneyToPlayer
          L2_3 = L3_2
          L3_3 = "money"
          L4_3 = L0_3
          L1_3(L2_3, L3_3, L4_3)
        else
          L1_3 = Framework
          L1_3 = L1_3.getFramework
          L1_3 = L1_3()
          if "QB-core" == L1_3 then
            L1_3 = Framework
            L1_3 = L1_3.giveAccountMoneyToPlayer
            L2_3 = L3_2
            L3_3 = "cash"
            L4_3 = L0_3
            L1_3(L2_3, L3_3, L4_3)
          end
        end
      end
      L1_3 = "~g~"
      L2_3 = L4_2.blackMoney
      if L2_3 then
        L1_3 = "~r~"
      end
      if L0_3 > 0 then
        L2_3 = notify
        L3_3 = L3_2
        L4_3 = getLocalizedText
        L5_3 = "you_sold"
        L6_3 = A2_2
        L7_3 = L6_2
        L8_3 = L1_3
        L9_3 = Framework
        L9_3 = L9_3.groupDigits
        L10_3 = L0_3
        L9_3, L10_3 = L9_3(L10_3)
        L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
      end
      L2_3 = Utils
      L2_3 = L2_3.log
      L3_3 = L3_2
      L4_3 = getLocalizedText
      L5_3 = "log_sold_item"
      L4_3 = L4_3(L5_3)
      L5_3 = getLocalizedText
      L6_3 = "log_sold_item_description"
      L7_3 = A2_2
      L8_3 = L6_2
      L9_3 = Framework
      L9_3 = L9_3.groupDigits
      L10_3 = L0_3
      L9_3, L10_3 = L9_3(L10_3)
      L5_3 = L5_3(L6_3, L7_3, L8_3, L9_3, L10_3)
      L6_3 = "success"
      L7_3 = "market"
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
      L2_3 = TriggerEvent
      L3_3 = Utils
      L3_3 = L3_3.eventsPrefix
      L4_3 = ":market:soldItem"
      L3_3 = L3_3 .. L4_3
      L4_3 = L3_2
      L5_3 = A0_2
      L6_3 = L5_2.name
      L7_3 = A2_2
      L8_3 = L0_3
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    else
      L0_3 = notify
      L1_3 = L3_2
      L2_3 = getLocalizedText
      L3_3 = "not_enough_item"
      L4_3 = L6_2
      L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3 = L2_3(L3_3, L4_3)
      L0_3(L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3)
    end
    L0_3 = TriggerClientEvent
    L1_3 = Utils
    L1_3 = L1_3.eventsPrefix
    L2_3 = ":market:toggleSelling"
    L1_3 = L1_3 .. L2_3
    L2_3 = L3_2
    L3_3 = false
    L0_3(L1_3, L2_3, L3_3)
    L1_3 = L3_2
    L0_3 = L0_1
    L0_3[L1_3] = nil
  end
  L9_2 = L9_2(L10_2, L11_2)
  L8_2[L3_2] = L9_2
end
L3_1 = RegisterNetEvent
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":sellMarketItem"
L4_1 = L4_1 .. L5_1
L5_1 = L2_1
L3_1(L4_1, L5_1)
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L1_2 = print
    L2_2 = "Timeout ID: "
    L3_2 = tostring
    L4_2 = L0_1
    L4_2 = L4_2[L0_2]
    L3_2 = L3_2(L4_2)
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
    L1_2 = ClearTimeout
    L2_2 = L0_1
    L2_2 = L2_2[L0_2]
    L1_2(L2_2)
    L1_2 = L0_1
    L1_2[L0_2] = nil
  end
  L1_2 = TriggerClientEvent
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":market:toggleSelling"
  L2_2 = L2_2 .. L3_2
  L3_2 = L0_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
end
L4_1 = RegisterNetEvent
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":market:stopSelling"
L5_1 = L5_1 .. L6_1
L6_1 = L3_1
L4_1(L5_1, L6_1)
