local L0_1, L1_1, L2_1, L3_1
L0_1 = "modules"
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
L1_1 = RegisterNUICallback
L2_1 = "getAllModules"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = Integrations
  L4_2 = L4_2.modules
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = type
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if "table" == L9_2 then
      L9_2 = #L8_2
      if L9_2 > 0 then
        L9_2 = #L2_2
        L9_2 = L9_2 + 1
        L10_2 = {}
        L10_2.type = L7_2
        L10_2.options = L8_2
        L2_2[L9_2] = L10_2
      end
    end
  end
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
