local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = canUseMarkerWithLog
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L3_2 = {}
  L4_2 = pairs
  L5_2 = JobsCreator
  L5_2 = L5_2.Markers
  L5_2 = L5_2[A2_2]
  L5_2 = L5_2.data
  L5_2 = L5_2.vehicles
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = false
    L11_2 = L0_1
    if L11_2 then
      L11_2 = L11_2[A0_2]
    end
    if L11_2 then
      L11_2 = L11_2[A2_2]
    end
    if L11_2 then
      L11_2 = L11_2[L8_2]
    end
    if L11_2 then
      L12_2 = NetworkGetEntityFromNetworkId
      L13_2 = L11_2.netId
      L12_2 = L12_2(L13_2)
      if 0 ~= L12_2 then
        L13_2 = DoesEntityExist
        L14_2 = L12_2
        L13_2 = L13_2(L14_2)
        if L13_2 then
          L13_2 = L11_2.uniqueId
          L14_2 = Utils
          L14_2 = L14_2.getUniqueEntityId
          L15_2 = L12_2
          L14_2 = L14_2(L15_2)
          if L13_2 == L14_2 then
            L10_2 = true
        end
      end
      else
        L11_2 = nil
      end
    end
    L3_2[L8_2] = L9_2
    L12_2 = L3_2[L8_2]
    L12_2.isOutside = L10_2
  end
  L4_2 = {}
  L4_2.vehicles = L3_2
  L5_2 = JobsCreator
  L5_2 = L5_2.Markers
  L5_2 = L5_2[A2_2]
  L5_2 = L5_2.data
  L5_2 = L5_2.spawnPoints
  L4_2.spawnPoints = L5_2
  L5_2 = A1_2
  L6_2 = L4_2
  L5_2(L6_2)
end
L2_1 = RegisterServerCallback
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":retrieveVehicles"
L3_1 = L3_1 .. L4_1
L4_1 = L1_1
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = source
  L4_2 = L0_1
  L5_2 = L0_1
  L5_2 = L5_2[L3_2]
  if not L5_2 then
    L5_2 = {}
  end
  L4_2[L3_2] = L5_2
  L4_2 = L0_1
  L4_2 = L4_2[L3_2]
  L5_2 = L0_1
  L5_2 = L5_2[L3_2]
  L5_2 = L5_2[A0_2]
  if not L5_2 then
    L5_2 = {}
  end
  L4_2[A0_2] = L5_2
  L4_2 = NetworkGetEntityFromNetworkId
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L5_2 = DoesEntityExist
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    return
  end
  L5_2 = L0_1
  L5_2 = L5_2[L3_2]
  L5_2 = L5_2[A0_2]
  L6_2 = {}
  L6_2.netId = A2_2
  L7_2 = Utils
  L7_2 = L7_2.getUniqueEntityId
  L8_2 = L4_2
  L7_2 = L7_2(L8_2)
  L6_2.uniqueId = L7_2
  L5_2[A1_2] = L6_2
end
L3_1 = RegisterNetEvent
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":temporary_garage:spawnedVehicle"
L4_1 = L4_1 .. L5_1
L5_1 = L2_1
L3_1(L4_1, L5_1)
L3_1 = AddEventHandler
L4_1 = "playerDropped"
function L5_1()
  local L0_2, L1_2
  L0_2 = source
  L1_2 = L0_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L1_2 = L0_1
    L1_2[L0_2] = nil
  end
end
L3_1(L4_1, L5_1)
