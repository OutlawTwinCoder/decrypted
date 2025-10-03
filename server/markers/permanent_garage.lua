local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = canUseMarkerWithLog
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L3_2 = A1_2
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L4_2 = L4_2[A2_2]
  L4_2 = L4_2.data
  if not L4_2 then
    L4_2 = {}
  end
  L3_2(L4_2)
end
L4_1 = RegisterServerCallback
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":getGarageBuyableData"
L5_1 = L5_1 .. L6_1
L6_1 = L3_1
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":buyVehicleFromGarage"
L5_1 = L5_1 .. L6_1
L4_1(L5_1)
L4_1 = AddEventHandler
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":buyVehicleFromGarage"
L5_1 = L5_1 .. L6_1
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = source
  L3_2 = Framework
  L3_2 = L3_2.getPlayerCharIdentifier
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.data
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = L4_2.vehicles
  L5_2 = L5_2[A1_2]
  if L5_2 then
    L6_2 = payInSomeWay
    L7_2 = L2_2
    L8_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2)
    if L6_2 then
      L6_2 = notify
      L7_2 = L2_2
      L8_2 = getLocalizedText
      L9_2 = "bought_vehicle"
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
      L6_2 = Utils
      L6_2 = L6_2.log
      L7_2 = L2_2
      L8_2 = getLocalizedText
      L9_2 = "log_bought_vehicle"
      L8_2 = L8_2(L9_2)
      L9_2 = getLocalizedText
      L10_2 = "log_bought_vehicle_description"
      L11_2 = A1_2
      L12_2 = L5_2
      L13_2 = A0_2
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2)
      L10_2 = "success"
      L11_2 = "permanent_garage"
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      L6_2 = generatePlate
      L6_2 = L6_2()
      L7_2 = MySQL
      L7_2 = L7_2.Async
      L7_2 = L7_2.insert
      L8_2 = "INSERT INTO jobs_garages(identifier, marker_id, vehicle, vehicle_props, plate) VALUES (@identifier, @markerId, @vehicle, \"{}\", @plate)"
      L9_2 = {}
      L9_2["@identifier"] = L3_2
      L9_2["@markerId"] = A0_2
      L9_2["@vehicle"] = A1_2
      L9_2["@plate"] = L6_2
      function L10_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
        if A0_3 > 0 then
          L2_3 = L3_2
          L1_3 = L0_1
          L4_3 = L3_2
          L3_3 = L0_1
          L3_3 = L3_3[L4_3]
          if not L3_3 then
            L3_3 = {}
          end
          L1_3[L2_3] = L3_3
          L2_3 = L3_2
          L1_3 = L0_1
          L1_3 = L1_3[L2_3]
          L2_3 = A0_2
          L4_3 = L3_2
          L3_3 = L0_1
          L3_3 = L3_3[L4_3]
          L4_3 = A0_2
          L3_3 = L3_3[L4_3]
          if not L3_3 then
            L3_3 = {}
          end
          L1_3[L2_3] = L3_3
          L2_3 = L3_2
          L1_3 = L0_1
          L1_3 = L1_3[L2_3]
          L2_3 = A0_2
          L1_3 = L1_3[L2_3]
          L2_3 = {}
          L2_3.vehicleId = A0_3
          L3_3 = A1_2
          L2_3.vehicle = L3_3
          L3_3 = L3_2
          L2_3.identifier = L3_3
          L3_3 = {}
          L2_3.vehicleProps = L3_3
          L3_3 = A0_2
          L2_3.markerId = L3_3
          L3_3 = L6_2
          L2_3.plate = L3_3
          L1_3[A0_3] = L2_3
          L1_3 = TriggerEvent
          L2_3 = Utils
          L2_3 = L2_3.eventsPrefix
          L3_3 = ":permanent_garage:vehicleBought"
          L2_3 = L2_3 .. L3_3
          L3_3 = L2_2
          L4_3 = A0_2
          L5_3 = A1_2
          L6_3 = A0_3
          L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
        end
      end
      L7_2(L8_2, L9_2, L10_2)
    else
      L6_2 = notify
      L7_2 = L2_2
      L8_2 = getLocalizedText
      L9_2 = "not_enough_money"
      L8_2, L9_2, L10_2, L11_2, L12_2, L13_2 = L8_2(L9_2)
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2)
    end
  else
    L6_2 = Utils
    L6_2 = L6_2.log
    L7_2 = L2_2
    L8_2 = getLocalizedText
    L9_2 = "log_not_existing_vehicle"
    L8_2 = L8_2(L9_2)
    L9_2 = getLocalizedText
    L10_2 = "log_not_existing_vehicle_description"
    L11_2 = A1_2
    L12_2 = A0_2
    L9_2 = L9_2(L10_2, L11_2, L12_2)
    L10_2 = "error"
    L11_2 = "permanent_garage"
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
L4_1(L5_1, L6_1)
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = MySQL
  L0_2 = L0_2.Async
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT * FROM jobs_garages"
  L2_2 = {}
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    if A0_3 then
      L1_3 = pairs
      L2_3 = A0_3
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = L6_3.identifier
        L8_3 = L6_3.marker_id
        L9_3 = L6_3.vehicle_id
        L10_3 = L0_1
        L11_3 = L0_1
        L11_3 = L11_3[L7_3]
        if not L11_3 then
          L11_3 = {}
        end
        L10_3[L7_3] = L11_3
        L10_3 = L0_1
        L10_3 = L10_3[L7_3]
        L11_3 = L0_1
        L11_3 = L11_3[L7_3]
        L11_3 = L11_3[L8_3]
        if not L11_3 then
          L11_3 = {}
        end
        L10_3[L8_3] = L11_3
        L10_3 = L0_1
        L10_3 = L10_3[L7_3]
        L10_3 = L10_3[L8_3]
        L11_3 = {}
        L12_3 = L6_3.plate
        L11_3.plate = L12_3
        L11_3.markerId = L8_3
        L12_3 = L6_3.vehicle
        L11_3.vehicle = L12_3
        L12_3 = json
        L12_3 = L12_3.decode
        L13_3 = L6_3.vehicle_props
        L12_3 = L12_3(L13_3)
        L11_3.vehicleProps = L12_3
        L11_3.vehicleId = L9_3
        L10_3[L9_3] = L11_3
      end
    end
  end
  L0_2(L1_2, L2_2, L3_2)
end
getAllGaragesData = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = L2_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L2_2 = false
    return L2_2
  end
  L2_2 = L1_2.netId
  if L2_2 then
    L3_2 = true
    if L3_2 then
      goto lbl_14
    end
  end
  L3_2 = false
  ::lbl_14::
  if L3_2 then
    L4_2 = NetworkGetEntityFromNetworkId
    L5_2 = L2_2
    L4_2 = L4_2(L5_2)
    L5_2 = Utils
    L5_2 = L5_2.getUniqueEntityId
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    L6_2 = DoesEntityExist
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = L1_2.uniqueId
      if L5_2 == L6_2 then
        goto lbl_32
      end
    end
    L3_2 = false
  end
  ::lbl_32::
  return L3_2
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = Framework
  L2_2 = L2_2.getPlayerCharIdentifier
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  if L4_2 then
    L4_2 = L0_1
    L4_2 = L4_2[L2_2]
    L4_2 = L4_2[A1_2]
    if L4_2 then
      goto lbl_18
    end
  end
  L4_2 = {}
  ::lbl_18::
  L5_2 = pairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L4_1
    L12_2 = L9_2
    L11_2 = L11_2(L12_2)
    L10_2.isOutside = L11_2
    L3_2[L9_2] = L10_2
  end
  return L3_2
end
L6_1 = exports
L7_1 = "getPlayerVehiclesInMarkerId"
L8_1 = L5_1
L6_1(L7_1, L8_1)
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L5_1
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L4_2 = L4_2[A2_2]
  L4_2 = L4_2.data
  if L4_2 then
    L5_2 = A1_2
    L6_2 = {}
    L6_2.vehicles = L3_2
    L7_2 = L4_2.spawnPoints
    L6_2.spawnPoints = L7_2
    L5_2(L6_2)
  else
    L5_2 = A1_2
    L6_2 = {}
    L7_2 = {}
    L6_2.vehicles = L7_2
    L5_2(L6_2)
  end
end
L7_1 = RegisterServerCallback
L8_1 = Utils
L8_1 = L8_1.eventsPrefix
L9_1 = ":getGarageOwnedVehicles"
L8_1 = L8_1 .. L9_1
L9_1 = L6_1
L7_1(L8_1, L9_1)
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = Framework
  L6_2 = L6_2.getPlayerCharIdentifier
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = L1_1
  L7_2 = L7_2[A3_2]
  if not L7_2 then
    L8_2 = A1_2
    L9_2 = false
    L8_2(L9_2)
    return
  else
    L8_2 = L1_1
    L8_2[A3_2] = nil
    L8_2 = L2_1
    L8_2[L7_2] = nil
    L8_2 = NetworkGetEntityFromNetworkId
    L9_2 = A3_2
    L8_2 = L8_2(L9_2)
    L9_2 = TriggerClientEvent
    L10_2 = Utils
    L10_2 = L10_2.eventsPrefix
    L11_2 = ":framework:deleteVehicle"
    L10_2 = L10_2 .. L11_2
    L11_2 = NetworkGetEntityOwner
    L12_2 = L8_2
    L11_2 = L11_2(L12_2)
    L12_2 = A3_2
    L9_2(L10_2, L11_2, L12_2)
    L9_2 = A1_2
    L10_2 = true
    L9_2(L10_2)
  end
  L8_2 = MySQL
  L8_2 = L8_2.Async
  L8_2 = L8_2.execute
  L9_2 = "UPDATE jobs_garages SET vehicle_props=@props, marker_id=@markerId WHERE vehicle_id=@vehicleId AND identifier=@identifier"
  L10_2 = {}
  L11_2 = json
  L11_2 = L11_2.encode
  L12_2 = A4_2
  L11_2 = L11_2(L12_2)
  L10_2["@props"] = L11_2
  L10_2["@vehicleId"] = L7_2
  L10_2["@identifier"] = L6_2
  L10_2["@markerId"] = A2_2
  function L11_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    if A0_3 > 0 then
      L1_3 = false
      L2_3 = pairs
      L4_3 = L6_2
      L3_3 = L0_1
      L3_3 = L3_3[L4_3]
      L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
      for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
        if L1_3 then
          break
        end
        L8_3 = pairs
        L9_3 = L7_3
        L8_3, L9_3, L10_3, L11_3 = L8_3(L9_3)
        for L12_3, L13_3 in L8_3, L9_3, L10_3, L11_3 do
          L14_3 = L7_2
          if L12_3 == L14_3 then
            L15_3 = L6_2
            L14_3 = L0_1
            L14_3 = L14_3[L15_3]
            L15_3 = L13_3.markerId
            L14_3 = L14_3[L15_3]
            L15_3 = L7_2
            L14_3[L15_3] = nil
            L14_3 = A2_2
            L13_3.markerId = L14_3
            L14_3 = A4_2
            L13_3.vehicleProps = L14_3
            L15_3 = L6_2
            L14_3 = L0_1
            L14_3 = L14_3[L15_3]
            L15_3 = A2_2
            L17_3 = L6_2
            L16_3 = L0_1
            L16_3 = L16_3[L17_3]
            L17_3 = A2_2
            L16_3 = L16_3[L17_3]
            if not L16_3 then
              L16_3 = {}
            end
            L14_3[L15_3] = L16_3
            L15_3 = L6_2
            L14_3 = L0_1
            L14_3 = L14_3[L15_3]
            L15_3 = A2_2
            L14_3 = L14_3[L15_3]
            L15_3 = L7_2
            L14_3[L15_3] = L13_3
            L1_3 = true
            break
          end
        end
      end
      L2_3 = MySQL
      L2_3 = L2_3.Async
      L2_3 = L2_3.execute
      L3_3 = "UPDATE jobs_garages SET plate=@plate WHERE plate IS NULL AND vehicle_id=@vehicleId AND identifier=@identifier"
      L4_3 = {}
      L5_3 = A5_2
      L4_3["@plate"] = L5_3
      L5_3 = L7_2
      L4_3["@vehicleId"] = L5_3
      L5_3 = L6_2
      L4_3["@identifier"] = L5_3
      function L5_3(A0_4)
        local L1_4, L2_4
        if A0_4 > 0 then
          L2_4 = L6_2
          L1_4 = L0_1
          L1_4 = L1_4[L2_4]
          L2_4 = A2_2
          L1_4 = L1_4[L2_4]
          L2_4 = L7_2
          L1_4 = L1_4[L2_4]
          L2_4 = A5_2
          L1_4.plate = L2_4
        end
      end
      L2_3(L3_3, L4_3, L5_3)
    end
  end
  L8_2(L9_2, L10_2, L11_2)
end
L8_1 = RegisterServerCallback
L9_1 = Utils
L9_1 = L9_1.eventsPrefix
L10_1 = ":permanent_garage:updateVehicleProps"
L9_1 = L9_1 .. L10_1
L10_1 = L7_1
L8_1(L9_1, L10_1)
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NetworkGetEntityFromNetworkId
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = Utils
  L3_2 = L3_2.getUniqueEntityId
  L4_2 = NetworkGetEntityFromNetworkId
  L5_2 = A1_2
  L4_2, L5_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L1_1
  L4_2[A1_2] = A0_2
  L4_2 = L2_1
  L5_2 = {}
  L5_2.netId = A1_2
  L5_2.uniqueId = L3_2
  L4_2[A0_2] = L5_2
end
L9_1 = RegisterNetEvent
L10_1 = Utils
L10_1 = L10_1.eventsPrefix
L11_1 = ":permanent_garage:vehicleIdSpawned"
L10_1 = L10_1 .. L11_1
L11_1 = L8_1
L9_1(L10_1, L11_1)
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L1_2 = {}
  L2_2 = Framework
  L2_2 = L2_2.getPlayerCharIdentifier
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  if L3_2 then
    L3_2 = pairs
    L4_2 = L0_1
    L4_2 = L4_2[L2_2]
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = pairs
      L10_2 = L8_2
      L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
      for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
        L1_2[L13_2] = L14_2
      end
    end
    return L1_2
  else
    L3_2 = nil
    return L3_2
  end
end
L10_1 = exports
L11_1 = "getAllVehiclesOfPlayer"
L12_1 = L9_1
L10_1(L11_1, L12_1)
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = Framework
  L2_2 = L2_2.getPlayerCharIdentifier
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Framework
  L3_2 = L3_2.trim
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L0_1
  L4_2 = L4_2[L2_2]
  if L4_2 then
    L4_2 = pairs
    L5_2 = L0_1
    L5_2 = L5_2[L2_2]
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = pairs
      L11_2 = L9_2
      L10_2, L11_2, L12_2, L13_2 = L10_2(L11_2)
      for L14_2, L15_2 in L10_2, L11_2, L12_2, L13_2 do
        L16_2 = L15_2.plate
        if L16_2 ~= A1_2 then
          L16_2 = L15_2.plate
          if L16_2 ~= L3_2 then
            goto lbl_30
          end
        end
        L16_2 = true
        do return L16_2 end
        ::lbl_30::
      end
    end
  end
  L4_2 = false
  return L4_2
end
L11_1 = exports
L12_1 = "isPlayerOwnerOfVehiclePlate"
L13_1 = L10_1
L11_1(L12_1, L13_1)
