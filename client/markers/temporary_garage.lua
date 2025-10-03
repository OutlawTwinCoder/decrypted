local L0_1, L1_1, L2_1
L0_1 = "temporary_garage"
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = TriggerServerPromise
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":retrieveVehicles"
  L2_2 = L2_2 .. L3_2
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2.vehicles
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.isOutside
    L10_2 = getVehicleNameFromModel
    L11_2 = L7_2
    L10_2 = L10_2(L11_2)
    if L9_2 then
      L11_2 = getLocalizedText
      L12_2 = "buyable_vehicle:outside"
      L13_2 = L10_2
      L11_2 = L11_2(L12_2, L13_2)
      L10_2 = L11_2
    end
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L2_2
    L13_2 = {}
    L13_2.label = L10_2
    L13_2.value = L7_2
    L13_2.vehicleData = L8_2
    L13_2.isOutside = L9_2
    L11_2(L12_2, L13_2)
  end
  L3_2 = #L2_2
  if 0 == L3_2 then
    L3_2 = table
    L3_2 = L3_2.insert
    L4_2 = L2_2
    L5_2 = {}
    L6_2 = getLocalizedText
    L7_2 = "no_vehicle"
    L6_2 = L6_2(L7_2)
    L5_2.label = L6_2
    L3_2(L4_2, L5_2)
  end
  L3_2 = Utils
  L3_2 = L3_2.openInteractionMenu
  L4_2 = "garage_vehicles"
  L5_2 = getLocalizedText
  L6_2 = "garage"
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L3_3 = A2_3.value
    if L3_3 then
      L4_3 = A2_3.isOutside
      if not L4_3 then
        goto lbl_8
      end
    end
    do return end
    ::lbl_8::
    L4_3 = A2_3.vehicleData
    L5_3 = getFreeSpawnpoint
    L6_3 = L1_2.spawnPoints
    L5_3 = L5_3(L6_3)
    if not L5_3 then
      L6_3 = notifyClient
      L7_3 = getLocalizedText
      L8_3 = "no_free_spawnpoints"
      L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3 = L7_3(L8_3)
      L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
      return
    end
    L6_3 = Utils
    L6_3 = L6_3.hideInteractionMenu
    L6_3()
    openedMenu = nil
    L6_3 = RequestModel
    L7_3 = L3_3
    L6_3(L7_3)
    while true do
      L6_3 = HasModelLoaded
      L7_3 = L3_3
      L6_3 = L6_3(L7_3)
      if L6_3 then
        break
      end
      L6_3 = Citizen
      L6_3 = L6_3.Wait
      L7_3 = 0
      L6_3(L7_3)
    end
    L6_3 = CreateVehicle
    L7_3 = L3_3
    L8_3 = L5_3.coords
    L9_3 = L5_3.heading
    L10_3 = true
    L11_3 = false
    L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3, L11_3)
    L7_3 = PlayerPedId
    L7_3 = L7_3()
    L8_3 = SetEntityAsMissionEntity
    L9_3 = L6_3
    L10_3 = true
    L11_3 = true
    L8_3(L9_3, L10_3, L11_3)
    L8_3 = TaskWarpPedIntoVehicle
    L9_3 = L7_3
    L10_3 = L6_3
    L11_3 = -1
    L8_3(L9_3, L10_3, L11_3)
    L8_3 = getRGBFromHex
    L9_3 = L4_3.primaryColor
    L8_3, L9_3, L10_3 = L8_3(L9_3)
    L11_3 = SetVehicleCustomPrimaryColour
    L12_3 = L6_3
    L13_3 = L8_3
    L14_3 = L9_3
    L15_3 = L10_3
    L11_3(L12_3, L13_3, L14_3, L15_3)
    L11_3 = getRGBFromHex
    L12_3 = L4_3.secondaryColor
    L11_3, L12_3, L13_3 = L11_3(L12_3)
    L10_3 = L13_3
    L9_3 = L12_3
    L8_3 = L11_3
    L11_3 = SetVehicleCustomSecondaryColour
    L12_3 = L6_3
    L13_3 = L8_3
    L14_3 = L9_3
    L15_3 = L10_3
    L11_3(L12_3, L13_3, L14_3, L15_3)
    L11_3 = L4_3.plate
    if not L11_3 then
      L11_3 = generatePlate
      L11_3 = L11_3()
    end
    L12_3 = SetVehicleNumberPlateText
    L13_3 = L6_3
    L14_3 = L11_3
    L12_3(L13_3, L14_3)
    L12_3 = L4_3.livery
    if L12_3 then
      L12_3 = GetVehicleLiveryCount
      L13_3 = L6_3
      L12_3 = L12_3(L13_3)
      if -1 ~= L12_3 then
        L12_3 = SetVehicleLivery
        L13_3 = L6_3
        L14_3 = L4_3.livery
        L12_3(L13_3, L14_3)
      else
        L12_3 = SetVehicleModKit
        L13_3 = L6_3
        L14_3 = 0
        L12_3(L13_3, L14_3)
        L12_3 = SetVehicleMod
        L13_3 = L6_3
        L14_3 = 48
        L15_3 = L4_3.livery
        L16_3 = false
        L12_3(L13_3, L14_3, L15_3, L16_3)
      end
    end
    L12_3 = TriggerServerEvent
    L13_3 = Utils
    L13_3 = L13_3.eventsPrefix
    L14_3 = ":temporary_garage:spawnedVehicle"
    L13_3 = L13_3 .. L14_3
    L14_3 = A0_2
    L15_3 = L3_3
    L16_3 = VehToNet
    L17_3 = L6_3
    L16_3, L17_3 = L16_3(L17_3)
    L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
    L12_3 = TriggerEvent
    L13_3 = Utils
    L13_3 = L13_3.eventsPrefix
    L14_3 = ":temporary_garage:vehicleSpawned"
    L13_3 = L13_3 .. L14_3
    L14_3 = L6_3
    L15_3 = L3_3
    L16_3 = GetVehicleNumberPlateText
    L17_3 = L6_3
    L16_3, L17_3 = L16_3(L17_3)
    L12_3(L13_3, L14_3, L15_3, L16_3, L17_3)
    L12_3 = addVehicleToOutsideVehicles
    L13_3 = L0_1
    L14_3 = L6_3
    L12_3(L13_3, L14_3)
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
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = Utils
  L1_2 = L1_2.hideInteractionMenu
  L1_2()
  L1_2 = {}
  L2_2 = {}
  L3_2 = getLocalizedText
  L4_2 = "take_vehicle"
  L3_2 = L3_2(L4_2)
  L2_2.label = L3_2
  L2_2.value = "take_vehicle"
  L3_2 = {}
  L4_2 = getLocalizedText
  L5_2 = "park_vehicle"
  L4_2 = L4_2(L5_2)
  L3_2.label = L4_2
  L3_2.value = "park_vehicle"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = Utils
  L3_2 = L3_2.openInteractionMenu
  L4_2 = "garage"
  L5_2 = getLocalizedText
  L6_2 = "garage"
  L5_2 = L5_2(L6_2)
  L6_2 = L1_2
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L3_3 = A2_3.value
    if "take_vehicle" == L3_3 then
      L4_3 = L1_1
      L5_3 = A0_2
      L4_3(L5_3)
    elseif "park_vehicle" == L3_3 then
      L4_3 = IsPedInAnyVehicle
      L5_3 = L2_2
      L6_3 = false
      L4_3 = L4_3(L5_3, L6_3)
      if L4_3 then
        L4_3 = GetVehiclePedIsIn
        L5_3 = L2_2
        L6_3 = false
        L4_3 = L4_3(L5_3, L6_3)
        if L4_3 then
          goto lbl_25
        end
      end
      L4_3 = getOutsideVehicleInRange
      L5_3 = L0_1
      L4_3 = L4_3(L5_3)
      ::lbl_25::
      L5_3 = GetVehicleNumberPlateText
      L6_3 = L4_3
      L5_3 = L5_3(L6_3)
      L6_3 = GetEntityModel
      L7_3 = L4_3
      L6_3 = L6_3(L7_3)
      L7_3 = DoesEntityExist
      L8_3 = L4_3
      L7_3 = L7_3(L8_3)
      if L7_3 then
        L7_3 = Framework
        L7_3 = L7_3.deleteVehicle
        L8_3 = L4_3
        L7_3(L8_3)
        L7_3 = deleteVehicleFromOutsideVehicles
        L8_3 = L0_1
        L9_3 = L4_3
        L7_3(L8_3, L9_3)
        L7_3 = TriggerEvent
        L8_3 = Utils
        L8_3 = L8_3.eventsPrefix
        L9_3 = ":temporary_garage:vehicleParked"
        L8_3 = L8_3 .. L9_3
        L9_3 = L6_3
        L10_3 = L5_3
        L7_3(L8_3, L9_3, L10_3)
      else
        L7_3 = notifyClient
        L8_3 = getLocalizedText
        L9_3 = "no_car_found"
        L8_3, L9_3, L10_3 = L8_3(L9_3)
        L7_3(L8_3, L9_3, L10_3)
      end
      openedMenu = nil
      L7_3 = Utils
      L7_3 = L7_3.hideInteractionMenu
      L7_3()
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
openGarage = L2_1
