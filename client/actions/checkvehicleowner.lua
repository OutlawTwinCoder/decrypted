local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = 6000
L1_1 = "prop_cs_tablet"
L2_1 = "amb@code_human_in_bus_passenger_idles@female@tablet@base"
L3_1 = "base"
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2 or L3_2
  if not A0_2 then
    L3_2 = Framework
    L3_2 = L3_2.getClosestVehicle
    L4_2 = 3.0
    L3_2 = L3_2(L4_2)
  end
  if not L3_2 then
    L4_2 = notifyClient
    L5_2 = getLocalizedText
    L6_2 = "actions:checkVehicleOwner:car_not_found"
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L5_2(L6_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    return
  end
  while true do
    L4_2 = HasAnimDictLoaded
    L5_2 = L2_1
    L4_2 = L4_2(L5_2)
    if L4_2 then
      break
    end
    L4_2 = Citizen
    L4_2 = L4_2.Wait
    L5_2 = 0
    L4_2(L5_2)
    L4_2 = RequestAnimDict
    L5_2 = L2_1
    L4_2(L5_2)
  end
  while true do
    L4_2 = HasModelLoaded
    L5_2 = L1_1
    L4_2 = L4_2(L5_2)
    if L4_2 then
      break
    end
    L4_2 = Citizen
    L4_2 = L4_2.Wait
    L5_2 = 0
    L4_2(L5_2)
    L4_2 = RequestModel
    L5_2 = L1_1
    L4_2(L5_2)
  end
  L4_2 = CreateObject
  L5_2 = L1_1
  L6_2 = 0.0
  L7_2 = 0.0
  L8_2 = 0.0
  L9_2 = true
  L10_2 = true
  L11_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = GetPedBoneIndex
  L6_2 = L1_2
  L7_2 = 60309
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = SetCurrentPedWeapon
  L7_2 = L1_2
  L8_2 = "WEAPON_UNARMED"
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = AttachEntityToEntity
  L7_2 = L4_2
  L8_2 = L1_2
  L9_2 = L5_2
  L10_2 = vector3
  L11_2 = 0.03
  L12_2 = 0.002
  L13_2 = 0.0
  L10_2 = L10_2(L11_2, L12_2, L13_2)
  L11_2 = vector3
  L12_2 = 10.0
  L13_2 = 160.0
  L14_2 = 0.0
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = true
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L16_2 = 2
  L17_2 = true
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L6_2 = SetModelAsNoLongerNeeded
  L7_2 = L1_1
  L6_2(L7_2)
  L6_2 = TaskPlayAnim
  L7_2 = L1_2
  L8_2 = L2_1
  L9_2 = L3_1
  L10_2 = 4.0
  L11_2 = -4.0
  L12_2 = L0_1
  L13_2 = 16
  L14_2 = 0
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L6_2 = Citizen
  L6_2 = L6_2.Wait
  L7_2 = L0_1
  L6_2(L7_2)
  L6_2 = DeleteObject
  L7_2 = L4_2
  L6_2(L7_2)
  L6_2 = GetVehicleNumberPlateText
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = TriggerServerEvent
  L8_2 = Utils
  L8_2 = L8_2.eventsPrefix
  L9_2 = ":actions:getVehicleOwner"
  L8_2 = L8_2 .. L9_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
L5_1 = RegisterNetEvent
L6_1 = Utils
L6_1 = L6_1.eventsPrefix
L7_1 = ":actions:checkVehicleOwner"
L6_1 = L6_1 .. L7_1
L7_1 = L4_1
L5_1(L6_1, L7_1)
