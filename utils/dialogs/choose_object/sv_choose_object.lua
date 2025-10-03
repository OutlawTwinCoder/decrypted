local L0_1, L1_1, L2_1
L0_1 = RegisterServerCallback
L1_1 = Utils
L1_1 = L1_1.eventsPrefix
L2_1 = ":getAllObjects"
L1_1 = L1_1 .. L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
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
  L2_2 = {}
  L3_2 = Framework
  L3_2 = L3_2.getAllItems
  L3_2 = L3_2()
  if not L3_2 then
    L3_2 = {}
  end
  L4_2 = type
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if "table" ~= L4_2 then
    L4_2 = print
    L5_2 = "^1Framework.getAllItems() returned "
    L6_2 = tostring
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    L7_2 = "("
    L8_2 = type
    L9_2 = L3_2
    L8_2 = L8_2(L9_2)
    L9_2 = ", the framework MUST return a table)^7"
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    L4_2(L5_2)
    L4_2 = {}
    L3_2 = L4_2
  end
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L2_2
    L12_2 = {}
    L13_2 = L8_2 or L13_2
    if not L8_2 then
      L13_2 = "not_valid"
    end
    L12_2.name = L13_2
    L13_2 = L9_2.label
    if not L13_2 then
      L13_2 = "Uknown"
    end
    L12_2.label = L13_2
    L12_2.type = "item"
    L10_2(L11_2, L12_2)
  end
  L4_2 = Framework
  L4_2 = L4_2.getAllWeapons
  L4_2 = L4_2()
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = type
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  if "table" ~= L5_2 then
    L5_2 = print
    L6_2 = "^1Framework.getAllWeapons() returned "
    L7_2 = tostring
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    L8_2 = "("
    L9_2 = type
    L10_2 = L4_2
    L9_2 = L9_2(L10_2)
    L10_2 = ", the framework MUST return a table)^7"
    L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2
    L5_2(L6_2)
    L5_2 = {}
    L4_2 = L5_2
  end
  L5_2 = pairs
  L6_2 = L4_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L2_2
    L13_2 = {}
    L14_2 = L10_2.name
    if not L14_2 then
      L14_2 = "not_valid"
    end
    L13_2.name = L14_2
    L14_2 = L10_2.label
    if not L14_2 then
      L14_2 = "Uknown"
    end
    L13_2.label = L14_2
    L13_2.type = "weapon"
    L11_2(L12_2, L13_2)
  end
  L5_2 = Framework
  L5_2 = L5_2.getAllAccounts
  L5_2 = L5_2()
  if not L5_2 then
    L5_2 = {}
  end
  L6_2 = type
  L7_2 = L5_2
  L6_2 = L6_2(L7_2)
  if "table" ~= L6_2 then
    L6_2 = print
    L7_2 = "^1Framework.getAllAccounts() returned "
    L8_2 = tostring
    L9_2 = L5_2
    L8_2 = L8_2(L9_2)
    L9_2 = "("
    L10_2 = type
    L11_2 = L5_2
    L10_2 = L10_2(L11_2)
    L11_2 = ", the framework MUST return a table)^7"
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
    L6_2(L7_2)
    L6_2 = {}
    L5_2 = L6_2
  end
  L6_2 = pairs
  L7_2 = L5_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = type
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    if "table" == L12_2 then
      L12_2 = L11_2.label
      if L12_2 then
        goto lbl_157
      end
    end
    L12_2 = Utils
    L12_2 = L12_2.firstToUpper
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    ::lbl_157::
    L13_2 = Framework
    L13_2 = L13_2.getFramework
    L13_2 = L13_2()
    if "QB-core" == L13_2 then
      L13_2 = Utils
      L13_2 = L13_2.firstToUpper
      L14_2 = L10_2
      L13_2 = L13_2(L14_2)
      L12_2 = L13_2
    end
    L13_2 = table
    L13_2 = L13_2.insert
    L14_2 = L2_2
    L15_2 = {}
    L16_2 = L10_2 or L16_2
    if not L10_2 then
      L16_2 = "not_valid"
    end
    L15_2.name = L16_2
    L16_2 = L12_2 or L16_2
    if not L12_2 then
      L16_2 = "Uknown"
    end
    L15_2.label = L16_2
    L15_2.type = "account"
    L13_2(L14_2, L15_2)
  end
  L6_2 = A1_2
  L7_2 = L2_2
  L6_2(L7_2)
end
L0_1(L1_1, L2_1)
