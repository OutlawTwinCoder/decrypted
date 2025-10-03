local L0_1, L1_1
L0_1 = JobsCreator
if not L0_1 then
  L0_1 = {}
end
JobsCreator = L0_1
L0_1 = JobsCreator
function L1_1(A0_2)
  local L1_2, L2_2
  L1_2 = "off_"
  L2_2 = A0_2
  L1_2 = L1_2 .. L2_2
  return L1_2
end
L0_1.getOffDutyName = L1_1
L0_1 = JobsCreator
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = string
  L1_2 = L1_2.gsub
  L2_2 = A0_2
  L3_2 = "off_"
  L4_2 = ""
  return L1_2(L2_2, L3_2, L4_2)
end
L0_1.getOnDutyName = L1_1
L0_1 = JobsCreator
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = string
  L1_2 = L1_2.find
  L2_2 = A0_2
  L3_2 = "off_"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = nil ~= L1_2
  return L1_2
end
L0_1.isOffDutyName = L1_1
