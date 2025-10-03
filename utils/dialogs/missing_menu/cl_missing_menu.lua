local L0_1, L1_1, L2_1, L3_1
L0_1 = "missing_menu"
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
L1_1 = RegisterNetEvent
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":showMissingMenu"
L2_1 = L2_1 .. L3_1
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "showMissingMenuDialog"
  L0_2(L1_2)
  L0_2 = SetNuiFocus
  L1_2 = true
  L2_2 = true
  L0_2(L1_2, L2_2)
end
L1_1(L2_1, L3_1)
