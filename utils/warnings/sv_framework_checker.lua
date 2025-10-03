local L0_1, L1_1, L2_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetResourceState
  L1_2 = Utils
  L1_2 = L1_2.getScriptName
  L2_2 = "es_extended"
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2)
  if "missing" ~= L0_2 then
    L0_2 = "ESX"
    return L0_2
  else
    L0_2 = GetResourceState
    L1_2 = Utils
    L1_2 = L1_2.getScriptName
    L2_2 = "qb-core"
    L1_2, L2_2, L3_2 = L1_2(L2_2)
    L0_2 = L0_2(L1_2, L2_2, L3_2)
    if "missing" ~= L0_2 then
      L0_2 = "QB-core"
      return L0_2
    end
  end
  L0_2 = print
  L1_2 = "--------------------------"
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "^1Couldn't find any server framework^7"
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "^1If you renamed the folder of your framework script, make sure to change it in "
  L2_2 = GetCurrentResourceName
  L2_2 = L2_2()
  L3_2 = "/integrations/sh_integrations.lua^7"
  L1_2 = L1_2 .. L2_2 .. L3_2
  L0_2(L1_2)
  L0_2 = print
  L1_2 = "--------------------------"
  L0_2(L1_2)
  L0_2 = nil
  return L0_2
end
L1_1 = Citizen
L1_1 = L1_1.CreateThread
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L0_1
  L0_2 = L0_2()
  if L0_2 then
    L1_2 = CURRENT_FRAMEWORK
    if L1_2 ~= L0_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  while true do
    L1_2 = print
    L2_2 = "^1"
    L1_2(L2_2)
    L1_2 = print
    L2_2 = "====================================="
    L1_2(L2_2)
    L1_2 = print
    L2_2 = "You are trying to use the ^4"
    L3_2 = CURRENT_FRAMEWORK
    L4_2 = "^1 of ^4"
    L5_2 = GetCurrentResourceName
    L5_2 = L5_2()
    L6_2 = "^1, but you have ^4"
    L7_2 = L0_2
    L8_2 = "^1 framework"
    L2_2 = L2_2 .. L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
    L1_2(L2_2)
    L1_2 = print
    L2_2 = "- If you have the correct version in ^3FiveM keymaster^1, please download it and use that one"
    L1_2(L2_2)
    L1_2 = print
    L2_2 = "- If you don't have the correct version in ^3FiveM keymaster^1, you can purchase it in ^2jaksam's store^1"
    L1_2(L2_2)
    L1_2 = print
    L2_2 = "====================================="
    L1_2(L2_2)
    L1_2 = print
    L2_2 = "^7"
    L1_2(L2_2)
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 5000
    L1_2(L2_2)
  end
end
L1_1(L2_1)
