local L0_1, L1_1, L2_1, L3_1
L0_1 = "not_allowed"
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
L3_1 = ":dialogs:notAllowed"
L2_1 = L2_1 .. L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "showNotAllowedDialog"
  L4_2.acePermission = A0_2
  L4_2.playerIdentifiers = A1_2
  L4_2.playerName = A2_2
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
