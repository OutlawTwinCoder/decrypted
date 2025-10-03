local L0_1, L1_1, L2_1, L3_1
L0_1 = "jobs"
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
L1_1 = RegisterNUICallback
L2_1 = "getAllJobs"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerPromise
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":getAllJobs"
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
