local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = "place_entity"
L1_1 = RegisterNUICallback
L2_1 = "nuiReady"
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "loadDialog"
  L2_2 = L0_1
  L1_2.dialogName = L2_2
  L0_2(L1_2)
end
L1_1(L2_1, L3_1)
L1_1 = nil
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A0_2 and "" ~= A0_2 and A1_2 then
    L4_2 = A2_2.x
    if L4_2 then
      L4_2 = A2_2.y
      if L4_2 then
        L4_2 = A2_2.z
        if L4_2 and A3_2 then
          goto lbl_19
        end
      end
    end
  end
  do return end
  ::lbl_19::
  L4_2 = nil
  L5_2 = Utils
  L5_2 = L5_2.loadModel
  L6_2 = A0_2
  L7_2 = 5
  L5_2(L6_2, L7_2)
  if "vehicle" == A1_2 then
    L5_2 = CreateVehicle
    L6_2 = A0_2
    L7_2 = A2_2
    L8_2 = A3_2
    L9_2 = false
    L10_2 = false
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = L5_2
  elseif "object" == A1_2 then
    L5_2 = CreateObject
    L6_2 = A0_2
    L7_2 = A2_2
    L8_2 = false
    L9_2 = false
    L10_2 = false
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L4_2 = L5_2
  elseif "ped" == A1_2 then
    L5_2 = CreatePed
    L6_2 = 4
    L7_2 = A0_2
    L8_2 = A2_2
    L9_2 = A3_2
    L10_2 = false
    L11_2 = false
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    L4_2 = L5_2
  end
  L5_2 = DoesEntityExist
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    L5_2 = notifyClient
    L6_2 = "Failed to create entity (it may be wrong model ' "
    L7_2 = tostring
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    L8_2 = " ' ?)"
    L6_2 = L6_2 .. L7_2 .. L8_2
    L5_2(L6_2)
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 2000
    L5_2(L6_2)
    return
  end
  if "ped" ~= A1_2 then
    L5_2 = SetEntityDrawOutline
    L6_2 = L4_2
    L7_2 = true
    L5_2(L6_2, L7_2)
  end
  L5_2 = FreezeEntityPosition
  L6_2 = L4_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityCollision
  L6_2 = L4_2
  L7_2 = false
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = SetEntityAlpha
  L6_2 = L4_2
  L7_2 = 150
  L8_2 = false
  L5_2(L6_2, L7_2, L8_2)
  return L4_2
end
L3_1 = {}
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L0_3 = A0_2
    if not L0_3 then
      return
    end
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = GetEntityCoords
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    L2_3 = 1
    L3_3 = A0_2
    L3_3 = #L3_3
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = A0_2
      L6_3 = L6_3[L5_3]
      L7_3 = vecFromTable
      L8_3 = L6_3.coords
      L7_3 = L7_3(L8_3)
      L8_3 = L6_3.heading
      L9_3 = L1_3 - L7_3
      L9_3 = #L9_3
      if L9_3 <= 100.0 then
        L10_3 = vector3
        L11_3 = 0.0
        L12_3 = 0.0
        L13_3 = 0.0
        L10_3 = L10_3(L11_3, L12_3, L13_3)
        if L7_3 ~= L10_3 and L8_3 then
          L10_3 = L3_1
          L10_3 = #L10_3
          L11_3 = L10_3 + 1
          L10_3 = L3_1
          L12_3 = L2_1
          L13_3 = L6_3.model
          L14_3 = L6_3.type
          L15_3 = L7_3
          L16_3 = L8_3
          L12_3 = L12_3(L13_3, L14_3, L15_3, L16_3)
          L10_3[L11_3] = L12_3
        end
      end
    end
  end
  L1_2(L2_2)
end
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = 1
  L1_2 = L3_1
  L1_2 = #L1_2
  L2_2 = 1
  for L3_2 = L0_2, L1_2, L2_2 do
    L4_2 = L3_1
    L4_2 = L4_2[L3_2]
    L5_2 = DoesEntityExist
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L5_2 = DeleteEntity
      L6_2 = L4_2
      L5_2(L6_2)
    end
  end
  L0_2 = {}
  L3_1 = L0_2
end
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L3_2 = nil
  L1_1 = L3_2
  if not A0_2 or "" == A0_2 then
    L3_2 = notifyClient
    L4_2 = "This is NOT a valid model!"
    L3_2(L4_2)
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 2000
    L3_2(L4_2)
    return
  end
  if not A1_2 then
    L3_2 = print
    L4_2 = "^1entityType not defined in placeEntity^7"
    L3_2(L4_2)
    return
  end
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = true
  L5_2 = false
  L6_2 = GetEntityCoords
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = GetEntityHeading
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L8_2 = L2_1
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = L6_2
  L12_2 = L7_2
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L1_1 = L8_2
  L8_2 = L1_1
  if not L8_2 then
    return
  end
  L8_2 = L4_1
  L9_2 = A2_2
  L8_2(L9_2)
  L8_2 = Citizen
  L8_2 = L8_2.CreateThread
  function L9_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = L4_2
      if not L0_3 then
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = Utils
      L0_3 = L0_3.getMouseWorldCoords
      L0_3 = L0_3()
      L6_2 = L0_3
      L0_3 = SetEntityCoords
      L1_3 = L1_1
      L2_3 = L6_2
      L0_3(L1_3, L2_3)
      L0_3 = A1_2
      if "object" == L0_3 then
        L0_3 = PlaceObjectOnGroundProperly
        L1_3 = L1_1
        L0_3(L1_3)
      else
        L0_3 = A1_2
        if "vehicle" == L0_3 then
          L0_3 = SetVehicleOnGroundProperly
          L1_3 = L1_1
          L0_3(L1_3)
        end
      end
      L0_3 = SetEntityHeading
      L1_3 = L1_1
      L2_3 = L7_2
      L0_3(L1_3, L2_3)
    end
  end
  L8_2(L9_2)
  L8_2 = [[
%s
%s
%s
%s]]
  L10_2 = L8_2
  L9_2 = L8_2.format
  L11_2 = getLocalizedText
  L12_2 = "place_entity:cancel"
  L11_2 = L11_2(L12_2)
  L12_2 = getLocalizedText
  L13_2 = "place_entity:heading"
  L12_2 = L12_2(L13_2)
  L13_2 = getLocalizedText
  L14_2 = "place_entity:move"
  L13_2 = L13_2(L14_2)
  L14_2 = getLocalizedText
  L15_2 = "place_entity:confirm"
  L14_2, L15_2 = L14_2(L15_2)
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L8_2 = L9_2
  while L4_2 do
    L9_2 = Citizen
    L9_2 = L9_2.Wait
    L10_2 = 0
    L9_2(L10_2)
    L9_2 = showHelpNotification
    L10_2 = L8_2
    L9_2(L10_2)
    L9_2 = IsDisabledControlJustPressed
    L10_2 = 0
    L11_2 = 241
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L7_2 = L7_2 + 5.0
    else
      L9_2 = IsDisabledControlJustPressed
      L10_2 = 0
      L11_2 = 242
      L9_2 = L9_2(L10_2, L11_2)
      if L9_2 then
        L7_2 = L7_2 - 5.0
      end
    end
    L9_2 = IsDisabledControlJustReleased
    L10_2 = 0
    L11_2 = 200
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L4_2 = false
      L5_2 = true
    end
    L9_2 = IsControlPressed
    L10_2 = 0
    L11_2 = 21
    L9_2 = L9_2(L10_2, L11_2)
    if not L9_2 then
      L9_2 = IsDisabledControlPressed
      L10_2 = 0
      L11_2 = 21
      L9_2 = L9_2(L10_2, L11_2)
      if not L9_2 then
        L9_2 = DisableAllControlActions
        L10_2 = 0
        L9_2(L10_2)
      end
    end
    L9_2 = IsDisabledControlJustReleased
    L10_2 = 0
    L11_2 = 24
    L9_2 = L9_2(L10_2, L11_2)
    if L9_2 then
      L4_2 = false
    end
    L9_2 = InvalidateIdleCam
    L9_2()
    L9_2 = InvalidateVehicleIdleCam
    L9_2()
  end
  L9_2 = L5_1
  L9_2()
  L9_2 = DeleteEntity
  L10_2 = L1_1
  L9_2(L10_2)
  if L5_2 then
    return
  end
  L9_2 = {}
  L10_2 = stripCoords
  L11_2 = L6_2
  L10_2 = L10_2(L11_2)
  L9_2.coords = L10_2
  L10_2 = string
  L10_2 = L10_2.format
  L11_2 = "%.2f"
  L12_2 = L7_2
  L10_2 = L10_2(L11_2, L12_2)
  L9_2.heading = L10_2
  return L9_2
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2
  if not A0_2 then
    A0_2 = 1
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = true
  L3_2 = false
  L4_2 = GetEntityCoords
  L5_2 = L1_2
  L4_2 = L4_2(L5_2)
  L5_2 = Citizen
  L5_2 = L5_2.CreateThread
  function L6_2()
    local L0_3, L1_3
    while true do
      L0_3 = L2_2
      if not L0_3 then
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = Utils
      L0_3 = L0_3.getMouseWorldCoords
      L0_3 = L0_3()
      L4_2 = L0_3
    end
  end
  L5_2(L6_2)
  L5_2 = [[
%s
%s
%s]]
  L7_2 = L5_2
  L6_2 = L5_2.format
  L8_2 = getLocalizedText
  L9_2 = "place_entity:cancel"
  L8_2 = L8_2(L9_2)
  L9_2 = getLocalizedText
  L10_2 = "place_entity:move"
  L9_2 = L9_2(L10_2)
  L10_2 = getLocalizedText
  L11_2 = "place_entity:confirm"
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2 = L10_2(L11_2)
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
  L5_2 = L6_2
  L6_2 = 0.0
  while L2_2 do
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = 0
    L7_2(L8_2)
    L7_2 = DrawMarker
    L8_2 = A0_2
    L9_2 = L4_2.x
    L10_2 = L4_2.y
    L11_2 = L4_2.z
    L12_2 = 0.0
    L13_2 = 0.0
    L14_2 = 0.0
    L15_2 = 0.0
    L16_2 = 0.0
    L17_2 = 0.0
    L18_2 = 1.0
    L19_2 = 1.0
    L20_2 = 1.0
    L21_2 = 255
    L22_2 = 255
    L23_2 = 255
    L24_2 = 150
    L25_2 = false
    L26_2 = true
    L27_2 = 2
    L28_2 = false
    L29_2 = false
    L30_2 = false
    L31_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2, L24_2, L25_2, L26_2, L27_2, L28_2, L29_2, L30_2, L31_2)
    L7_2 = showHelpNotification
    L8_2 = L5_2
    L7_2(L8_2)
    L7_2 = IsDisabledControlJustReleased
    L8_2 = 0
    L9_2 = 200
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L2_2 = false
      L3_2 = true
    end
    L7_2 = IsControlPressed
    L8_2 = 0
    L9_2 = 21
    L7_2 = L7_2(L8_2, L9_2)
    if not L7_2 then
      L7_2 = IsDisabledControlPressed
      L8_2 = 0
      L9_2 = 21
      L7_2 = L7_2(L8_2, L9_2)
      if not L7_2 then
        L7_2 = DisableAllControlActions
        L8_2 = 0
        L7_2(L8_2)
      end
    end
    L7_2 = IsDisabledControlJustReleased
    L8_2 = 0
    L9_2 = 24
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L2_2 = false
    end
    L7_2 = InvalidateIdleCam
    L7_2()
    L7_2 = InvalidateVehicleIdleCam
    L7_2()
  end
  if L3_2 then
    return
  end
  L7_2 = stripCoords
  L8_2 = L4_2
  return L7_2(L8_2)
end
L8_1 = RegisterNUICallback
L9_1 = "placeEntity"
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = A0_2.model
  L3_2 = A0_2.entityType
  L4_2 = A0_2.placedEntities
  L5_2 = SetNuiFocus
  L6_2 = true
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SetNuiFocusKeepInput
  L6_2 = true
  L5_2(L6_2)
  L5_2 = nil
  if L2_2 and L3_2 then
    L6_2 = L6_1
    L7_2 = L2_2
    L8_2 = L3_2
    L9_2 = L4_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L5_2 = L6_2
  else
    L6_2 = L7_1
    L7_2 = A0_2.markerType
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  end
  L6_2 = SetNuiFocus
  L7_2 = true
  L8_2 = true
  L6_2(L7_2, L8_2)
  L6_2 = SetNuiFocusKeepInput
  L7_2 = false
  L6_2(L7_2)
  L6_2 = A1_2
  L7_2 = L5_2
  L6_2(L7_2)
end
L8_1(L9_1, L10_1)
L8_1 = RegisterNetEvent
L9_1 = "onResourceStop"
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = L5_1
  L1_2()
  L1_2 = L1_1
  if L1_2 then
    L1_2 = DeleteEntity
    L2_2 = L1_1
    L1_2(L2_2)
  end
end
L8_1(L9_1, L10_1)
