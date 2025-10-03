local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = ESX
  L2_2 = L2_2.GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = pairs
  L5_2 = config
  L5_2 = L5_2.depositableInSafeAccounts
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L2_2.getAccount
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if L10_2 then
      L11_2 = L10_2.money
      if L11_2 > 0 then
        L12_2 = getLocalizedText
        L13_2 = "account"
        L14_2 = L10_2.label
        if not L14_2 then
          L14_2 = L9_2
        end
        L15_2 = Framework
        L15_2 = L15_2.groupDigits
        L16_2 = L11_2
        L15_2, L16_2 = L15_2(L16_2)
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
        L13_2 = table
        L13_2 = L13_2.insert
        L14_2 = L3_2
        L15_2 = {}
        L15_2.accountName = L9_2
        L15_2.label = L12_2
        L15_2.money = L11_2
        L13_2(L14_2, L15_2)
      end
    elseif "money" == L9_2 then
      L11_2 = L2_2.getMoney
      L11_2 = L11_2()
      if L11_2 > 0 then
        L12_2 = getLocalizedText
        L13_2 = "account"
        L14_2 = getLocalizedText
        L15_2 = "cash"
        L14_2 = L14_2(L15_2)
        L15_2 = Framework
        L15_2 = L15_2.groupDigits
        L16_2 = L11_2
        L15_2, L16_2 = L15_2(L16_2)
        L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
        L13_2 = table
        L13_2 = L13_2.insert
        L14_2 = L3_2
        L15_2 = {}
        L15_2.accountName = "money"
        L15_2.label = L12_2
        L15_2.money = L11_2
        L13_2(L14_2, L15_2)
      end
    end
  end
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L1_1 = RegisterServerCallback
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":getPlayerAccounts"
L2_1 = L2_1 .. L3_1
L3_1 = L0_1
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = canUseMarkerWithLog
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L3_2 = ESX
  L3_2 = L3_2.GetPlayerFromId
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L4_2 = L4_2[A2_2]
  L4_2 = L4_2.data
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = {}
  L6_2 = pairs
  L7_2 = L4_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = L3_2.getAccount
    L13_2 = L10_2
    L12_2 = L12_2(L13_2)
    if L12_2 and L11_2 > 0 then
      L13_2 = getLocalizedText
      L14_2 = "account"
      L15_2 = L12_2.label
      if not L15_2 then
        L15_2 = L10_2
      end
      L16_2 = Framework
      L16_2 = L16_2.groupDigits
      L17_2 = L11_2
      L16_2, L17_2 = L16_2(L17_2)
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L5_2
      L16_2 = {}
      L16_2.accountName = L10_2
      L16_2.label = L13_2
      L16_2.money = L11_2
      L14_2(L15_2, L16_2)
    elseif "money" == L10_2 and L11_2 > 0 then
      L13_2 = getLocalizedText
      L14_2 = "account"
      L15_2 = getLocalizedText
      L16_2 = "cash"
      L15_2 = L15_2(L16_2)
      L16_2 = Framework
      L16_2 = L16_2.groupDigits
      L17_2 = L11_2
      L16_2, L17_2 = L16_2(L17_2)
      L13_2 = L13_2(L14_2, L15_2, L16_2, L17_2)
      L14_2 = table
      L14_2 = L14_2.insert
      L15_2 = L5_2
      L16_2 = {}
      L16_2.accountName = L10_2
      L16_2.label = L13_2
      L16_2.money = L11_2
      L14_2(L15_2, L16_2)
    end
  end
  L6_2 = A1_2
  L7_2 = L5_2
  L6_2(L7_2)
end
L2_1 = RegisterServerCallback
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":retrieveReadableSafeData"
L3_1 = L3_1 .. L4_1
L4_1 = L1_1
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L6_2 = ESX
  L6_2 = L6_2.GetPlayerFromId
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  L7_2 = Framework
  L7_2 = L7_2.groupDigits
  L8_2 = A4_2
  L7_2 = L7_2(L8_2)
  L8_2 = Utils
  L8_2 = L8_2.log
  L9_2 = A0_2
  L10_2 = getLocalizedText
  L11_2 = "log_deposited_safe"
  L10_2 = L10_2(L11_2)
  L11_2 = getLocalizedText
  L12_2 = "log_deposited_safe_description"
  L13_2 = L7_2
  L14_2 = A3_2
  L15_2 = A1_2
  L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2)
  L12_2 = "success"
  L13_2 = "safe"
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = JobsCreator
  L8_2 = L8_2.Markers
  L8_2 = L8_2[A1_2]
  L8_2 = L8_2.data
  if not L8_2 then
    L8_2 = {}
  end
  L9_2 = L8_2[A2_2]
  if not L9_2 then
    L9_2 = 0
  end
  L8_2[A2_2] = L9_2
  L9_2 = L8_2[A2_2]
  L9_2 = L9_2 + A4_2
  L8_2[A2_2] = L9_2
  L9_2 = MySQL
  L9_2 = L9_2.Async
  L9_2 = L9_2.execute
  L10_2 = "UPDATE jobs_data SET data=@inventory WHERE id=@markerId"
  L11_2 = {}
  L12_2 = json
  L12_2 = L12_2.encode
  L13_2 = L8_2
  L12_2 = L12_2(L13_2)
  L11_2["@inventory"] = L12_2
  L11_2["@markerId"] = A1_2
  function L12_2(A0_3)
    local L1_3, L2_3
    if A0_3 > 0 then
      L1_3 = JobsCreator
      L1_3 = L1_3.Markers
      L2_3 = A1_2
      L1_3 = L1_3[L2_3]
      L2_3 = L8_2
      L1_3.data = L2_3
      L1_3 = A5_2
      L2_3 = true
      L1_3(L2_3)
    else
      L1_3 = A5_2
      L2_3 = false
      L1_3(L2_3)
    end
  end
  L9_2(L10_2, L11_2, L12_2)
end
function L3_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  if A3_2 <= 0 then
    return
  end
  L5_2 = canUseMarkerWithLog
  L6_2 = A0_2
  L7_2 = A4_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    return
  end
  L5_2 = ESX
  L5_2 = L5_2.GetPlayerFromId
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = L5_2.getAccount
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  if L6_2 then
    L7_2 = L6_2.money
    if A3_2 <= L7_2 then
      L7_2 = L5_2.removeAccountMoney
      L8_2 = A2_2
      L9_2 = A3_2
      L7_2(L8_2, L9_2)
      L7_2 = L5_2.getAccount
      L8_2 = A2_2
      L7_2 = L7_2(L8_2)
      L7_2 = L7_2.label
      L8_2 = "~g~"
      if "black_money" == A2_2 then
        L8_2 = "~r~"
      end
      L9_2 = Framework
      L9_2 = L9_2.groupDigits
      L10_2 = A3_2
      L9_2 = L9_2(L10_2)
      L10_2 = notify
      L11_2 = A0_2
      L12_2 = getLocalizedText
      L13_2 = "deposited_safe"
      L14_2 = L8_2
      L15_2 = L9_2
      L16_2 = L7_2
      L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2, L14_2, L15_2, L16_2)
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L10_2 = L2_1
      L11_2 = A0_2
      L12_2 = A4_2
      L13_2 = A2_2
      L14_2 = L7_2
      L15_2 = A3_2
      L16_2 = A1_2
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  end
  elseif "money" == A2_2 then
    L7_2 = L5_2.getMoney
    L7_2 = L7_2()
    if A3_2 <= L7_2 then
      L8_2 = L5_2.removeMoney
      L9_2 = A3_2
      L8_2(L9_2)
      L8_2 = Framework
      L8_2 = L8_2.groupDigits
      L9_2 = A3_2
      L8_2 = L8_2(L9_2)
      L9_2 = notify
      L10_2 = A0_2
      L11_2 = getLocalizedText
      L12_2 = "deposited_safe"
      L13_2 = "~g~"
      L14_2 = L8_2
      L15_2 = getLocalizedText
      L16_2 = "cash"
      L15_2, L16_2 = L15_2(L16_2)
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L9_2 = L2_1
      L10_2 = A0_2
      L11_2 = A4_2
      L12_2 = A2_2
      L13_2 = getLocalizedText
      L14_2 = "cash"
      L13_2 = L13_2(L14_2)
      L14_2 = A3_2
      L15_2 = A1_2
      L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
    else
      L8_2 = A1_2
      L9_2 = false
      L8_2(L9_2)
    end
  else
    L7_2 = A1_2
    L8_2 = false
    L7_2(L8_2)
  end
end
L4_1 = RegisterServerCallback
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":depositIntoSafe"
L5_1 = L5_1 .. L6_1
L6_1 = L3_1
L4_1(L5_1, L6_1)
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  if A3_2 <= 0 then
    return
  end
  L5_2 = canUseMarkerWithLog
  L6_2 = A0_2
  L7_2 = A4_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    return
  end
  L5_2 = ESX
  L5_2 = L5_2.GetPlayerFromId
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = JobsCreator
  L6_2 = L6_2.Markers
  L6_2 = L6_2[A4_2]
  L6_2 = L6_2.data
  if not L6_2 then
    L6_2 = {}
  end
  L7_2 = L6_2[A2_2]
  if not L7_2 then
    L7_2 = 0
  end
  L6_2[A2_2] = L7_2
  L7_2 = L6_2[A2_2]
  if A3_2 <= L7_2 then
    L7_2 = L5_2.getAccount
    L8_2 = A2_2
    L7_2 = L7_2(L8_2)
    L8_2 = nil
    L9_2 = false
    if L7_2 then
      L10_2 = L5_2.addAccountMoney
      L11_2 = A2_2
      L12_2 = A3_2
      L10_2(L11_2, L12_2)
      L8_2 = L7_2.label
      L9_2 = true
    elseif "money" == A2_2 then
      L10_2 = L5_2.addMoney
      L11_2 = A3_2
      L10_2(L11_2)
      L10_2 = getLocalizedText
      L11_2 = "cash"
      L10_2 = L10_2(L11_2)
      L8_2 = L10_2
      L9_2 = true
    end
    if L9_2 then
      L10_2 = L6_2[A2_2]
      L10_2 = L10_2 - A3_2
      L6_2[A2_2] = L10_2
      L10_2 = "~g~"
      if "black_money" == A2_2 then
        L10_2 = "~r~"
      end
      L11_2 = Framework
      L11_2 = L11_2.groupDigits
      L12_2 = A3_2
      L11_2 = L11_2(L12_2)
      L12_2 = notify
      L13_2 = A0_2
      L14_2 = getLocalizedText
      L15_2 = "withdrawn_safe"
      L16_2 = L10_2
      L17_2 = L11_2
      L18_2 = L8_2
      L14_2, L15_2, L16_2, L17_2, L18_2, L19_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
      L12_2 = Utils
      L12_2 = L12_2.log
      L13_2 = A0_2
      L14_2 = getLocalizedText
      L15_2 = "log_withdrew_safe"
      L14_2 = L14_2(L15_2)
      L15_2 = getLocalizedText
      L16_2 = "log_withdrew_safe_description"
      L17_2 = L11_2
      L18_2 = L8_2
      L19_2 = A4_2
      L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2)
      L16_2 = "success"
      L17_2 = "safe"
      L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
      L12_2 = MySQL
      L12_2 = L12_2.Async
      L12_2 = L12_2.execute
      L13_2 = "UPDATE jobs_data SET data=@inventory WHERE id=@markerId"
      L14_2 = {}
      L15_2 = json
      L15_2 = L15_2.encode
      L16_2 = L6_2
      L15_2 = L15_2(L16_2)
      L14_2["@inventory"] = L15_2
      L14_2["@markerId"] = A4_2
      function L15_2(A0_3)
        local L1_3, L2_3
        if A0_3 > 0 then
          L1_3 = JobsCreator
          L1_3 = L1_3.Markers
          L2_3 = A4_2
          L1_3 = L1_3[L2_3]
          L2_3 = L6_2
          L1_3.data = L2_3
        end
        L1_3 = A1_2
        L2_3 = true
        L1_3(L2_3)
      end
      L12_2(L13_2, L14_2, L15_2)
    else
      L10_2 = A1_2
      L11_2 = false
      L10_2(L11_2)
    end
  else
    L7_2 = A1_2
    L8_2 = false
    L7_2(L8_2)
  end
end
L5_1 = RegisterServerCallback
L6_1 = Utils
L6_1 = L6_1.eventsPrefix
L7_1 = ":withdrawFromSafe"
L6_1 = L6_1 .. L7_1
L7_1 = L4_1
L5_1(L6_1, L7_1)
