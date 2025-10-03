local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
L1_1 = GetCurrentResourceName
L1_1 = L1_1()
function L2_1(A0_2, A1_2)
  local L2_2
  L2_2 = L0_1
  L2_2[A0_2] = A1_2
end
RegisterServerCallback = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = pairs
  L2_2 = ESX
  L2_2 = L2_2.ServerCallbacks
  L2_2 = L2_2[A0_2]
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    if "__cfx_functionReference" == L5_2 then
      L7_2 = ESX
      L7_2 = L7_2.ServerCallbacks
      L7_2 = L7_2[A0_2]
      return L7_2
    end
  end
  L1_2 = ESX
  L1_2 = L1_2.ServerCallbacks
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.cb
  return L1_2
end
function L3_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = source
  L3_2 = nil
  L4_2 = L0_1
  L4_2 = L4_2[A0_2]
  if not L4_2 then
    L4_2 = ESX
    if L4_2 then
      L4_2 = ESX
      L4_2 = L4_2.ServerCallbacks
      if L4_2 then
        L4_2 = ESX
        L4_2 = L4_2.ServerCallbacks
        L4_2 = L4_2[A0_2]
        if L4_2 then
          L4_2 = L2_1
          L5_2 = A0_2
          L4_2 = L4_2(L5_2)
          L3_2 = L4_2
        else
          L4_2 = print
          L5_2 = "No callback registered for event "
          L6_2 = A0_2
          L5_2 = L5_2 .. L6_2
          L4_2(L5_2)
          return
        end
      else
        L4_2 = print
        L5_2 = "ESX.ServerCallbacks table is empty"
        L4_2(L5_2)
        return
      end
    else
      L4_2 = print
      L5_2 = "No callback registered for event "
      L6_2 = A0_2
      L7_2 = " and ESX is not available"
      L5_2 = L5_2 .. L6_2 .. L7_2
      L4_2(L5_2)
      return
    end
  else
    L4_2 = L0_1
    L3_2 = L4_2[A0_2]
  end
  L4_2 = L3_2
  L5_2 = L2_2
  function L6_2(...)
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = TriggerClientEvent
    L1_3 = L1_1
    L2_3 = ":receiveServerCallback"
    L1_3 = L1_3 .. L2_3
    L2_3 = L2_2
    L3_3 = A1_2
    L4_3 = ...
    L0_3(L1_3, L2_3, L3_3, L4_3)
  end
  L7_2 = ...
  L4_2(L5_2, L6_2, L7_2)
end
L4_1 = RegisterNetEvent
L5_1 = L1_1
L6_1 = ":triggerServerCallback"
L5_1 = L5_1 .. L6_1
L6_1 = L3_1
L4_1(L5_1, L6_1)
