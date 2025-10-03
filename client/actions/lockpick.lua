local L0_1, L1_1, L2_1, L3_1, L4_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetVehicleDoorLockStatus
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetVehicleDoorsLockedForPlayer
  L3_2 = A0_2
  L2_2 = 2 == L1_2 or 3 == L1_2 or L2_2
  return L2_2
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = Framework
    L3_2 = L3_2.getClosestVehicle
    L4_2 = 2.0
    L3_2 = L3_2(L4_2)
  end
  if not L3_2 then
    L4_2 = notifyClient
    L5_2 = getLocalizedText
    L6_2 = "no_car_found"
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    return
  end
  L4_2 = L0_1
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = notifyClient
    L5_2 = getLocalizedText
    L6_2 = "not_locked_vehicle"
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L5_2(L6_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    return
  end
  L4_2 = TriggerServerPromise
  L5_2 = Utils
  L5_2 = L5_2.eventsPrefix
  L6_2 = ":canLockpickVehicle"
  L5_2 = L5_2 .. L6_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L5_2 = notifyClient
    L6_2 = getLocalizedText
    L7_2 = "you_need_lockpick"
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L6_2(L7_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    return
  end
  L5_2 = config
  L5_2 = L5_2.carLockpickTime
  L5_2 = L5_2 * 1000
  L6_2 = TaskEnterVehicle
  L7_2 = L1_2
  L8_2 = L3_2
  L9_2 = 2000
  L10_2 = -1
  L11_2 = 1.0
  L12_2 = 1
  L13_2 = 0
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = Citizen
  L6_2 = L6_2.Wait
  L7_2 = 2000
  L6_2(L7_2)
  L6_2 = Dialogs
  L6_2 = L6_2.startProgressBar
  L7_2 = L5_2
  L8_2 = getLocalizedText
  L9_2 = "actions:lockpick:lockpickingVehicle"
  L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
  L6_2 = TaskStartScenarioInPlace
  L7_2 = L1_2
  L8_2 = "PROP_HUMAN_BUM_BIN"
  L9_2 = 0
  L10_2 = true
  L6_2(L7_2, L8_2, L9_2, L10_2)
  L6_2 = config
  L6_2 = L6_2.enableAlarmWhenLockpicking
  if L6_2 then
    L6_2 = SetVehicleAlarm
    L7_2 = L3_2
    L8_2 = true
    L6_2(L7_2, L8_2)
    L6_2 = SetVehicleAlarmTimeLeft
    L7_2 = L3_2
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
    L6_2 = StartVehicleAlarm
    L7_2 = L3_2
    L6_2(L7_2)
  end
  L6_2 = Citizen
  L6_2 = L6_2.Wait
  L7_2 = L5_2
  L6_2(L7_2)
  L6_2 = ClearPedTasks
  L7_2 = L1_2
  L6_2(L7_2)
  L6_2 = SetVehicleDoorsLockedForAllPlayers
  L7_2 = L3_2
  L8_2 = false
  L6_2(L7_2, L8_2)
  L6_2 = SetVehicleDoorsLocked
  L7_2 = L3_2
  L8_2 = 1
  L6_2(L7_2, L8_2)
end
L2_1 = RegisterNetEvent
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":actions:lockpickCar"
L3_1 = L3_1 .. L4_1
L4_1 = L1_1
L2_1(L3_1, L4_1)
