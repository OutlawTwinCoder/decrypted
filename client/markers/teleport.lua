local L0_1, L1_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerCallback
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":getTeleportCoords"
  L2_2 = L2_2 .. L3_2
  function L3_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    if not A0_3 then
      return
    end
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = L1_3
    L3_3 = DoScreenFadeOut
    L4_3 = 500
    L3_3(L4_3)
    L3_3 = Citizen
    L3_3 = L3_3.Wait
    L4_3 = 750
    L3_3(L4_3)
    L3_3 = GetVehiclePedIsIn
    L4_3 = L1_3
    L5_3 = false
    L3_3 = L3_3(L4_3, L5_3)
    if L3_3 and L3_3 > 0 then
      L2_3 = L3_3
    end
    L4_3 = SetEntityCoords
    L5_3 = L2_3
    L6_3 = A0_3.x
    L6_3 = L6_3 + 0.0
    L7_3 = A0_3.y
    L7_3 = L7_3 + 0.0
    L8_3 = A0_3.z
    L8_3 = L8_3 + 0.0
    L9_3 = 0.0
    L10_3 = 0.0
    L11_3 = 0.0
    L12_3 = false
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3)
    L4_3 = Citizen
    L4_3 = L4_3.Wait
    L5_3 = 750
    L4_3(L5_3)
    L4_3 = DoScreenFadeIn
    L5_3 = 500
    L4_3(L5_3)
  end
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
teleportMarker = L0_1
