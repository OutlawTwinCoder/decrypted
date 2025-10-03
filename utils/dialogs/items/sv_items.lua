local L0_1, L1_1, L2_1
L0_1 = RegisterServerCallback
L1_1 = Utils
L1_1 = L1_1.eventsPrefix
L2_1 = ":getAllItemsList"
L1_1 = L1_1 .. L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
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
  L2_2 = Framework
  L2_2 = L2_2.getAllItems
  L2_2 = L2_2()
  if L2_2 then
    L3_2 = type
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if "table" == L3_2 then
      goto lbl_26
    end
  end
  L3_2 = A1_2
  L4_2 = {}
  L3_2(L4_2)
  do return end
  ::lbl_26::
  L3_2 = {}
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    if L9_2 then
      L10_2 = type
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      if "table" == L10_2 then
        L10_2 = #L3_2
        L10_2 = L10_2 + 1
        L11_2 = {}
        L12_2 = L9_2.label
        if not L12_2 then
          L12_2 = "Unknown"
        end
        L11_2.label = L12_2
        L11_2.type = "item"
        L12_2 = L9_2.name
        if not L12_2 then
          L12_2 = L8_2
        end
        L11_2.name = L12_2
        L3_2[L10_2] = L11_2
      end
    end
  end
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L0_1(L1_1, L2_1)
