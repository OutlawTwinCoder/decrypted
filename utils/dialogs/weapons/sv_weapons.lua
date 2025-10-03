local L0_1, L1_1, L2_1
L0_1 = RegisterServerCallback
L1_1 = Utils
L1_1 = L1_1.eventsPrefix
L2_1 = ":getAllWeaponsList"
L1_1 = L1_1 .. L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Utils
  L2_2 = L2_2.isAllowed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = A1_2
    L3_2 = false
    L2_2(L3_2)
    return
  end
  L2_2 = A1_2
  L3_2 = Framework
  L3_2 = L3_2.getAllWeapons
  L3_2 = L3_2()
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
