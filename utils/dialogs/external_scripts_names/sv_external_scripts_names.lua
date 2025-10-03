local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    L7_2 = #L1_2
    L7_2 = L7_2 + 1
    L8_2 = {}
    L8_2.name = L6_2
    L9_2 = GetResourceState
    L10_2 = L6_2
    L9_2 = L9_2(L10_2)
    L8_2.state = L9_2
    L9_2 = GetResourceMetadata
    L10_2 = L6_2
    L11_2 = "version"
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.version = L9_2
    L9_2 = GetResourceMetadata
    L10_2 = L6_2
    L11_2 = "author"
    L9_2 = L9_2(L10_2, L11_2)
    L8_2.author = L9_2
    L1_2[L7_2] = L8_2
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  function L4_2(A0_3, A1_3)
    local L2_3, L3_3
    L2_3 = A0_3.name
    L3_3 = A1_3.name
    L2_3 = L2_3 < L3_3
    return L2_3
  end
  L2_2(L3_2, L4_2)
  return L1_2
end
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = {}
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L1_2 = L1_2 + 10000
  while true do
    L2_2 = config
    L2_2 = L2_2.externalScriptsNames
    if L2_2 then
      break
    end
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 1000
    L2_2(L3_2)
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    if L1_2 < L2_2 then
      L2_2 = print
      L3_2 = "^7Couldn't find 'config.externalScriptsNames', update the script and REPLACE 'default_config.json' file^7"
      return L2_2(L3_2)
    end
  end
  L2_2 = pairs
  L3_2 = config
  L3_2 = L3_2.externalScriptsNames
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = #L0_2
    L8_2 = L8_2 + 1
    L0_2[L8_2] = L6_2
  end
  L2_2 = L0_1
  L3_2 = L0_2
  return L2_2(L3_2)
end
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = GetNumResources
  L0_2 = L0_2()
  L1_2 = {}
  L2_2 = 0
  L3_2 = L0_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = GetResourceByFindIndex
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = #L1_2
    L7_2 = L7_2 + 1
    L1_2[L7_2] = L6_2
  end
  L2_2 = L0_1
  L3_2 = L1_2
  return L2_2(L3_2)
end
L3_1 = RegisterServerCallback
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":getAllResources"
L4_1 = L4_1 .. L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Utils
  L2_2 = L2_2.isAllowed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A1_2
  L3_2 = L2_1
  L3_2 = L3_2()
  L2_2(L3_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterServerCallback
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":getIntegrationsResources"
L4_1 = L4_1 .. L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Utils
  L2_2 = L2_2.isAllowed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A1_2
  L3_2 = L1_1
  L3_2 = L3_2()
  L2_2(L3_2)
end
L3_1(L4_1, L5_1)
