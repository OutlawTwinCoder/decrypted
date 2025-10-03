local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = false
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = IsPedInAnyVehicle
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L1_2 = notifyClient
    L2_2 = getLocalizedText
    L3_2 = "you_cant_do_this_in_a_vehicle"
    L2_2, L3_2 = L2_2(L3_2)
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = L0_1
  if L1_2 then
    return
  end
  L1_2 = true
  L0_1 = L1_2
  L1_2 = TriggerServerEvent
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":process:startProcessing"
  L2_2 = L2_2 .. L3_2
  L3_2 = A0_2
  L1_2(L2_2, L3_2)
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = getLocalizedText
    L1_3 = "process:press_to_stop"
    L0_3 = L0_3(L1_3)
    while true do
      L1_3 = L0_1
      if not L1_3 then
        break
      end
      L1_3 = Citizen
      L1_3 = L1_3.Wait
      L2_3 = 0
      L1_3(L2_3)
      L1_3 = showHelpNotification
      L2_3 = L0_3
      L1_3(L2_3)
      L1_3 = IsControlJustReleased
      L2_3 = 0
      L3_3 = 38
      L1_3 = L1_3(L2_3, L3_3)
      if L1_3 then
        L1_3 = false
        L0_1 = L1_3
        L1_3 = notifyClient
        L2_3 = getLocalizedText
        L3_3 = "process:you_will_stop_on_finish"
        L2_3, L3_3 = L2_3(L3_3)
        L1_3(L2_3, L3_3)
      end
    end
  end
  L1_2(L2_2)
end
processMarker = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  if L2_2 and A1_2 then
    L2_2 = TriggerServerEvent
    L3_2 = Utils
    L3_2 = L3_2.eventsPrefix
    L4_2 = ":process:startProcessing"
    L3_2 = L3_2 .. L4_2
    L4_2 = A0_2
    L2_2(L3_2, L4_2)
  elseif not A1_2 then
    L2_2 = false
    L0_1 = L2_2
  end
end
L2_1 = RegisterNetEvent
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":process:finishedProcessing"
L3_1 = L3_1 .. L4_1
L4_1 = L1_1
L2_1(L3_1, L4_1)
