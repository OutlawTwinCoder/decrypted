local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = nil
L1_1 = {}
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityHeading
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetOffsetFromEntityInWorldCoords
  L4_2 = L1_2
  L5_2 = vector3
  L6_2 = 0.0
  L7_2 = 1.0
  L8_2 = -1.0
  L5_2, L6_2, L7_2, L8_2, L9_2 = L5_2(L6_2, L7_2, L8_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = Utils
  L4_2 = L4_2.loadModel
  L5_2 = A0_2
  L6_2 = 3
  L4_2(L5_2, L6_2)
  L4_2 = CreateObject
  L5_2 = A0_2
  L6_2 = L3_2
  L7_2 = true
  L8_2 = true
  L9_2 = false
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L5_2 = PlaceObjectOnGroundProperly
  L6_2 = L4_2
  L5_2(L6_2)
  L5_2 = FreezeEntityPosition
  L6_2 = L4_2
  L7_2 = true
  L5_2(L6_2, L7_2)
  L5_2 = SetEntityHeading
  L6_2 = L4_2
  L7_2 = L2_2
  L5_2(L6_2, L7_2)
  L5_2 = Entity
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.state
  L6_2 = L5_2
  L5_2 = L5_2.set
  L7_2 = "isJobsCreatorObject"
  L8_2 = true
  L9_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = Entity
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.state
  L6_2 = L5_2
  L5_2 = L5_2.set
  L7_2 = "serverIdWhoPlacedObject"
  L8_2 = GetPlayerServerId
  L9_2 = PlayerId
  L9_2 = L9_2()
  L8_2 = L8_2(L9_2)
  L9_2 = true
  L5_2(L6_2, L7_2, L8_2, L9_2)
  L5_2 = GetHashKey
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = L1_1
  L7_2 = L1_1
  L7_2 = L7_2[L5_2]
  if L7_2 then
    L7_2 = L1_1
    L7_2 = L7_2[L5_2]
    L7_2 = L7_2 + 1
    if L7_2 then
      goto lbl_73
    end
  end
  L7_2 = 1
  ::lbl_73::
  L6_2[L5_2] = L7_2
end
L3_1 = RegisterNetEvent
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":placedObjectsHasBeenDeleted"
L4_1 = L4_1 .. L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = L1_1
    L1_2 = L1_2[A0_2]
    if not (L1_2 <= 0) then
      goto lbl_10
    end
  end
  do return end
  ::lbl_10::
  L1_2 = L1_1
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2 - 1
  L1_2[A0_2] = L2_2
end
L3_1(L4_1, L5_1)
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = nil
  L3_2 = nil
  L4_2 = GetGamePool
  L5_2 = "CObject"
  L4_2 = L4_2(L5_2)
  L5_2 = 1
  L6_2 = #L4_2
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L4_2[L8_2]
    L10_2 = Entity
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L10_2 = L10_2.state
    L10_2 = L10_2.isJobsCreatorObject
    if L10_2 then
      L10_2 = GetEntityCoords
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L11_2 = L1_2 - L10_2
      L11_2 = #L11_2
      if not L3_2 or L3_2 > L11_2 then
        L2_2 = L9_2
        L3_2 = L11_2
      end
    end
  end
  if L2_2 and L3_2 <= 3.0 then
    L5_2 = TriggerServerEvent
    L6_2 = Utils
    L6_2 = L6_2.eventsPrefix
    L7_2 = ":deletePlacedObject"
    L6_2 = L6_2 .. L7_2
    L7_2 = ObjToNet
    L8_2 = L2_2
    L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  else
    L5_2 = notifyClient
    L6_2 = getLocalizedText
    L7_2 = "no_object_found"
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L6_2(L7_2)
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  end
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = Utils
  L3_2 = L3_2.loadModel
  L4_2 = A0_2
  L5_2 = 3
  L3_2(L4_2, L5_2)
  L3_2 = CreateObject
  L4_2 = A0_2
  L5_2 = L2_2
  L6_2 = false
  L7_2 = false
  L8_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  L4_2 = SetEntityAlpha
  L5_2 = L3_2
  L6_2 = 100
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetEntityCollision
  L5_2 = L3_2
  L6_2 = false
  L7_2 = false
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = SetCanClimbOnEntity
  L5_2 = L3_2
  L6_2 = false
  L4_2(L5_2, L6_2)
  while true do
    L4_2 = L0_1
    if L4_2 ~= A0_2 then
      break
    end
    L4_2 = Citizen
    L4_2 = L4_2.Wait
    L5_2 = 0
    L4_2(L5_2)
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = GetOffsetFromEntityInWorldCoords
    L6_2 = L4_2
    L7_2 = vector3
    L8_2 = 0.0
    L9_2 = 1.0
    L10_2 = -1.0
    L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2, L9_2, L10_2)
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    L6_2 = GetEntityHeading
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = SetEntityCoords
    L8_2 = L3_2
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L7_2 = SetEntityHeading
    L8_2 = L3_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = PlaceObjectOnGroundProperly
    L8_2 = L3_2
    L7_2(L8_2)
  end
  L4_2 = DeleteEntity
  L5_2 = L3_2
  L4_2(L5_2)
end
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = JobsCreator
  L0_2 = L0_2.activeActions
  L0_2 = L0_2.placeableObjects
  L1_2 = {}
  L2_2 = {}
  L3_2 = getLocalizedText
  L4_2 = "delete_object"
  L3_2 = L3_2(L4_2)
  L2_2.label = L3_2
  L2_2.value = "delete_object"
  L1_2[1] = L2_2
  L2_2 = pairs
  L3_2 = L0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = L1_2
    L10_2 = {}
    L11_2 = L7_2.label
    L10_2.label = L11_2
    L10_2.value = L6_2
    L8_2(L9_2, L10_2)
  end
  L2_2 = Utils
  L2_2 = L2_2.openInteractionMenu
  L3_2 = "placeable_objects"
  L4_2 = getLocalizedText
  L5_2 = "actions_menu"
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = A2_3.value
    if "delete_object" == L3_3 then
      L4_3 = L3_1
      L4_3()
    else
      L4_3 = GetHashKey
      L5_3 = L3_3
      L4_3 = L4_3(L5_3)
      L5_3 = L1_1
      L5_3 = L5_3[L4_3]
      if L5_3 then
        L5_3 = L1_1
        L5_3 = L5_3[L4_3]
        L6_3 = L0_2
        L6_3 = L6_3[L3_3]
        L6_3 = L6_3.limit
        if L5_3 >= L6_3 then
          L5_3 = notifyClient
          L6_3 = getLocalizedText
          L7_3 = "limit_reached"
          L6_3, L7_3 = L6_3(L7_3)
          L5_3(L6_3, L7_3)
          return
      end
      else
        L5_3 = L2_1
        L6_3 = L3_3
        L5_3(L6_3)
      end
    end
  end
  function L7_2(A0_3)
    local L1_3, L2_3
    L1_3 = nil
    L0_1 = L1_3
    L1_3 = Utils
    L1_3 = L1_3.openInteractionMenu
    L2_3 = "actions"
    L1_3(L2_3)
  end
  function L8_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3
    L3_3 = A2_3.value
    if "delete_object" == L3_3 then
      L3_3 = nil
      L0_1 = L3_3
      return
    end
    L3_3 = A2_3.value
    L0_1 = L3_3
    L3_3 = L4_1
    L4_3 = L0_1
    L3_3(L4_3)
  end
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
end
L6_1 = RegisterNetEvent
L7_1 = Utils
L7_1 = L7_1.eventsPrefix
L8_1 = ":actions:placeObject"
L7_1 = L7_1 .. L8_1
L8_1 = L5_1
L6_1(L7_1, L8_1)
