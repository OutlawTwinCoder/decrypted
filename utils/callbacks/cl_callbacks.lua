local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = 0
L1_1 = {}
L2_1 = 32767
L3_1 = GetCurrentResourceName
L3_1 = L3_1()
function L4_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = L0_1
  L3_2 = L2_1
  if L2_2 < L3_2 then
    L2_2 = L0_1
    L2_2 = L2_2 + 1
    L0_1 = L2_2
  else
    L2_2 = 0
    L0_1 = L2_2
  end
  L3_2 = L0_1
  L2_2 = L1_1
  L2_2[L3_2] = A1_2
  L2_2 = TriggerServerEvent
  L3_2 = L3_1
  L4_2 = ":triggerServerCallback"
  L3_2 = L3_2 .. L4_2
  L4_2 = A0_2
  L5_2 = L0_1
  L6_2 = ...
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
TriggerServerCallback = L4_1
function L4_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = promise
  L1_2 = L1_2.new
  L1_2 = L1_2()
  L2_2 = L0_1
  L3_2 = L2_1
  if L2_2 < L3_2 then
    L2_2 = L0_1
    L2_2 = L2_2 + 1
    L0_1 = L2_2
  else
    L2_2 = 0
    L0_1 = L2_2
  end
  L3_2 = L0_1
  L2_2 = L1_1
  L2_2[L3_2] = L1_2
  L2_2 = TriggerServerEvent
  L3_2 = L3_1
  L4_2 = ":triggerServerCallback"
  L3_2 = L3_2 .. L4_2
  L4_2 = A0_2
  L5_2 = L0_1
  L6_2 = ...
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = Citizen
  L2_2 = L2_2.Await
  L3_2 = L1_2
  return L2_2(L3_2)
end
TriggerServerPromise = L4_1
function L4_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  L1_2 = L1_2(L2_2)
  if "function" == L1_2 then
    L2_2 = L1_1
    L2_2 = L2_2[A0_2]
    L3_2, L4_2 = ...
    L2_2(L3_2, L4_2)
  elseif "table" == L1_2 then
    L2_2 = L1_1
    L2_2 = L2_2[A0_2]
    L3_2 = L2_2
    L2_2 = L2_2.resolve
    L4_2 = ...
    L2_2(L3_2, L4_2)
  end
  L2_2 = L1_1
  L2_2[A0_2] = nil
end
L5_1 = RegisterNetEvent
L6_1 = L3_1
L7_1 = ":receiveServerCallback"
L6_1 = L6_1 .. L7_1
L7_1 = L4_1
L5_1(L6_1, L7_1)
