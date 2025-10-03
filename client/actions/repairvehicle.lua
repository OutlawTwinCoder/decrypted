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
  L2_2 = A0_2 or L2_2
  if not A0_2 then
    L2_2 = Framework
    L2_2 = L2_2.getClosestVehicle
    L3_2 = 3.0
    L2_2 = L2_2(L3_2)
  end
  if not L2_2 then
    L3_2 = notifyClient
    L4_2 = getLocalizedText
    L5_2 = "actions:no_vehicles_close"
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    return
  end
  L3_2 = TriggerServerPromise
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":canRepairVehicle"
  L4_2 = L4_2 .. L5_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L4_2 = true
  L0_1 = L4_2
  L4_2 = TaskTurnPedToFaceEntity
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = 1500
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Citizen
  L4_2 = L4_2.Wait
  L5_2 = 1500
  L4_2(L5_2)
  L4_2 = 15000
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
  L8_2 = "actions:repairing_vehicle"
  L7_2, L8_2, L9_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = Citizen
  L5_2 = L5_2.Wait
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = GetVehicleFuelLevel
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = SetVehicleFixed
  L7_2 = L2_2
  L6_2(L7_2)
  L6_2 = SetEntityHealth
  L7_2 = L2_2
  L8_2 = GetEntityMaxHealth
  L9_2 = L2_2
  L8_2, L9_2 = L8_2(L9_2)
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = SetVehicleDeformationFixed
  L7_2 = L2_2
  L6_2(L7_2)
  L6_2 = TriggerEvent
  L7_2 = Utils
  L7_2 = L7_2.eventsPrefix
  L8_2 = ":vehicleRepaired"
  L7_2 = L7_2 .. L8_2
  L8_2 = L2_2
  L6_2(L7_2, L8_2)
  L6_2 = SetVehicleFuelLevel
  L7_2 = L2_2
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = ClearPedTasks
  L7_2 = L1_2
  L6_2(L7_2)
  L6_2 = false
  L0_1 = L6_2
end
L2_1 = RegisterNetEvent
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":actions:repairVehicle"
L3_1 = L3_1 .. L4_1
L4_1 = L1_1
L2_1(L3_1, L4_1)
