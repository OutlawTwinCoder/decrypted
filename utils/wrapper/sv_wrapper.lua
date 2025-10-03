local L0_1, L1_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  if not (A0_2 and A1_2) or not A2_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = "%s/%s"
  L4_2 = L3_2
  L3_2 = L3_2.format
  L5_2 = GetResourcePath
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = exports
  L5_2 = GetCurrentResourceName
  L5_2 = L5_2()
  L4_2 = L4_2[L5_2]
  L5_2 = L4_2
  L4_2 = L4_2.SaveResourceFile
  L6_2 = L3_2
  L7_2 = A2_2
  return L4_2(L5_2, L6_2, L7_2)
end
SaveResourceFile = L0_1
