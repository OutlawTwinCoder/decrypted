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
  if not A0_2 then
    L2_2 = Framework
    L2_2 = L2_2.getClosestVehicle
    L3_2 = 3.0
    L2_2 = L2_2(L3_2)
    A0_2 = L2_2
  end
  if not A0_2 then
    L2_2 = notifyClient
    L3_2 = getLocalizedText
    L4_2 = "actions:no_vehicles_close"
    L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    return
  end
  L2_2 = true
  L0_1 = L2_2
  L2_2 = GetVehicleNumberPlateText
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = getVehicleNameFromModel
  L4_2 = GetEntityModel
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = TaskTurnPedToFaceEntity
  L5_2 = L1_2
  L6_2 = A0_2
  L7_2 = 1500
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Citizen
  L4_2 = L4_2.Wait
  L5_2 = 1500
  L4_2(L5_2)
  L4_2 = 10000
  L5_2 = TaskStartScenarioInPlace
  L6_2 = L1_2
  L7_2 = "PROP_HUMAN_BUM_BIN"
  L8_2 = 0
  L9_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = Dialogs
  L5_2 = L5_2.startProgressBar
  L6_2 = L4_2
  L7_2 = getLocalizedText
  L8_2 = "actions:impounding_vehicle"
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = Citizen
  L5_2 = L5_2.Wait
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = DoesEntityExist
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if L5_2 then
    L5_2 = Framework
    L5_2 = L5_2.deleteVehicle
    L6_2 = A0_2
    L5_2(L6_2)
  end
  L5_2 = ClearPedTasks
  L6_2 = L1_2
  L5_2(L6_2)
  L5_2 = TriggerEvent
  L6_2 = Utils
  L6_2 = L6_2.eventsPrefix
  L7_2 = ":actions:vehicleImpounded"
  L6_2 = L6_2 .. L7_2
  L7_2 = L2_2
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = false
  L0_1 = L5_2
end
L2_1 = RegisterNetEvent
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":actions:impoundVehicle"
L3_1 = L3_1 .. L4_1
L4_1 = L1_1
L2_1(L3_1, L4_1)
