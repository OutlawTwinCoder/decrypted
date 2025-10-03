local L0_1, L1_1, L2_1
L0_1 = Dialogs
if not L0_1 then
  L0_1 = {}
end
Dialogs = L0_1
L0_1 = RegisterNUICallback
L1_1 = "enableCursor"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = IsNuiFocused
  L0_2 = L0_2()
  if not L0_2 then
    L0_2 = SetNuiFocus
    L1_2 = true
    L2_2 = true
    L0_2(L1_2, L2_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "disableCursor"
function L2_1()
  local L0_2, L1_2, L2_2
  L0_2 = IsNuiFocused
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = SetNuiFocus
    L1_2 = false
    L2_2 = false
    L0_2(L1_2, L2_2)
  end
end
L0_1(L1_1, L2_1)
