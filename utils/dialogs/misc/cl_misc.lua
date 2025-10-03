local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = "misc"
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
L1_1 = "jobs_creator:intro:"
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = SetResourceKvpInt
  L2_2 = L1_1
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L3_2 = 1
  L1_2(L2_2, L3_2)
end
L3_1 = RegisterNUICallback
L4_1 = "registerIntroView"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L2_1
  L3_2 = A0_2.introName
  L2_2(L3_2)
end
L3_1(L4_1, L5_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetResourceKvpInt
  L2_2 = L1_1
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2(L2_2)
  L1_2 = 1 == L1_2
  return L1_2
end
L4_1 = RegisterNUICallback
L5_1 = "hasIntroBeenViewed"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = L3_1
  L4_2 = A0_2.introName
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
end
L4_1(L5_1, L6_1)
