local L0_1, L1_1
L0_1 = Dialogs
if not L0_1 then
  L0_1 = {}
end
Dialogs = L0_1
L0_1 = Dialogs
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = GetPlayerIdentifiers
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = 1
  L5_2 = #L2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_2[L7_2]
    L9_2 = string
    L9_2 = L9_2.match
    L10_2 = L8_2
    L11_2 = "(.+):(.+)"
    L9_2, L10_2 = L9_2(L10_2, L11_2)
    L3_2[L9_2] = L10_2
  end
  L4_2 = TriggerClientEvent
  L5_2 = Utils
  L5_2 = L5_2.eventsPrefix
  L6_2 = ":dialogs:notAllowed"
  L5_2 = L5_2 .. L6_2
  L6_2 = A0_2
  L7_2 = A1_2
  L8_2 = L3_2
  L9_2 = GetPlayerName
  L10_2 = A0_2
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
end
L0_1.showNotAllowedMenu = L1_1
