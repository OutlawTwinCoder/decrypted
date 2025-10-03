local L0_1, L1_1, L2_1, L3_1
L0_1 = "permanent_garage"
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = TriggerServerPromise
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":getGarageBuyableData"
  L2_2 = L2_2 .. L3_2
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = L1_2.vehicles
  if L3_2 then
    L3_2 = pairs
    L4_2 = L1_2.vehicles
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = getLocalizedText
      L10_2 = "buyable_vehicle"
      L11_2 = getVehicleNameFromModel
      L12_2 = L7_2
      L11_2 = L11_2(L12_2)
      L12_2 = Framework
      L12_2 = L12_2.groupDigits
      L13_2 = L8_2
      L12_2, L13_2, L14_2 = L12_2(L13_2)
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = L2_2
      L12_2 = {}
      L12_2.label = L9_2
      L12_2.value = L7_2
      L12_2.price = L8_2
      L13_2 = getVehicleNameFromModel
      L14_2 = L7_2
      L13_2 = L13_2(L14_2)
      L12_2.vehicleLabel = L13_2
      L10_2(L11_2, L12_2)
    end
  end
  L3_2 = #L2_2
  if 0 == L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = getLocalizedText
    L7_2 = "permanent_garage:no_vehicle_to_buy"
    L6_2 = L6_2(L7_2)
    L5_2.label = L6_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = Utils
  L3_2 = L3_2.openInteractionMenu
  L4_2 = "job_garage_buyable"
  L5_2 = getLocalizedText
  L6_2 = "garage"
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L3_3 = A2_3.value
    if not L3_3 then
      return
    end
    L4_3 = A2_3.price
    L5_3 = A2_3.vehicleLabel
    L6_3 = {}
    L7_3 = {}
    L8_3 = getLocalizedText
    L9_3 = "yes"
    L8_3 = L8_3(L9_3)
    L7_3.label = L8_3
    L7_3.value = "yes"
    L8_3 = {}
    L9_3 = getLocalizedText
    L10_3 = "no"
    L9_3 = L9_3(L10_3)
    L8_3.label = L9_3
    L8_3.value = "no"
    L6_3[1] = L7_3
    L6_3[2] = L8_3
    L7_3 = Utils
    L7_3 = L7_3.openInteractionMenu
    L8_3 = "job_garage_confirm"
    L9_3 = getLocalizedText
    L10_3 = "are_you_sure"
    L11_3 = L5_3
    L12_3 = Framework
    L12_3 = L12_3.groupDigits
    L13_3 = L4_3
    L12_3, L13_3 = L12_3(L13_3)
    L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3)
    L10_3 = L6_3
    function L11_3(A0_4, A1_4, A2_4)
      local L3_4, L4_4, L5_4, L6_4
      L3_4 = Utils
      L3_4 = L3_4.hideInteractionMenu
      L3_4()
      L3_4 = A2_4.value
      if "yes" ~= L3_4 then
        return
      end
      L3_4 = TriggerServerEvent
      L4_4 = Utils
      L4_4 = L4_4.eventsPrefix
      L5_4 = ":buyVehicleFromGarage"
      L4_4 = L4_4 .. L5_4
      L5_4 = A0_2
      L6_4 = L3_3
      L3_4(L4_4, L5_4, L6_4)
      L3_4 = openGarageBuyable
      L4_4 = A0_2
      L3_4(L4_4)
    end
    function L12_3(A0_4)
      local L1_4
      L1_4 = Utils
      L1_4 = L1_4.hideInteractionMenu
      L1_4()
    end
    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3)
  end
  function L8_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = TriggerServerPromise
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":getGarageOwnedVehicles"
  L3_2 = L3_2 .. L4_2
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = {}
  L4_2 = L2_2.vehicles
  if L4_2 then
    L5_2 = pairs
    L6_2 = L4_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = L10_2.vehicle
      L12_2 = getVehicleNameFromModel
      L13_2 = L11_2
      L12_2 = L12_2(L13_2)
      L13_2 = L10_2.plate
      if L13_2 then
        L13_2 = L12_2
        L14_2 = " - "
        L15_2 = L10_2.plate
        L13_2 = L13_2 .. L14_2 .. L15_2
        L12_2 = L13_2
      end
      L13_2 = L10_2.isOutside
      if L13_2 then
        L13_2 = getLocalizedText
        L14_2 = "buyable_vehicle:outside"
        L15_2 = L12_2
        L13_2 = L13_2(L14_2, L15_2)
        L12_2 = L13_2
      end
      L13_2 = table
      L13_2 = L13_2.insert
      L14_2 = L3_2
      L15_2 = {}
      L15_2.label = L12_2
      L15_2.vehicleName = L11_2
      L16_2 = L10_2.vehicleId
      L15_2.vehicleId = L16_2
      L16_2 = L10_2.vehicleProps
      L15_2.vehicleProps = L16_2
      L16_2 = L10_2.plate
      L15_2.vehiclePlate = L16_2
      L16_2 = L10_2.isOutside
      L15_2.isOutside = L16_2
      L13_2(L14_2, L15_2)
    end
  end
  L5_2 = #L3_2
  if 0 == L5_2 then
    L5_2 = table
    L5_2 = L5_2.insert
    L6_2 = L3_2
    L7_2 = {}
    L8_2 = getLocalizedText
    L9_2 = "no_vehicles_in_garage"
    L8_2 = L8_2(L9_2)
    L7_2.label = L8_2
    L5_2(L6_2, L7_2)
  end
  L5_2 = Utils
  L5_2 = L5_2.openInteractionMenu
  L6_2 = "job_garage_owned"
  L7_2 = getLocalizedText
  L8_2 = "garage"
  L7_2 = L7_2(L8_2)
  L8_2 = L3_2
  function L9_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L3_3 = A2_3.vehicleName
    if not L3_3 then
      return
    end
    L4_3 = A2_3.isOutside
    if L4_3 then
      L4_3 = notifyClient
      L5_3 = getLocalizedText
      L6_3 = "vehicle_outside"
      L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L5_3(L6_3)
      L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      return
    end
    L4_3 = A2_3.vehicleProps
    L5_3 = A2_3.vehicleId
    L6_3 = A2_3.vehiclePlate
    L7_3 = getFreeSpawnpoint
    L8_3 = L2_2.spawnPoints
    L7_3 = L7_3(L8_3)
    if not L7_3 then
      L8_3 = notifyClient
      L9_3 = getLocalizedText
      L10_3 = "no_free_spawnpoints"
      L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3 = L9_3(L10_3)
      L8_3(L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
      return
    end
    openedMenu = nil
    L8_3 = Utils
    L8_3 = L8_3.hideInteractionMenu
    L8_3()
    L8_3 = RequestModel
    L9_3 = L3_3
    L8_3(L9_3)
    while true do
      L8_3 = HasModelLoaded
      L9_3 = L3_3
      L8_3 = L8_3(L9_3)
      if L8_3 then
        break
      end
      L8_3 = Citizen
      L8_3 = L8_3.Wait
      L9_3 = 0
      L8_3(L9_3)
    end
    L8_3 = CreateVehicle
    L9_3 = L3_3
    L10_3 = L7_3.coords
    L11_3 = L7_3.heading
    L12_3 = true
    L13_3 = false
    L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
    L9_3 = SetEntityAsMissionEntity
    L10_3 = L8_3
    L11_3 = true
    L12_3 = true
    L9_3(L10_3, L11_3, L12_3)
    L9_3 = Framework
    L9_3 = L9_3.setVehicleProperties
    L10_3 = L8_3
    L11_3 = L4_3
    L9_3(L10_3, L11_3)
    if L6_3 then
      L9_3 = SetVehicleNumberPlateText
      L10_3 = L8_3
      L11_3 = L6_3
      L9_3(L10_3, L11_3)
    end
    L9_3 = TaskEnterVehicle
    L10_3 = L1_2
    L11_3 = L8_3
    L12_3 = 1000
    L13_3 = -1
    L14_3 = 2.0
    L15_3 = 16
    L16_3 = 0
    L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L9_3 = TriggerServerEvent
    L10_3 = Utils
    L10_3 = L10_3.eventsPrefix
    L11_3 = ":permanent_garage:vehicleIdSpawned"
    L10_3 = L10_3 .. L11_3
    L11_3 = L5_3
    L12_3 = VehToNet
    L13_3 = L8_3
    L12_3, L13_3, L14_3, L15_3, L16_3 = L12_3(L13_3)
    L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L9_3 = TriggerEvent
    L10_3 = Utils
    L10_3 = L10_3.eventsPrefix
    L11_3 = ":permanent_garage:vehicleSpawned"
    L10_3 = L10_3 .. L11_3
    L11_3 = L8_3
    L12_3 = L3_3
    L13_3 = GetVehicleNumberPlateText
    L14_3 = L8_3
    L13_3, L14_3, L15_3, L16_3 = L13_3(L14_3)
    L9_3(L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3)
    L9_3 = addVehicleToOutsideVehicles
    L10_3 = L0_1
    L11_3 = L8_3
    L9_3(L10_3, L11_3)
  end
  function L10_2(A0_3)
    local L1_3
    openedMenu = nil
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = Utils
  L2_2 = L2_2.hideInteractionMenu
  L2_2()
  L2_2 = {}
  L3_2 = {}
  L4_2 = getLocalizedText
  L5_2 = "park_vehicle"
  L4_2 = L4_2(L5_2)
  L3_2.label = L4_2
  L3_2.value = "deposit"
  L4_2 = {}
  L5_2 = getLocalizedText
  L6_2 = "garage"
  L5_2 = L5_2(L6_2)
  L4_2.label = L5_2
  L4_2.value = "garage"
  L5_2 = {}
  L6_2 = getLocalizedText
  L7_2 = "buy_vehicle"
  L6_2 = L6_2(L7_2)
  L5_2.label = L6_2
  L5_2.value = "buy"
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L2_2[3] = L5_2
  L3_2 = Utils
  L3_2 = L3_2.openInteractionMenu
  L4_2 = "job_garage_options"
  L5_2 = getLocalizedText
  L6_2 = "garage"
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L3_3 = A2_3.value
    if "buy" == L3_3 then
      L4_3 = L1_1
      L5_3 = A0_2
      L4_3(L5_3)
    elseif "garage" == L3_3 then
      L4_3 = L2_1
      L5_3 = A0_2
      L4_3(L5_3)
    elseif "deposit" == L3_3 then
      L4_3 = IsPedInAnyVehicle
      L5_3 = L1_2
      L6_3 = false
      L4_3 = L4_3(L5_3, L6_3)
      if L4_3 then
        L4_3 = GetVehiclePedIsIn
        L5_3 = L1_2
        L6_3 = false
        L4_3 = L4_3(L5_3, L6_3)
        if L4_3 then
          goto lbl_31
        end
      end
      L4_3 = getOutsideVehicleInRange
      L5_3 = L0_1
      L4_3 = L4_3(L5_3)
      ::lbl_31::
      L5_3 = DoesEntityExist
      L6_3 = L4_3
      L5_3 = L5_3(L6_3)
      if not L5_3 then
        L5_3 = notifyClient
        L6_3 = getLocalizedText
        L7_3 = "no_car_found"
        L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3 = L6_3(L7_3)
        L5_3(L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
        return
      end
      L5_3 = Framework
      L5_3 = L5_3.getVehicleProperties
      L6_3 = L4_3
      L5_3 = L5_3(L6_3)
      L6_3 = GetVehicleNumberPlateText
      L7_3 = L4_3
      L6_3 = L6_3(L7_3)
      L7_3 = GetEntityModel
      L8_3 = L4_3
      L7_3 = L7_3(L8_3)
      L8_3 = TriggerServerPromise
      L9_3 = Utils
      L9_3 = L9_3.eventsPrefix
      L10_3 = ":permanent_garage:updateVehicleProps"
      L9_3 = L9_3 .. L10_3
      L10_3 = A0_2
      L11_3 = VehToNet
      L12_3 = L4_3
      L11_3 = L11_3(L12_3)
      L12_3 = L5_3
      L13_3 = L6_3
      L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3, L13_3)
      if not L8_3 then
        return
      end
      L9_3 = deleteVehicleFromOutsideVehicles
      L10_3 = L0_1
      L11_3 = L4_3
      L9_3(L10_3, L11_3)
      L9_3 = TriggerEvent
      L10_3 = Utils
      L10_3 = L10_3.eventsPrefix
      L11_3 = ":permanent_garage:vehicleParked"
      L10_3 = L10_3 .. L11_3
      L11_3 = L7_3
      L12_3 = L6_3
      L9_3(L10_3, L11_3, L12_3)
      openedMenu = nil
    end
  end
  function L8_2(A0_3)
    local L1_3
    openedMenu = nil
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
openGarageBuyable = L3_1
