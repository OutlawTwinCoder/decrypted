local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = false
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L0_1
  if L1_2 then
    return
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = IsPedInAnyVehicle
  L3_2 = L1_2
  L4_2 = false
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    return
  end
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not A0_2 then
    L3_2 = Framework
    L3_2 = L3_2.getClosestVehicle
    L4_2 = 3.0
    L3_2 = L3_2(L4_2)
    A0_2 = L3_2
  end
  if not A0_2 then
    L3_2 = notifyClient
    L4_2 = getLocalizedText
    L5_2 = "actions:no_vehicles_close"
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    return
  end
  L3_2 = SetVehicleDirtLevel
  L4_2 = A0_2
  L5_2 = 10.0
  L3_2(L4_2, L5_2)
  L3_2 = TriggerServerPromise
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":canWashVehicle"
  L4_2 = L4_2 .. L5_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = true
  L0_1 = L4_2
  L4_2 = TaskTurnPedToFaceEntity
  L5_2 = L1_2
  L6_2 = A0_2
  L7_2 = 1500
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Citizen
  L4_2 = L4_2.Wait
  L5_2 = 1500
  L4_2(L5_2)
  L4_2 = TaskStartScenarioInPlace
  L5_2 = L1_2
  L6_2 = "world_human_maid_clean"
  L7_2 = 0
  L8_2 = true
  L4_2(L5_2, L6_2, L7_2, L8_2)
  L4_2 = GetVehicleDirtLevel
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = L4_2 * 1000
  L6_2 = Dialogs
  L6_2 = L6_2.startProgressBar
  L7_2 = L5_2
  L8_2 = getLocalizedText
  L9_2 = "actions:washing_vehicle"
  L8_2, L9_2 = L8_2(L9_2)
  L6_2(L7_2, L8_2, L9_2)
  while L4_2 >= 0.0 do
    L6_2 = Citizen
    L6_2 = L6_2.Wait
    L7_2 = 1000
    L6_2(L7_2)
    L4_2 = L4_2 - 1.0
    L6_2 = SetVehicleDirtLevel
    L7_2 = A0_2
    L8_2 = L4_2
    L6_2(L7_2, L8_2)
  end
  L6_2 = ClearPedTasks
  L7_2 = L1_2
  L6_2(L7_2)
  L6_2 = false
  L0_1 = L6_2
end
L2_1 = RegisterNetEvent
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":actions:washVehicle"
L3_1 = L3_1 .. L4_1
L4_1 = L1_1
L2_1(L3_1, L4_1)
