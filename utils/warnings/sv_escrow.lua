local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = GetCurrentResourceName
L0_1 = L0_1()
L1_1 = {}
L2_1 = "Error parsing script @"
L3_1 = L0_1
L4_1 = "/"
L2_1 = L2_1 .. L3_1 .. L4_1
L3_1 = "Failed to verify protected resource "
L4_1 = L0_1
L3_1 = L3_1 .. L4_1
L1_1[1] = L2_1
L1_1[2] = L3_1
L2_1 = Citizen
L2_1 = L2_1.CreateThread
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = GetConsoleBuffer
  L0_2 = L0_2()
  L1_2 = nil
  L2_2 = 1
  L3_2 = L1_1
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L7_2 = L0_2
    L6_2 = L0_2.find
    L8_2 = L1_1
    L8_2 = L8_2[L5_2]
    L6_2 = L6_2(L7_2, L8_2)
    L1_2 = L6_2
    if L1_2 then
      break
    end
  end
  if not L1_2 then
    return
  end
  L3_2 = L0_2
  L2_2 = L0_2.sub
  L4_2 = L1_2
  L6_2 = L0_2
  L5_2 = L0_2.find
  L7_2 = "\n"
  L8_2 = L1_2
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L5_2 = L5_2 - 1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L4_2 = L2_2
  L3_2 = L2_2.match
  L5_2 = "Error parsing script.*@(.*)"
  L3_2 = L3_2(L4_2, L5_2)
  while true do
    L4_2 = Citizen
    L4_2 = L4_2.Wait
    L5_2 = 5000
    L4_2(L5_2)
    L4_2 = print
    L5_2 = "^1"
    L4_2(L5_2)
    L4_2 = print
    L5_2 = "====================================="
    L4_2(L5_2)
    L4_2 = print
    L5_2 = "ESCROW/SYNTAX ERROR DETECTED FOR "
    L6_2 = L0_1
    L5_2 = L5_2 .. L6_2
    L4_2(L5_2)
    L4_2 = print
    L5_2 = "This error does NOT depend on the script, there is something wrong in "
    L6_2 = L0_1
    L7_2 = " files"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    L4_2 = print
    L5_2 = "The most common issue is a virus or syntax error in this file: ^3"
    L6_2 = L3_2
    L7_2 = "^1\n"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
    L4_2 = print
    L5_2 = "Visit the OutlawTwinCoder documentation for troubleshooting guidance."
    L4_2(L5_2)
    L4_2 = print
    L5_2 = "====================================="
    L4_2(L5_2)
    L4_2 = print
    L5_2 = "^7"
    L4_2(L5_2)
  end
end
L2_1(L3_1)
