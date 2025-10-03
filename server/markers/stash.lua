local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
function L0_1(A0_2)
  local L1_2
  L1_2 = JobsCreator
  L1_2 = L1_2.Markers
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.data
  return L1_2
end
L1_1 = RegisterServerCallback
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":retrieveStash"
L2_1 = L2_1 .. L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
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
  L4_2 = L0_1
  L5_2 = A2_2
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = pairs
  L7_2 = L4_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = format
    L13_2 = "%s - x%d"
    L14_2 = Framework
    L14_2 = L14_2.getItemLabel
    L15_2 = L10_2
    L14_2 = L14_2(L15_2)
    L15_2 = L11_2
    L12_2 = L12_2(L13_2, L14_2, L15_2)
    L13_2 = table
    L13_2 = L13_2.insert
    L14_2 = L5_2
    L15_2 = {}
    L15_2.label = L12_2
    L15_2.value = L10_2
    L15_2.quantity = L11_2
    L13_2(L14_2, L15_2)
  end
  L6_2 = A1_2
  L7_2 = L5_2
  L6_2(L7_2)
end
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.data
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = L4_2[A1_2]
  if L5_2 then
    L5_2 = L4_2[A1_2]
    L5_2 = L5_2 + A2_2
    L4_2[A1_2] = L5_2
  else
    L4_2[A1_2] = A2_2
  end
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.execute
  L6_2 = "UPDATE jobs_data SET data=@inventory WHERE id=@markerId"
  L7_2 = {}
  L8_2 = json
  L8_2 = L8_2.encode
  L9_2 = L4_2
  L8_2 = L8_2(L9_2)
  L7_2["@inventory"] = L8_2
  L7_2["@markerId"] = A0_2
  function L8_2(A0_3)
    local L1_3, L2_3
    if A0_3 > 0 then
      L1_3 = JobsCreator
      L1_3 = L1_3.Markers
      L2_3 = A0_2
      L1_3 = L1_3[L2_3]
      L2_3 = L4_2
      L1_3.data = L2_3
      L1_3 = A3_2
      L2_3 = true
      L1_3(L2_3)
    else
      L1_3 = A3_2
      L2_3 = false
      L1_3(L2_3)
    end
  end
  L5_2(L6_2, L7_2, L8_2)
end
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.data
  if not L4_2 then
    L4_2 = {}
  end
  L5_2 = L4_2[A1_2]
  if L5_2 then
    L5_2 = L4_2[A1_2]
    if A2_2 <= L5_2 then
      L5_2 = L4_2[A1_2]
      L5_2 = L5_2 - A2_2
      L4_2[A1_2] = L5_2
      L5_2 = L4_2[A1_2]
      if 0 == L5_2 then
        L4_2[A1_2] = nil
      end
      L5_2 = MySQL
      L5_2 = L5_2.Async
      L5_2 = L5_2.execute
      L6_2 = "UPDATE jobs_data SET data=@inventory WHERE id=@markerId"
      L7_2 = {}
      L8_2 = json
      L8_2 = L8_2.encode
      L9_2 = L4_2
      L8_2 = L8_2(L9_2)
      L7_2["@inventory"] = L8_2
      L7_2["@markerId"] = A0_2
      function L8_2(A0_3)
        local L1_3, L2_3
        if A0_3 > 0 then
          L1_3 = JobsCreator
          L1_3 = L1_3.Markers
          L2_3 = A0_2
          L1_3 = L1_3[L2_3]
          L2_3 = L4_2
          L1_3.data = L2_3
          L1_3 = A3_2
          L2_3 = true
          L1_3(L2_3)
        else
          L1_3 = A3_2
          L2_3 = false
          L1_3(L2_3)
        end
      end
      L5_2(L6_2, L7_2, L8_2)
  end
  else
    L5_2 = A3_2
    L6_2 = false
    L5_2(L6_2)
  end
end
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = promise
  L2_2 = L2_2.new
  L2_2 = L2_2()
  L3_2 = Framework
  L3_2 = L3_2.getFramework
  L3_2 = L3_2()
  if "ESX" == L3_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Async
    L3_2 = L3_2.execute
    L4_2 = "UPDATE jobs_data SET data=\"{}\" WHERE id=@markerId AND type=\"stash\""
    L5_2 = {}
    L5_2["@markerId"] = A0_2
    function L6_2(A0_3)
      local L1_3, L2_3, L3_3
      if A0_3 > 0 then
        L1_3 = JobsCreator
        L1_3 = L1_3.Markers
        L2_3 = A0_2
        L1_3 = L1_3[L2_3]
        L2_3 = {}
        L1_3.data = L2_3
        L1_3 = L2_2
        L2_3 = L1_3
        L1_3 = L1_3.resolve
        L3_3 = {}
        L3_3.isSuccessful = true
        L3_3.message = "Successful"
        L1_3(L2_3, L3_3)
      else
        L1_3 = L2_2
        L2_3 = L1_3
        L1_3 = L1_3.resolve
        L3_3 = {}
        L3_3.isSuccessful = false
        L3_3.message = "Couldn't delete stash inventory"
        L1_3(L2_3, L3_3)
      end
    end
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = Framework
    L3_2 = L3_2.getFramework
    L3_2 = L3_2()
    if "QB-core" == L3_2 then
      L3_2 = MySQL
      L3_2 = L3_2.Async
      L3_2 = L3_2.execute
      L4_2 = "UPDATE stashitems SET items='[]' WHERE stash = @stashId"
      L5_2 = {}
      L6_2 = "stash_"
      L7_2 = A0_2
      L6_2 = L6_2 .. L7_2
      L5_2["@stashId"] = L6_2
      function L6_2(A0_3)
        local L1_3, L2_3, L3_3
        if A0_3 > 0 then
          L1_3 = JobsCreator
          L1_3 = L1_3.Markers
          L2_3 = A0_2
          L1_3 = L1_3[L2_3]
          L2_3 = {}
          L1_3.data = L2_3
          L1_3 = L2_2
          L2_3 = L1_3
          L1_3 = L1_3.resolve
          L3_3 = {}
          L3_3.isSuccessful = true
          L3_3.message = "Successful"
          L1_3(L2_3, L3_3)
        else
          L1_3 = L2_2
          L2_3 = L1_3
          L1_3 = L1_3.resolve
          L3_3 = {}
          L3_3.isSuccessful = false
          L3_3.message = "Couldn't delete stash inventory"
          L1_3(L2_3, L3_3)
        end
      end
      L3_2(L4_2, L5_2, L6_2)
    end
  end
  L3_2 = Citizen
  L3_2 = L3_2.Await
  L4_2 = L2_2
  return L3_2(L4_2)
end
L4_1 = RegisterServerCallback
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":deleteStashInventory"
L5_1 = L5_1 .. L6_1
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = Utils
  L3_2 = L3_2.isAllowed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L3_1
    L4_2 = A2_2
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = A1_2
    L4_2 = false
    L3_2(L4_2)
  end
end
L4_1(L5_1, L6_1)
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
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
  L6_2 = L5_2.job
  L6_2 = L6_2.name
  L7_2 = L5_2.job
  L7_2 = L7_2.grade
  L8_2 = Framework
  L8_2 = L8_2.canPlayerCarryItem
  L9_2 = A0_2
  L10_2 = A2_2
  L11_2 = A3_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  if L8_2 then
    L8_2 = L2_1
    L9_2 = A4_2
    L10_2 = A2_2
    L11_2 = A3_2
    function L12_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
      if A0_3 then
        L1_3 = L5_2.addInventoryItem
        L2_3 = A2_2
        L3_3 = A3_2
        L1_3(L2_3, L3_3)
        L1_3 = notify
        L2_3 = L5_2.source
        L3_3 = getLocalizedText
        L4_3 = "took"
        L5_3 = A3_2
        L6_3 = Framework
        L6_3 = L6_3.getItemLabel
        L7_3 = A2_2
        L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
        L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
        L1_3 = Utils
        L1_3 = L1_3.log
        L2_3 = A0_2
        L3_3 = getLocalizedText
        L4_3 = "log_took_stash"
        L3_3 = L3_3(L4_3)
        L4_3 = getLocalizedText
        L5_3 = "log_took_stash_description"
        L6_3 = A3_2
        L7_3 = Framework
        L7_3 = L7_3.getItemLabel
        L8_3 = A2_2
        L7_3 = L7_3(L8_3)
        L8_3 = A2_2
        L9_3 = A4_2
        L4_3 = L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
        L5_3 = "success"
        L6_3 = "stash"
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
        L1_3 = A1_2
        L2_3 = true
        L1_3(L2_3)
      else
        L1_3 = notify
        L2_3 = L5_2.source
        L3_3 = getLocalizedText
        L4_3 = "impossible_take"
        L5_3 = A3_2
        L6_3 = Framework
        L6_3 = L6_3.getItemLabel
        L7_3 = A2_2
        L6_3, L7_3, L8_3, L9_3 = L6_3(L7_3)
        L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
        L1_3(L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
        L1_3 = A1_2
        L2_3 = false
        L1_3(L2_3)
      end
    end
    L8_2(L9_2, L10_2, L11_2, L12_2)
  else
    L8_2 = notify
    L9_2 = L5_2.source
    L10_2 = getLocalizedText
    L11_2 = "no_space"
    L10_2, L11_2, L12_2 = L10_2(L11_2)
    L8_2(L9_2, L10_2, L11_2, L12_2)
    L8_2 = A1_2
    L9_2 = false
    L8_2(L9_2)
  end
end
L5_1 = RegisterServerCallback
L6_1 = Utils
L6_1 = L6_1.eventsPrefix
L7_1 = ":stash:takeItem"
L6_1 = L6_1 .. L7_1
L7_1 = L4_1
L5_1(L6_1, L7_1)
function L5_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
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
  L6_2 = L5_2.job
  L6_2 = L6_2.name
  L7_2 = L5_2.job
  L7_2 = L7_2.grade
  L8_2 = L5_2.getInventoryItem
  L9_2 = A2_2
  L8_2 = L8_2(L9_2)
  L9_2 = L8_2.count
  if A3_2 <= L9_2 then
    L9_2 = notify
    L10_2 = L5_2.source
    L11_2 = getLocalizedText
    L12_2 = "deposited"
    L13_2 = A3_2
    L14_2 = L8_2.label
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2(L12_2, L13_2, L14_2)
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L9_2 = L5_2.removeInventoryItem
    L10_2 = A2_2
    L11_2 = A3_2
    L9_2(L10_2, L11_2)
    L9_2 = Utils
    L9_2 = L9_2.log
    L10_2 = A0_2
    L11_2 = getLocalizedText
    L12_2 = "log_deposited_stash"
    L11_2 = L11_2(L12_2)
    L12_2 = getLocalizedText
    L13_2 = "log_deposited_stash_description"
    L14_2 = A3_2
    L15_2 = L8_2.label
    L16_2 = A2_2
    L17_2 = A4_2
    L12_2 = L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
    L13_2 = "success"
    L14_2 = "stash"
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
    L9_2 = L1_1
    L10_2 = A4_2
    L11_2 = A2_2
    L12_2 = A3_2
    L13_2 = A1_2
    L9_2(L10_2, L11_2, L12_2, L13_2)
  else
    L9_2 = notify
    L10_2 = L5_2.source
    L11_2 = getLocalizedText
    L12_2 = "not_enough"
    L13_2 = L8_2.label
    L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L11_2(L12_2, L13_2)
    L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    L9_2 = A1_2
    L10_2 = false
    L9_2(L10_2)
  end
end
L6_1 = RegisterServerCallback
L7_1 = Utils
L7_1 = L7_1.eventsPrefix
L8_1 = ":stash:depositItem"
L7_1 = L7_1 .. L8_1
L8_1 = L5_1
L6_1(L7_1, L8_1)
L6_1 = RegisterServerCallback
L7_1 = Utils
L7_1 = L7_1.eventsPrefix
L8_1 = ":getPlayerInventory"
L7_1 = L7_1 .. L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = ESX
  L2_2 = L2_2.GetPlayerFromId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = pairs
  L5_2 = L2_2.getInventory
  L6_2 = true
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2(L6_2)
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = Framework
    L10_2 = L10_2.getItemLabel
    L11_2 = L8_2
    L10_2 = L10_2(L11_2)
    L11_2 = type
    L12_2 = L9_2
    L11_2 = L11_2(L12_2)
    if "table" == L11_2 then
      L8_2 = L9_2.name
      L11_2 = L9_2.label
      L10_2 = L11_2 or L10_2
      if not L11_2 then
        L11_2 = Framework
        L11_2 = L11_2.getItemLabel
        L12_2 = L8_2
        L11_2 = L11_2(L12_2)
        L10_2 = L11_2 or L10_2
        if not L11_2 then
          L10_2 = L8_2
        end
      end
      L9_2 = L9_2.count
    end
    if L9_2 > 0 then
      L11_2 = format
      L12_2 = "%s - x%d"
      L13_2 = L10_2
      L14_2 = L9_2
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L12_2 = table
      L12_2 = L12_2.insert
      L13_2 = L3_2
      L14_2 = {}
      L14_2.label = L11_2
      L14_2.value = L8_2
      L14_2.quantity = L9_2
      L12_2(L13_2, L14_2)
    end
  end
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L6_1(L7_1, L8_1)
