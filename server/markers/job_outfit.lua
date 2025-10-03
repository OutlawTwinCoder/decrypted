local L0_1, L1_1, L2_1, L3_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = canUseMarkerWithLog
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L3_2 = Framework
  L3_2 = L3_2.getPlayerJobName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = Framework
  L4_2 = L4_2.getPlayerJobGrade
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = JobsCreator
  L5_2 = L5_2.Markers
  L5_2 = L5_2[A2_2]
  L5_2 = L5_2.data
  if not L5_2 then
    L5_2 = {}
  end
  L6_2 = A1_2
  L7_2 = L5_2.outfits
  L6_2(L7_2)
end
L1_1 = RegisterServerCallback
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":getJobOutfits"
L2_1 = L2_1 .. L3_1
L3_1 = L0_1
L1_1(L2_1, L3_1)
