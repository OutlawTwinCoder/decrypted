local L0_1, L1_1, L2_1, L3_1, L4_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = Utils
  L1_2 = L1_2.getScriptName
  L2_2 = "billing_ui"
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = GetResourceState
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if "started" == L2_2 then
      L2_2 = Utils
      L2_2 = L2_2.hideInteractionMenu
      L2_2()
      L2_2 = TriggerEvent
      L3_2 = "billing_ui:activateBillingMode"
      L2_2(L3_2)
  end
  else
    L2_2 = ""
    L3_2 = Framework
    L3_2 = L3_2.getFramework
    L3_2 = L3_2()
    if "ESX" == L3_2 then
      L3_2 = Utils
      L3_2 = L3_2.askInput
      L4_2 = getLocalizedText
      L5_2 = "billing_reason"
      L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
      L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
      L2_2 = L3_2
    end
    L3_2 = Utils
    L3_2 = L3_2.askQuantity
    L4_2 = getLocalizedText
    L5_2 = "billing_amount"
    L4_2 = L4_2(L5_2)
    L5_2 = 1
    L6_2 = nil
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    if not L3_2 or not L2_2 then
      return
    end
    L4_2 = Utils
    L4_2 = L4_2.getPlayerServerIdFromPed
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    if not L4_2 then
      L4_2 = Framework
      L4_2 = L4_2.getClosestPlayer
      L5_2 = true
      L6_2 = 4.0
      L4_2 = L4_2(L5_2, L6_2)
    end
    if not L4_2 then
      L5_2 = notifyClient
      L6_2 = getLocalizedText
      L7_2 = "no_players_nearby"
      L6_2, L7_2 = L6_2(L7_2)
      L5_2(L6_2, L7_2)
      return
    end
    L5_2 = TriggerServerCallback
    L6_2 = Utils
    L6_2 = L6_2.eventsPrefix
    L7_2 = ":getJobInfo"
    L6_2 = L6_2 .. L7_2
    function L7_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
      L2_3 = Framework
      L2_3 = L2_3.getFramework
      L2_3 = L2_3()
      if "ESX" == L2_3 then
        L2_3 = TriggerServerEvent
        L3_3 = EXTERNAL_EVENTS_NAMES
        L3_3 = L3_3["esx_billing:sendBill"]
        L4_3 = L4_2
        L5_3 = "society_"
        L6_3 = A0_3
        L5_3 = L5_3 .. L6_3
        L6_3 = A1_3
        L7_3 = " - "
        L8_3 = L2_2
        L6_3 = L6_3 .. L7_3 .. L8_3
        L7_3 = L3_2
        L2_3(L3_3, L4_3, L5_3, L6_3, L7_3)
      else
        L2_3 = Framework
        L2_3 = L2_3.getFramework
        L2_3 = L2_3()
        if "QB-core" == L2_3 then
          L2_3 = ExecuteCommand
          L3_3 = "bill "
          L4_3 = L4_2
          L5_3 = " "
          L6_3 = L3_2
          L3_3 = L3_3 .. L4_3 .. L5_3 .. L6_3
          L2_3(L3_3)
        end
      end
      L2_3 = notifyClient
      L3_3 = getLocalizedText
      L4_3 = "invoice_sent"
      L5_3 = Framework
      L5_3 = L5_3.groupDigits
      L6_3 = L3_2
      L5_3, L6_3, L7_3, L8_3 = L5_3(L6_3)
      L3_3, L4_3, L5_3, L6_3, L7_3, L8_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
      L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3)
    end
    L5_2(L6_2, L7_2)
  end
end
L1_1 = addScriptRemovableEvent
L2_1 = RegisterNetEvent
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":actions:createBilling"
L3_1 = L3_1 .. L4_1
L4_1 = L0_1
L2_1, L3_1, L4_1 = L2_1(L3_1, L4_1)
L1_1(L2_1, L3_1, L4_1)
