local L0_1, L1_1, L2_1, L3_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = JobsCreator
  L3_2 = L3_2.Markers
  L3_2 = L3_2[A2_2]
  L3_2 = L3_2.data
  if L3_2 then
    L3_2 = JobsCreator
    L3_2 = L3_2.Markers
    L3_2 = L3_2[A2_2]
    L3_2 = L3_2.data
    L3_2 = L3_2.teleportCoords
    if L3_2 then
      goto lbl_15
    end
  end
  L3_2 = nil
  ::lbl_15::
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L1_1 = RegisterServerCallback
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":getTeleportCoords"
L2_1 = L2_1 .. L3_1
L3_1 = L0_1
L1_1(L2_1, L3_1)
