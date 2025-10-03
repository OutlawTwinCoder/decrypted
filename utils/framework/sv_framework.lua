local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = CURRENT_FRAMEWORK
function L1_1(A0_2)
  local L1_2, L2_2
  if not A0_2 then
    L1_2 = print
    L2_2 = "^1Tried to get item metadata of nil object^7"
    L1_2(L2_2)
    L1_2 = {}
    return L1_2
  end
  L1_2 = INVENTORY_TO_USE
  if "ox_inventory" == L1_2 then
    L1_2 = A0_2.metadata
    if not L1_2 then
      L1_2 = {}
    end
    return L1_2
  else
    L1_2 = A0_2.info
    if not L1_2 then
      L1_2 = {}
    end
    return L1_2
  end
end
L2_1 = Framework
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = Framework
  L3_2 = L3_2.getPlayerItemCount
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L3_2 = A2_2 <= L3_2
  return L3_2
end
L2_1.hasPlayerEnoughOfItem = L3_1
L2_1 = Framework
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = INVENTORY_TO_USE
  if "ox_inventory" == L2_2 then
    L2_2 = Utils
    L2_2 = L2_2.getScriptName
    L3_2 = "ox_inventory"
    L2_2 = L2_2(L3_2)
    L3_2 = exports
    L3_2 = L3_2[L2_2]
    L4_2 = L3_2
    L3_2 = L3_2.GetItemCount
    L5_2 = A0_2
    L6_2 = A1_2
    return L3_2(L4_2, L5_2, L6_2)
  end
  L2_2 = L0_1
  if "ESX" == L2_2 then
    L2_2 = ESX
    L2_2 = L2_2.GetPlayerFromId
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.getInventoryItem
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L4_2 = print
      L5_2 = "^1Item '"
      L6_2 = A1_2
      L7_2 = "' doesn't exists^7"
      L5_2 = L5_2 .. L6_2 .. L7_2
      L4_2(L5_2)
      L4_2 = 0
      return L4_2
    end
    L4_2 = L3_2.count
    if not L4_2 then
      L4_2 = L3_2.amount
      if not L4_2 then
        L4_2 = 0
      end
    end
    return L4_2
  else
    L2_2 = L0_1
    if "QB-core" == L2_2 then
      L2_2 = Utils
      L2_2 = L2_2.getScriptName
      L3_2 = "qb-inventory"
      L2_2 = L2_2(L3_2)
      L3_2 = Utils
      L3_2 = L3_2.doesExportExist
      L4_2 = L2_2
      L5_2 = "GetItemCount"
      L3_2 = L3_2(L4_2, L5_2)
      if L3_2 then
        L3_2 = exports
        L3_2 = L3_2[L2_2]
        L4_2 = L3_2
        L3_2 = L3_2.GetItemCount
        L5_2 = A0_2
        L6_2 = A1_2
        return L3_2(L4_2, L5_2, L6_2)
      end
      L3_2 = QBCore
      L3_2 = L3_2.Functions
      L3_2 = L3_2.GetPlayer
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2.Functions
      L4_2 = L4_2.GetItemByName
      L5_2 = A1_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L5_2 = 0
        return L5_2
      end
      L5_2 = L4_2.count
      if not L5_2 then
        L5_2 = L4_2.amount
        if not L5_2 then
          L5_2 = 0
        end
      end
      return L5_2
    end
  end
end
L2_1.getPlayerItemCount = L3_1
L2_1 = Framework
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.GetPlayerFromId
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = L1_2.job
      L2_2 = L2_2.name
      return L2_2
    end
  else
    L1_2 = L0_1
    if "QB-core" == L1_2 then
      L1_2 = QBCore
      L1_2 = L1_2.Functions
      L1_2 = L1_2.GetPlayer
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L2_2 = L1_2.PlayerData
        L2_2 = L2_2.job
        L2_2 = L2_2.name
        return L2_2
      end
    end
  end
end
L2_1.getPlayerJobName = L3_1
L2_1 = Framework
function L3_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.GetPlayerFromId
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = L1_2.job
      L2_2 = L2_2.grade
      return L2_2
    end
  else
    L1_2 = L0_1
    if "QB-core" == L1_2 then
      L1_2 = QBCore
      L1_2 = L1_2.Functions
      L1_2 = L1_2.GetPlayer
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L2_2 = L1_2.PlayerData
        L2_2 = L2_2.job
        L2_2 = L2_2.grade
        L2_2 = L2_2.level
        return L2_2
      end
    end
  end
end
L2_1.getPlayerJobGrade = L3_1
L2_1 = Framework
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L0_1
  if "ESX" == L2_2 then
    L2_2 = ESX
    L2_2 = L2_2.RegisterUsableItem
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = L0_1
    if "QB-core" == L2_2 then
      L2_2 = QBCore
      L2_2 = L2_2.Functions
      L2_2 = L2_2.CreateUseableItem
      L3_2 = A0_2
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L2_1.registerUsableItem = L3_1
L2_1 = Framework
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = INVENTORY_TO_USE
  if "ox_inventory" == L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.getScriptName
    L2_2 = "ox_inventory"
    L1_2 = L1_2(L2_2)
    L2_2 = exports
    L2_2 = L2_2[L1_2]
    L3_2 = L2_2
    L2_2 = L2_2.Items
    L4_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    if not L2_2 then
      L3_2 = print
      L4_2 = "^1OX Inventory couldn't get item label for item '"
      L5_2 = A0_2
      L6_2 = "'^7"
      L3_2(L4_2, L5_2, L6_2)
      return A0_2
    end
    L3_2 = L2_2.label
    return L3_2
  end
  L1_2 = L0_1
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.GetItemLabel
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      return L1_2
    else
      L2_2 = print
      L3_2 = [[

======================]]
      L2_2(L3_2)
      L2_2 = print
      L3_2 = "^1ESX.GetItemLabel('"
      L4_2 = A0_2
      L5_2 = "') returned nil instead of the item label, this will probably cause issues. Possible reasons:^7"
      L3_2 = L3_2 .. L4_2 .. L5_2
      L2_2(L3_2)
      L2_2 = print
      L3_2 = "^7- Item doesn't exist or you didn't create it properly"
      L2_2(L3_2)
      L2_2 = print
      L3_2 = "^7- ESX.GetItemLabel function of es_extended doesn't work properly for unknown reasons"
      L2_2(L3_2)
      L2_2 = print
      L3_2 = "^3Note: The issue is not caused by this script, but by ESX.GetItemLabel function, the script developer can't do anything about this"
      L2_2(L3_2)
      L2_2 = print
      L3_2 = "^7======================\n"
      L2_2(L3_2)
      return A0_2
    end
    L2_2 = ESX
    L2_2 = L2_2.GetItemLabel
    L3_2 = A0_2
    return L2_2(L3_2)
  else
    L1_2 = L0_1
    if "QB-core" == L1_2 then
      L1_2 = QBCore
      L1_2 = L1_2.Shared
      L1_2 = L1_2.Items
      L1_2 = L1_2[A0_2]
      if L1_2 then
        L2_2 = L1_2.label
        if L2_2 then
          L2_2 = L1_2.label
          return L2_2
      end
      else
        L2_2 = print
        L3_2 = [[

======================]]
        L2_2(L3_2)
        L2_2 = print
        L3_2 = "^1Couldn't get the item label of '"
        L4_2 = A0_2
        L5_2 = "', this will probably cause issues. Possible reasons:^7"
        L3_2 = L3_2 .. L4_2 .. L5_2
        L2_2(L3_2)
        L2_2 = print
        L3_2 = "^7- Item doesn't exist or you didn't create it properly"
        L2_2(L3_2)
        L2_2 = print
        L3_2 = "^7- Something wrong in qb-core installation or the default behaviour was modified"
        L2_2(L3_2)
        L2_2 = print
        L3_2 = "^3Note: The issue is not caused by this script, the script developer can't do anything about this"
        L2_2(L3_2)
        L2_2 = print
        L3_2 = "^7======================\n"
        L2_2(L3_2)
        return A0_2
      end
    end
  end
end
L2_1.getItemLabel = L3_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = promise
  L0_2 = L0_2.new
  L0_2 = L0_2()
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.fetchAll
  L2_2 = "SELECT name, label FROM items"
  L3_2 = {}
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    L1_3 = {}
    L2_3 = 1
    L3_3 = #A0_3
    L4_3 = 1
    for L5_3 = L2_3, L3_3, L4_3 do
      L6_3 = A0_3[L5_3]
      L6_3 = L6_3.name
      L7_3 = A0_3[L5_3]
      L1_3[L6_3] = L7_3
    end
    L2_3 = L0_2
    L3_3 = L2_3
    L2_3 = L2_3.resolve
    L4_3 = L1_3
    L2_3(L3_3, L4_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = Citizen
  L1_2 = L1_2.Await
  L2_2 = L0_2
  return L1_2(L2_2)
end
L3_1 = Framework
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = L0_1
  if "ESX" == L0_2 then
    L0_2 = ESX
    L0_2 = L0_2.Items
    L1_2 = INVENTORY_TO_USE
    if "ox_inventory" == L1_2 then
      L1_2 = Utils
      L1_2 = L1_2.getScriptName
      L2_2 = "ox_inventory"
      L1_2 = L1_2(L2_2)
      if not L1_2 then
        L2_2 = print
        L3_2 = "^ox_inventory script name is not set in EXTERNAL_SCRIPTS_NAMES^7"
        L2_2(L3_2)
      end
      L2_2 = exports
      L2_2 = L2_2[L1_2]
      L3_2 = L2_2
      L2_2 = L2_2.Items
      L2_2 = L2_2(L3_2)
      L0_2 = L2_2
    end
    L1_2 = 0
    L2_2 = pairs
    L3_2 = L0_2
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L1_2 = L1_2 + 1
      break
    end
    if 0 == L1_2 then
      L2_2 = L2_1
      L2_2 = L2_2()
      L0_2 = L2_2
    end
    return L0_2
  else
    L0_2 = L0_1
    if "QB-core" == L0_2 then
      L0_2 = QBCore
      L0_2 = L0_2.Shared
      L0_2 = L0_2.Items
      return L0_2
    end
  end
end
L3_1.getAllItems = L4_1
L3_1 = Framework
function L4_1()
  local L0_2, L1_2
  L0_2 = L0_1
  if "ESX" == L0_2 then
    L0_2 = ESX
    L0_2 = L0_2.GetWeaponList
    return L0_2()
  else
    L0_2 = L0_1
    if "QB-core" == L0_2 then
      L0_2 = QBCore
      L0_2 = L0_2.Shared
      L0_2 = L0_2.Weapons
      return L0_2
    end
  end
end
L3_1.getAllWeapons = L4_1
L3_1 = Framework
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = config
  L3_2 = L3_2.canAlwaysCarryItem
  if L3_2 then
    L3_2 = true
    return L3_2
  end
  L3_2 = INVENTORY_TO_USE
  if "ox_inventory" == L3_2 then
    L3_2 = Utils
    L3_2 = L3_2.getScriptName
    L4_2 = "ox_inventory"
    L3_2 = L3_2(L4_2)
    L4_2 = exports
    L4_2 = L4_2[L3_2]
    L5_2 = L4_2
    L4_2 = L4_2.CanCarryItem
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A2_2
    return L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L3_2 = false
  L4_2 = L0_1
  if "ESX" == L4_2 then
    L4_2 = ESX
    L4_2 = L4_2.GetPlayerFromId
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2.canCarryItem
    if L5_2 then
      L5_2 = L4_2.canCarryItem
      L6_2 = A1_2
      L7_2 = A2_2
      return L5_2(L6_2, L7_2)
    end
    L5_2 = L4_2.getInventoryItem
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    if not L5_2 then
      L6_2 = true
      return L6_2
    end
    L6_2 = L5_2.limit
    L3_2 = -1 == L6_2
  else
    L4_2 = L0_1
    if "QB-core" == L4_2 then
      L4_2 = Utils
      L4_2 = L4_2.getScriptName
      L5_2 = "qb-inventory"
      L4_2 = L4_2(L5_2)
      L5_2 = Utils
      L5_2 = L5_2.doesExportExist
      L6_2 = L4_2
      L7_2 = "CanAddItem"
      L5_2 = L5_2(L6_2, L7_2)
      if not L5_2 then
        L5_2 = true
        return L5_2
      end
      L5_2 = exports
      L5_2 = L5_2[L4_2]
      L6_2 = L5_2
      L5_2 = L5_2.CanAddItem
      L7_2 = A0_2
      L8_2 = A1_2
      L9_2 = A2_2
      L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
      return L5_2
    end
  end
  return L3_2
end
L3_1.canPlayerCarryItem = L4_1
L3_1 = Framework
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = Framework
  L4_2 = L4_2.canPlayerCarryItem
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    L4_2 = false
    return L4_2
  end
  L4_2 = INVENTORY_TO_USE
  if "ox_inventory" == L4_2 then
    L4_2 = Utils
    L4_2 = L4_2.getScriptName
    L5_2 = "ox_inventory"
    L4_2 = L4_2(L5_2)
    L5_2 = exports
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.AddItem
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = A2_2
    L10_2 = A3_2
    L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    if not L5_2 then
      L7_2 = print
      L8_2 = "^1OX Inventory couldn't give item to player: "
      L9_2 = L6_2
      L10_2 = "^7"
      L7_2(L8_2, L9_2, L10_2)
    end
    return L5_2
  end
  L4_2 = L0_1
  if "ESX" == L4_2 then
    L4_2 = ESX
    L4_2 = L4_2.GetPlayerFromId
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2.addInventoryItem
    L6_2 = A1_2
    L7_2 = A2_2
    L5_2(L6_2, L7_2)
    L5_2 = true
    return L5_2
  else
    L4_2 = L0_1
    if "QB-core" == L4_2 then
      L4_2 = QBCore
      L4_2 = L4_2.Functions
      L4_2 = L4_2.GetPlayer
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      L5_2 = L4_2.Functions
      L5_2 = L5_2.AddItem
      L6_2 = A1_2
      L7_2 = A2_2
      L8_2 = false
      L9_2 = A3_2
      return L5_2(L6_2, L7_2, L8_2, L9_2)
    end
  end
end
L3_1.giveItemToPlayer = L4_1
L3_1 = Framework
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = INVENTORY_TO_USE
  if "ox_inventory" == L4_2 then
    L4_2 = Utils
    L4_2 = L4_2.getScriptName
    L5_2 = "ox_inventory"
    L4_2 = L4_2(L5_2)
    L5_2 = exports
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2
    L5_2 = L5_2.RemoveItem
    L7_2 = A0_2
    L8_2 = A1_2
    L9_2 = A2_2
    L10_2 = A3_2
    L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
    if not L5_2 then
      L7_2 = print
      L8_2 = "^1OX Inventory couldn't remove item from player: "
      L9_2 = L6_2
      L10_2 = "^7"
      L7_2(L8_2, L9_2, L10_2)
    end
    return L5_2
  end
  L4_2 = L0_1
  if "ESX" == L4_2 then
    L4_2 = ESX
    L4_2 = L4_2.GetPlayerFromId
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = L4_2.getInventoryItem
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L5_2 = L5_2.count
    if A2_2 <= L5_2 then
      L5_2 = L4_2.removeInventoryItem
      L6_2 = A1_2
      L7_2 = A2_2
      L5_2(L6_2, L7_2)
      L5_2 = true
      return L5_2
    else
      L5_2 = false
      return L5_2
    end
  else
    L4_2 = L0_1
    if "QB-core" == L4_2 then
      L4_2 = QBCore
      L4_2 = L4_2.Functions
      L4_2 = L4_2.GetPlayer
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L5_2 = L4_2.Functions
        L5_2 = L5_2.RemoveItem
        L6_2 = A1_2
        L7_2 = A2_2
        return L5_2(L6_2, L7_2)
      else
        L5_2 = false
        return L5_2
      end
    end
  end
end
L3_1.removeItemFromPlayer = L4_1
L3_1 = Framework
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if not A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = SKIP_ITEM_EXISTS_CHECK
  if L1_2 then
    L1_2 = true
    return L1_2
  end
  L1_2 = INVENTORY_TO_USE
  if "ox_inventory" == L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.getScriptName
    L2_2 = "ox_inventory"
    L1_2 = L1_2(L2_2)
    L2_2 = exports
    L2_2 = L2_2[L1_2]
    L3_2 = L2_2
    L2_2 = L2_2.Items
    L4_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = nil ~= L2_2
    return L2_2
  end
  L1_2 = L0_1
  if "ESX" == L1_2 then
    L1_2 = Framework
    L1_2 = L1_2.getAllItems
    L1_2 = L1_2()
    L2_2 = L1_2[A0_2]
    if L2_2 then
      L2_2 = true
      if L2_2 then
        goto lbl_40
      end
    end
    L2_2 = false
    ::lbl_40::
    return L2_2
  else
    L1_2 = L0_1
    if "QB-core" == L1_2 then
      L1_2 = QBCore
      L1_2 = L1_2.Shared
      L1_2 = L1_2.Items
      L1_2 = L1_2[A0_2]
      L1_2 = nil ~= L1_2
      return L1_2
    end
  end
end
L3_1.doesItemExists = L4_1
L3_1 = Framework
function L4_1()
  local L0_2, L1_2
  L0_2 = L0_1
  if "ESX" == L0_2 then
    L0_2 = ESX
    L0_2 = L0_2.Jobs
    return L0_2
  else
    L0_2 = L0_1
    if "QB-core" == L0_2 then
      L0_2 = QBCore
      L0_2 = L0_2.Shared
      L0_2 = L0_2.Jobs
      return L0_2
    end
  end
end
L3_1.getAllJobs = L4_1
L3_1 = Framework
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  if "ESX" == L3_2 then
    L3_2 = ESX
    L3_2 = L3_2.GetPlayerFromId
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.getAccount
    L5_2 = A1_2
    L4_2 = L4_2(L5_2)
    if L4_2 then
      L5_2 = L3_2.addAccountMoney
      L6_2 = A1_2
      L7_2 = A2_2
      L5_2(L6_2, L7_2)
    elseif "money" == A1_2 then
      L5_2 = L3_2.addMoney
      L6_2 = A2_2
      L5_2(L6_2)
    end
  else
    L3_2 = L0_1
    if "QB-core" == L3_2 then
      L3_2 = QBCore
      L3_2 = L3_2.Functions
      L3_2 = L3_2.GetPlayer
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        if "black_money" == A1_2 then
          L4_2 = Framework
          L4_2 = L4_2.giveBlackMoneyValue
          L5_2 = A0_2
          L6_2 = A2_2
          L4_2(L5_2, L6_2)
        else
          L4_2 = L3_2.Functions
          L4_2 = L4_2.AddMoney
          L5_2 = A1_2
          L6_2 = A2_2
          L4_2(L5_2, L6_2)
        end
      end
    end
  end
end
L3_1.giveAccountMoneyToPlayer = L4_1
L3_1 = Framework
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  if "ESX" == L2_2 then
    L2_2 = ESX
    L2_2 = L2_2.GetPlayerFromId
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.addMoney
    L4_2 = A1_2
    L3_2(L4_2)
  else
    L2_2 = L0_1
    if "QB-core" == L2_2 then
      L2_2 = QBCore
      L2_2 = L2_2.Functions
      L2_2 = L2_2.GetPlayer
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = L2_2.Functions
      L3_2 = L3_2.AddMoney
      L4_2 = "cash"
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
    end
  end
end
L3_1.giveCashToPlayer = L4_1
L3_1 = Framework
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = L0_1
  if "ESX" == L3_2 then
    L3_2 = ESX
    L3_2 = L3_2.GetPlayerFromIdentifier
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = L3_2.addAccountMoney
      L5_2 = A1_2
      L6_2 = A2_2
      L4_2(L5_2, L6_2)
      L4_2 = true
      return L4_2
    else
      L4_2 = promise
      L4_2 = L4_2.new
      L4_2 = L4_2()
      L5_2 = MySQL
      L5_2 = L5_2.Async
      L5_2 = L5_2.fetchScalar
      L6_2 = "SELECT accounts FROM users WHERE identifier=@identifier"
      L7_2 = {}
      L7_2["@identifier"] = A0_2
      function L8_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
        if A0_3 then
          L1_3 = json
          L1_3 = L1_3.decode
          L2_3 = A0_3
          L1_3 = L1_3(L2_3)
          L2_3 = A1_2
          L3_3 = A1_2
          L3_3 = L1_3[L3_3]
          L4_3 = A2_2
          L3_3 = L3_3 + L4_3
          L1_3[L2_3] = L3_3
          L2_3 = MySQL
          L2_3 = L2_3.Async
          L2_3 = L2_3.execute
          L3_3 = "UPDATE users SET accounts=@accounts WHERE identifier=@identifier"
          L4_3 = {}
          L5_3 = A0_2
          L4_3["@identifier"] = L5_3
          L5_3 = json
          L5_3 = L5_3.encode
          L6_3 = L1_3
          L5_3 = L5_3(L6_3)
          L4_3["@accounts"] = L5_3
          function L5_3(A0_4)
            local L1_4, L2_4, L3_4
            L1_4 = L4_2
            L2_4 = L1_4
            L1_4 = L1_4.resolve
            L3_4 = A0_4 > 0
            L1_4(L2_4, L3_4)
          end
          L2_3(L3_3, L4_3, L5_3)
        else
          L1_3 = L4_2
          L2_3 = L1_3
          L1_3 = L1_3.resolve
          L3_3 = false
          L1_3(L2_3, L3_3)
        end
      end
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = Citizen
      L5_2 = L5_2.Await
      L6_2 = L4_2
      return L5_2(L6_2)
    end
  else
    L3_2 = L0_1
    if "QB-core" == L3_2 then
      L3_2 = QBCore
      L3_2 = L3_2.Functions
      L3_2 = L3_2.GetSource
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if L3_2 and 0 ~= L3_2 then
        L4_2 = QBCore
        L4_2 = L4_2.Functions
        L4_2 = L4_2.GetPlayer
        L5_2 = L3_2
        L4_2 = L4_2(L5_2)
        if L4_2 then
          L5_2 = L4_2.Functions
          L5_2 = L5_2.AddMoney
          L6_2 = A1_2
          L7_2 = A2_2
          L5_2(L6_2, L7_2)
          L5_2 = true
          return L5_2
        else
          L5_2 = false
          return L5_2
        end
      else
        L4_2 = promise
        L4_2 = L4_2.new
        L4_2 = L4_2()
        L5_2 = MySQL
        L5_2 = L5_2.Async
        L5_2 = L5_2.fetchScalar
        L6_2 = "SELECT money FROM players WHERE license=@identifier"
        L7_2 = {}
        L7_2["@identifier"] = A0_2
        function L8_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
          if A0_3 then
            L1_3 = json
            L1_3 = L1_3.decode
            L2_3 = A0_3
            L1_3 = L1_3(L2_3)
            L2_3 = A1_2
            L3_3 = A1_2
            L3_3 = L1_3[L3_3]
            L4_3 = A2_2
            L3_3 = L3_3 + L4_3
            L1_3[L2_3] = L3_3
            L2_3 = MySQL
            L2_3 = L2_3.Async
            L2_3 = L2_3.execute
            L3_3 = "UPDATE players SET money=@accounts WHERE license=@identifier"
            L4_3 = {}
            L5_3 = A0_2
            L4_3["@identifier"] = L5_3
            L5_3 = json
            L5_3 = L5_3.encode
            L6_3 = L1_3
            L5_3 = L5_3(L6_3)
            L4_3["@accounts"] = L5_3
            function L5_3(A0_4)
              local L1_4, L2_4, L3_4
              L1_4 = L4_2
              L2_4 = L1_4
              L1_4 = L1_4.resolve
              L3_4 = A0_4 > 0
              L1_4(L2_4, L3_4)
            end
            L2_3(L3_3, L4_3, L5_3)
          else
            L1_3 = L4_2
            L2_3 = L1_3
            L1_3 = L1_3.resolve
            L3_3 = false
            L1_3(L2_3, L3_3)
          end
        end
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = Citizen
        L5_2 = L5_2.Await
        L6_2 = L4_2
        return L5_2(L6_2)
      end
    end
  end
end
L3_1.giveAccountMoneyToIdentifier = L4_1
L3_1 = Framework
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = L0_1
  if "ESX" == L3_2 then
    L3_2 = ESX
    L3_2 = L3_2.GetPlayerFromIdentifier
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L4_2 = L3_2.getAccount
      L5_2 = A1_2
      L4_2 = L4_2(L5_2)
      if L4_2 then
        L5_2 = L3_2.removeAccountMoney
        L6_2 = A1_2
        L7_2 = A2_2
        L5_2(L6_2, L7_2)
        L5_2 = true
        return L5_2
      else
        if "money" == A1_2 then
          L5_2 = L3_2.removeMoney
          L6_2 = A2_2
          L5_2(L6_2)
          L5_2 = true
          return L5_2
        end
        L5_2 = false
        return L5_2
      end
    else
      L4_2 = promise
      L4_2 = L4_2.new
      L4_2 = L4_2()
      L5_2 = MySQL
      L5_2 = L5_2.Async
      L5_2 = L5_2.fetchScalar
      L6_2 = "SELECT accounts FROM users WHERE identifier=@identifier"
      L7_2 = {}
      L7_2["@identifier"] = A0_2
      function L8_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
        if A0_3 then
          L1_3 = json
          L1_3 = L1_3.decode
          L2_3 = A0_3
          L1_3 = L1_3(L2_3)
          L2_3 = A1_2
          L3_3 = A1_2
          L3_3 = L1_3[L3_3]
          L4_3 = A2_2
          L3_3 = L3_3 - L4_3
          L1_3[L2_3] = L3_3
          L2_3 = MySQL
          L2_3 = L2_3.Async
          L2_3 = L2_3.execute
          L3_3 = "UPDATE users SET accounts=@accounts WHERE identifier=@identifier"
          L4_3 = {}
          L5_3 = A0_2
          L4_3["@identifier"] = L5_3
          L5_3 = json
          L5_3 = L5_3.encode
          L6_3 = L1_3
          L5_3 = L5_3(L6_3)
          L4_3["@accounts"] = L5_3
          function L5_3(A0_4)
            local L1_4, L2_4, L3_4
            L1_4 = L4_2
            L2_4 = L1_4
            L1_4 = L1_4.resolve
            L3_4 = A0_4 > 0
            L1_4(L2_4, L3_4)
          end
          L2_3(L3_3, L4_3, L5_3)
        else
          L1_3 = L4_2
          L2_3 = L1_3
          L1_3 = L1_3.resolve
          L3_3 = false
          L1_3(L2_3, L3_3)
        end
      end
      L5_2(L6_2, L7_2, L8_2)
      L5_2 = Citizen
      L5_2 = L5_2.Await
      L6_2 = L4_2
      return L5_2(L6_2)
    end
  else
    L3_2 = L0_1
    if "QB-core" == L3_2 then
      L3_2 = QBCore
      L3_2 = L3_2.Functions
      L3_2 = L3_2.GetPlayerByCitizenId
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L4_2 = L3_2.Functions
        L4_2 = L4_2.RemoveMoney
        L5_2 = A1_2
        L6_2 = A2_2
        L4_2(L5_2, L6_2)
        L4_2 = true
        return L4_2
      else
        L4_2 = promise
        L4_2 = L4_2.new
        L4_2 = L4_2()
        L5_2 = A0_2
        L6_2 = MySQL
        L6_2 = L6_2.Async
        L6_2 = L6_2.fetchScalar
        L7_2 = "SELECT money FROM players WHERE citizenid=@citizenid"
        L8_2 = {}
        L8_2["@citizenid"] = L5_2
        function L9_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
          if A0_3 then
            L1_3 = json
            L1_3 = L1_3.decode
            L2_3 = A0_3
            L1_3 = L1_3(L2_3)
            L2_3 = A1_2
            L3_3 = A1_2
            L3_3 = L1_3[L3_3]
            L4_3 = A2_2
            L3_3 = L3_3 - L4_3
            L1_3[L2_3] = L3_3
            L2_3 = MySQL
            L2_3 = L2_3.Async
            L2_3 = L2_3.execute
            L3_3 = "UPDATE players SET money=@accounts WHERE citizenid=@citizenid"
            L4_3 = {}
            L5_3 = L5_2
            L4_3["@citizenid"] = L5_3
            L5_3 = json
            L5_3 = L5_3.encode
            L6_3 = L1_3
            L5_3 = L5_3(L6_3)
            L4_3["@accounts"] = L5_3
            function L5_3(A0_4)
              local L1_4, L2_4, L3_4
              L1_4 = L4_2
              L2_4 = L1_4
              L1_4 = L1_4.resolve
              L3_4 = A0_4 > 0
              L1_4(L2_4, L3_4)
            end
            L2_3(L3_3, L4_3, L5_3)
          else
            L1_3 = L4_2
            L2_3 = L1_3
            L1_3 = L1_3.resolve
            L3_3 = false
            L1_3(L2_3, L3_3)
          end
        end
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = Citizen
        L6_2 = L6_2.Await
        L7_2 = L4_2
        return L6_2(L7_2)
      end
    end
  end
end
L3_1.removeAccountMoneyFromIdentifier = L4_1
L3_1 = Framework
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Framework
  L3_2 = L3_2.getPlayerCharIdentifier
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = Framework
  L4_2 = L4_2.removeAccountMoneyFromCharIdentifier
  L5_2 = L3_2
  L6_2 = A1_2
  L7_2 = A2_2
  return L4_2(L5_2, L6_2, L7_2)
end
L3_1.removeAccountMoneyFromPlayer = L4_1
L3_1 = Framework
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  if "ESX" == L3_2 then
    L3_2 = ESX
    L3_2 = L3_2.GetPlayerFromIdentifier
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L4_2 = Framework
      L5_2 = "removeAccountMoneyFromOfflineCharIdentifier"
      L4_2 = L4_2[L5_2]
      L5_2 = A0_2
      L6_2 = A1_2
      L7_2 = A2_2
      return L4_2(L5_2, L6_2, L7_2)
    end
    L4_2 = L3_2.removeAccountMoney
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
    L4_2 = true
    return L4_2
  else
    L3_2 = L0_1
    if "QB-core" == L3_2 then
      L3_2 = QBCore
      L3_2 = L3_2.Functions
      L3_2 = L3_2.GetSource
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if not L3_2 or 0 == L3_2 then
        L4_2 = Framework
        L5_2 = "removeAccountMoneyFromOfflineCharIdentifier"
        L4_2 = L4_2[L5_2]
        L5_2 = A0_2
        L6_2 = A1_2
        L7_2 = A2_2
        return L4_2(L5_2, L6_2, L7_2)
      end
      L4_2 = QBCore
      L4_2 = L4_2.Functions
      L4_2 = L4_2.GetPlayer
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L5_2 = false
        return L5_2
      end
      L5_2 = L4_2.Functions
      L5_2 = L5_2.RemoveMoney
      L6_2 = A1_2
      L7_2 = A2_2
      L5_2(L6_2, L7_2)
      L5_2 = true
      return L5_2
    end
  end
end
L3_1.removeAccountMoneyFromCharIdentifier = L4_1
L3_1 = Framework
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L0_1
  if "ESX" == L2_2 then
    L2_2 = ESX
    L2_2 = L2_2.GetPlayerFromIdentifier
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L3_2 = L2_2.getAccount
      L4_2 = A1_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L4_2 = L3_2.money
        return L4_2
      elseif "money" == A1_2 then
        L4_2 = L2_2.getMoney
        return L4_2()
      end
    else
      L3_2 = promise
      L3_2 = L3_2.new
      L3_2 = L3_2()
      L4_2 = MySQL
      L4_2 = L4_2.Async
      L4_2 = L4_2.fetchScalar
      L5_2 = "SELECT accounts FROM users WHERE identifier=@identifier"
      L6_2 = {}
      L6_2["@identifier"] = A0_2
      function L7_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3
        if A0_3 then
          L1_3 = json
          L1_3 = L1_3.decode
          L2_3 = A0_3
          L1_3 = L1_3(L2_3)
          L2_3 = L3_2
          L3_3 = L2_3
          L2_3 = L2_3.resolve
          L4_3 = A1_2
          L4_3 = L1_3[L4_3]
          L2_3(L3_3, L4_3)
        else
          L1_3 = L3_2
          L2_3 = L1_3
          L1_3 = L1_3.resolve
          L3_3 = 0
          L1_3(L2_3, L3_3)
        end
      end
      L4_2(L5_2, L6_2, L7_2)
      L4_2 = Citizen
      L4_2 = L4_2.Await
      L5_2 = L3_2
      return L4_2(L5_2)
    end
  else
    L2_2 = L0_1
    if "QB-core" == L2_2 then
      L2_2 = QBCore
      L2_2 = L2_2.Functions
      L2_2 = L2_2.GetPlayerByCitizenId
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L3_2 = L2_2.PlayerData
        L3_2 = L3_2.money
        L3_2 = L3_2[A1_2]
        return L3_2
      else
        L3_2 = promise
        L3_2 = L3_2.new
        L3_2 = L3_2()
        L4_2 = A0_2
        L5_2 = MySQL
        L5_2 = L5_2.Async
        L5_2 = L5_2.fetchScalar
        L6_2 = "SELECT money FROM players WHERE citizenid=@citizenid"
        L7_2 = {}
        L7_2["@citizenid"] = L4_2
        function L8_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3
          if A0_3 then
            L1_3 = json
            L1_3 = L1_3.decode
            L2_3 = A0_3
            L1_3 = L1_3(L2_3)
            L2_3 = L3_2
            L3_3 = L2_3
            L2_3 = L2_3.resolve
            L4_3 = A1_2
            L4_3 = L1_3[L4_3]
            L2_3(L3_3, L4_3)
          else
            L1_3 = L3_2
            L2_3 = L1_3
            L1_3 = L1_3.resolve
            L3_3 = 0
            L1_3(L2_3, L3_3)
          end
        end
        L5_2(L6_2, L7_2, L8_2)
        L5_2 = Citizen
        L5_2 = L5_2.Await
        L6_2 = L3_2
        return L5_2(L6_2)
      end
    end
  end
end
L3_1.getAccountMoneyFromIdentifier = L4_1
L3_1 = Framework
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Framework
  L2_2 = L2_2.getIdentifier
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Framework
  L3_2 = L3_2.getAccountMoneyFromIdentifier
  L4_2 = L2_2
  L5_2 = A1_2
  return L3_2(L4_2, L5_2)
end
L3_1.getAccountMoneyFromPlayer = L4_1
L3_1 = Framework
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.GetPlayerFromIdentifier
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L2_2 = L1_2.source
      return L2_2
    else
      L2_2 = nil
      return L2_2
    end
  else
    L1_2 = L0_1
    if "QB-core" == L1_2 then
      L1_2 = QBCore
      L1_2 = L1_2.Functions
      L1_2 = L1_2.GetSource
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 and 0 ~= L1_2 then
        return L1_2
      else
        L2_2 = nil
        return L2_2
      end
    end
  end
end
L3_1.getIdentifierPlayerId = L4_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Utils
  L1_2 = L1_2.callScriptExport
  L2_2 = "qb-banking"
  L3_2 = "CreateJobAccount"
  L4_2 = A0_2
  L5_2 = 0
  return L1_2(L2_2, L3_2, L4_2, L5_2)
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.fetchScalar
  L2_2 = "SELECT 1 FROM bank_accounts WHERE account_name=@jobName"
  L3_2 = {}
  L3_2["@jobName"] = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  return L1_2
end
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = exports
  L1_2 = L1_2["Renewed-Banking"]
  L2_2 = L1_2
  L1_2 = L1_2.GetJobAccount
  L3_2 = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = nil ~= L1_2
  return L1_2
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L5_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = {}
  L1_2.label = A0_2
  L1_2.name = A0_2
  L2_2 = exports
  L2_2 = L2_2["Renewed-Banking"]
  L3_2 = L2_2
  L2_2 = L2_2.CreateJobAccount
  L4_2 = L1_2
  L5_2 = 0
  L2_2(L3_2, L4_2, L5_2)
end
L7_1 = Framework
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = config
  L2_2 = L2_2.modules
  L2_2 = L2_2.banking
  if "default" ~= L2_2 then
    L2_2 = Utils
    L2_2 = L2_2.callModuleFunc
    L3_2 = "banking"
    L4_2 = "giveMoneyToSociety"
    L5_2 = A0_2
    L6_2 = A1_2
    return L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = SUBFRAMEWORK
  if "QBX" == L2_2 then
    L2_2 = L6_1
    L3_2 = A0_2
    L2_2(L3_2)
    L2_2 = exports
    L2_2 = L2_2["Renewed-Banking"]
    L3_2 = L2_2
    L2_2 = L2_2.addAccountMoney
    L4_2 = A0_2
    L5_2 = A1_2
    return L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1
  if "ESX" == L2_2 then
    L2_2 = promise
    L2_2 = L2_2.new
    L2_2 = L2_2()
    L3_2 = false
    L4_2 = "society_"
    L5_2 = A0_2
    L4_2 = L4_2 .. L5_2
    L5_2 = TriggerEvent
    L6_2 = EXTERNAL_EVENTS_NAMES
    L6_2 = L6_2["esx_addonaccount:getSharedAccount"]
    L7_2 = L4_2
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = L3_2
      if L1_3 then
        return
      else
        L1_3 = true
        L3_2 = L1_3
      end
      if A0_3 then
        L1_3 = A0_3.addMoney
        L2_3 = A1_2
        L1_3(L2_3)
        L1_3 = L2_2
        L2_3 = L1_3
        L1_3 = L1_3.resolve
        L3_3 = true
        L1_3(L2_3, L3_3)
      else
        L1_3 = L2_2
        L2_3 = L1_3
        L1_3 = L1_3.resolve
        L3_3 = false
        L1_3(L2_3, L3_3)
      end
    end
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = SetTimeout
    L6_2 = 500
    function L7_2()
      local L0_3, L1_3, L2_3
      L0_3 = L3_2
      if not L0_3 then
        L0_3 = L2_2
        L1_3 = L0_3
        L0_3 = L0_3.resolve
        L2_3 = false
        L0_3(L1_3, L2_3)
      end
    end
    L5_2(L6_2, L7_2)
    L5_2 = Citizen
    L5_2 = L5_2.Await
    L6_2 = L2_2
    return L5_2(L6_2)
  else
    L2_2 = L0_1
    if "QB-core" == L2_2 then
      L2_2 = L4_1
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = Utils
        L2_2 = L2_2.callScriptExport
        L3_2 = "qb-banking"
        L4_2 = "AddMoney"
        L5_2 = A0_2
        L6_2 = A1_2
        L2_2(L3_2, L4_2, L5_2, L6_2)
      else
        L2_2 = L3_1
        L3_2 = A0_2
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L3_2 = Framework
          L3_2 = L3_2.giveMoneyToSocietyAccount
          L4_2 = A0_2
          L5_2 = A1_2
          L3_2(L4_2, L5_2)
        else
          L3_2 = print
          L4_2 = "^1'"
          L5_2 = A0_2
          L6_2 = "' doesn't exist in qb-banking, you have to add it in bank_accounts table in the database^7"
          L4_2 = L4_2 .. L5_2 .. L6_2
          L3_2(L4_2)
          L3_2 = false
          return L3_2
        end
      end
      L2_2 = true
      return L2_2
    end
  end
end
L7_1.giveMoneyToSocietyAccount = L8_1
L7_1 = Framework
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = config
  L1_2 = L1_2.modules
  L1_2 = L1_2.banking
  if "default" ~= L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.callModuleFunc
    L2_2 = "banking"
    L3_2 = "getSocietyMoney"
    L4_2 = A0_2
    return L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = SUBFRAMEWORK
  if "QBX" == L1_2 then
    L1_2 = L6_1
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = exports
    L1_2 = L1_2["Renewed-Banking"]
    L2_2 = L1_2
    L1_2 = L1_2.getAccountMoney
    L3_2 = A0_2
    return L1_2(L2_2, L3_2)
  end
  L1_2 = L0_1
  if "ESX" == L1_2 then
    L1_2 = promise
    L1_2 = L1_2.new
    L1_2 = L1_2()
    L2_2 = "society_"
    L3_2 = A0_2
    L2_2 = L2_2 .. L3_2
    L3_2 = false
    L4_2 = TriggerEvent
    L5_2 = EXTERNAL_EVENTS_NAMES
    L5_2 = L5_2["esx_addonaccount:getSharedAccount"]
    L6_2 = L2_2
    function L7_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = L3_2
      if L1_3 then
        return
      else
        L1_3 = true
        L3_2 = L1_3
      end
      if A0_3 then
        L1_3 = L1_2
        L2_3 = L1_3
        L1_3 = L1_3.resolve
        L3_3 = A0_3.money
        L1_3(L2_3, L3_3)
      else
        L1_3 = L1_2
        L2_3 = L1_3
        L1_3 = L1_3.resolve
        L3_3 = false
        L1_3(L2_3, L3_3)
      end
    end
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = SetTimeout
    L5_2 = 500
    function L6_2()
      local L0_3, L1_3, L2_3
      L0_3 = L3_2
      if not L0_3 then
        L0_3 = L1_2
        L1_3 = L0_3
        L0_3 = L0_3.resolve
        L2_3 = false
        L0_3(L1_3, L2_3)
      end
    end
    L4_2(L5_2, L6_2)
    L4_2 = Citizen
    L4_2 = L4_2.Await
    L5_2 = L1_2
    return L4_2(L5_2)
  else
    L1_2 = L0_1
    if "QB-core" == L1_2 then
      L1_2 = Utils
      L1_2 = L1_2.callScriptExport
      L2_2 = "qb-banking"
      L3_2 = "GetAccountBalance"
      L4_2 = A0_2
      L1_2 = L1_2(L2_2, L3_2, L4_2)
      return L1_2
    end
  end
end
L7_1.getSocietyAccountMoney = L8_1
L7_1 = Framework
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = config
  L2_2 = L2_2.modules
  L2_2 = L2_2.banking
  if "default" ~= L2_2 then
    L2_2 = Utils
    L2_2 = L2_2.callModuleFunc
    L3_2 = "banking"
    L4_2 = "removeMoneyFromSociety"
    L5_2 = A0_2
    L6_2 = A1_2
    return L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = SUBFRAMEWORK
  if "QBX" == L2_2 then
    L2_2 = L6_1
    L3_2 = A0_2
    L2_2(L3_2)
    L2_2 = exports
    L2_2 = L2_2["Renewed-Banking"]
    L3_2 = L2_2
    L2_2 = L2_2.removeAccountMoney
    L4_2 = A0_2
    L5_2 = A1_2
    return L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = L0_1
  if "ESX" == L2_2 then
    L2_2 = promise
    L2_2 = L2_2.new
    L2_2 = L2_2()
    L3_2 = false
    L4_2 = "society_"
    L5_2 = A0_2
    L4_2 = L4_2 .. L5_2
    L5_2 = TriggerEvent
    L6_2 = EXTERNAL_EVENTS_NAMES
    L6_2 = L6_2["esx_addonaccount:getSharedAccount"]
    L7_2 = L4_2
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = L3_2
      if L1_3 then
        return
      else
        L1_3 = true
        L3_2 = L1_3
      end
      if A0_3 then
        L1_3 = A0_3.removeMoney
        L2_3 = A1_2
        L1_3(L2_3)
        L1_3 = L2_2
        L2_3 = L1_3
        L1_3 = L1_3.resolve
        L3_3 = true
        L1_3(L2_3, L3_3)
      else
        L1_3 = L2_2
        L2_3 = L1_3
        L1_3 = L1_3.resolve
        L3_3 = false
        L1_3(L2_3, L3_3)
      end
    end
    L5_2(L6_2, L7_2, L8_2)
    L5_2 = SetTimeout
    L6_2 = 500
    function L7_2()
      local L0_3, L1_3, L2_3
      L0_3 = L3_2
      if not L0_3 then
        L0_3 = L2_2
        L1_3 = L0_3
        L0_3 = L0_3.resolve
        L2_3 = false
        L0_3(L1_3, L2_3)
      end
    end
    L5_2(L6_2, L7_2)
    L5_2 = Citizen
    L5_2 = L5_2.Await
    L6_2 = L2_2
    return L5_2(L6_2)
  else
    L2_2 = L0_1
    if "QB-core" == L2_2 then
      L2_2 = L4_1
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      if L2_2 then
        L2_2 = Utils
        L2_2 = L2_2.callScriptExport
        L3_2 = "qb-banking"
        L4_2 = "RemoveMoney"
        L5_2 = A0_2
        L6_2 = A1_2
        L2_2(L3_2, L4_2, L5_2, L6_2)
      else
        L2_2 = L3_1
        L3_2 = A0_2
        L2_2 = L2_2(L3_2)
        if L2_2 then
          L3_2 = Framework
          L3_2 = L3_2.removeMoneyFromSocietyAccount
          L4_2 = A0_2
          L5_2 = A1_2
          L3_2(L4_2, L5_2)
        else
          L3_2 = print
          L4_2 = "^1'"
          L5_2 = A0_2
          L6_2 = "' doesn't exist in qb-banking, you have to add it in bank_accounts table in the database^7"
          L4_2 = L4_2 .. L5_2 .. L6_2
          L3_2(L4_2)
          L3_2 = false
          return L3_2
        end
      end
      L2_2 = true
      return L2_2
    end
  end
end
L7_1.removeMoneyFromSocietyAccount = L8_1
L7_1 = Framework
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.GetPlayerFromId
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.identifier
    return L2_2
  else
    L1_2 = L0_1
    if "QB-core" == L1_2 then
      L1_2 = QBCore
      L1_2 = L1_2.Functions
      L1_2 = L1_2.GetPlayer
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        L2_2 = L1_2.PlayerData
        L2_2 = L2_2.license
        return L2_2
      end
    end
  end
end
L7_1.getIdentifier = L8_1
L7_1 = Framework
function L8_1(A0_2)
  local L1_2
  L1_2 = L0_1
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.Jobs
    L1_2 = L1_2[A0_2]
    if L1_2 then
      L1_2 = ESX
      L1_2 = L1_2.Jobs
      L1_2 = L1_2[A0_2]
      L1_2 = L1_2.label
      if L1_2 then
        goto lbl_16
      end
    end
    L1_2 = nil
    ::lbl_16::
    return L1_2
  else
    L1_2 = L0_1
    if "QB-core" == L1_2 then
      L1_2 = QBCore
      L1_2 = L1_2.Shared
      L1_2 = L1_2.Jobs
      L1_2 = L1_2[A0_2]
      if L1_2 then
        L1_2 = QBCore
        L1_2 = L1_2.Shared
        L1_2 = L1_2.Jobs
        L1_2 = L1_2[A0_2]
        L1_2 = L1_2.label
        if L1_2 then
          goto lbl_35
        end
      end
      L1_2 = nil
      ::lbl_35::
      return L1_2
    end
  end
end
L7_1.getJobLabel = L8_1
L7_1 = Framework
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = nil
  L2_2 = L0_1
  if "ESX" == L2_2 then
    L2_2 = ESX
    L1_2 = L2_2.GetPlayerFromId
  else
    L2_2 = QBCore
    L2_2 = L2_2.Functions
    L1_2 = L2_2.GetPlayer
  end
  if L1_2 then
    L2_2 = L1_2
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L2_2 = nil ~= L2_2
    return L2_2
  else
    L2_2 = print
    L3_2 = "^2No function for getPlayer^7"
    L2_2(L3_2)
    L2_2 = false
    return L2_2
  end
end
L7_1.isPlayerLoaded = L8_1
L7_1 = Framework
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if not A2_2 then
    A2_2 = 0
  end
  L3_2 = L0_1
  if "ESX" == L3_2 then
    L3_2 = ESX
    L3_2 = L3_2.GetPlayerFromId
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = INVENTORY_TO_USE
    if "ox_inventory" == L4_2 then
      L4_2 = L3_2.addInventoryItem
      L5_2 = A1_2
      L6_2 = 1
      L4_2(L5_2, L6_2)
    else
      L4_2 = L3_2.addWeapon
      L5_2 = A1_2
      L6_2 = A2_2
      L4_2(L5_2, L6_2)
    end
  else
    L3_2 = L0_1
    if "QB-core" == L3_2 then
      L3_2 = QBCore
      L3_2 = L3_2.Functions
      L3_2 = L3_2.GetPlayer
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if L3_2 then
        L4_2 = L3_2.Functions
        L4_2 = L4_2.AddItem
        L5_2 = A1_2
        L6_2 = 1
        L4_2(L5_2, L6_2)
      end
    end
  end
end
L7_1.giveWeaponToPlayer = L8_1
L7_1 = Framework
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  if "ESX" == L2_2 then
    L2_2 = ESX
    L2_2 = L2_2.GetPlayerFromId
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.removeWeapon
    L4_2 = A1_2
    L3_2(L4_2)
  else
    L2_2 = L0_1
    if "QB-core" == L2_2 then
      L2_2 = QBCore
      L2_2 = L2_2.Functions
      L2_2 = L2_2.GetPlayer
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = L2_2.Functions
      L3_2 = L3_2.RemoveItem
      L4_2 = A1_2
      L5_2 = 1
      L3_2(L4_2, L5_2)
    end
  end
end
L7_1.removeWeaponFromPlayer = L8_1
L7_1 = Framework
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = config
  if L1_2 then
    L1_2 = config
    L1_2 = L1_2.blackMoney
    if L1_2 then
      goto lbl_13
    end
  end
  L1_2 = print
  L2_2 = "^1Missing black money settings in getBlackMoneyValue^7"
  L1_2(L2_2)
  L1_2 = 0
  do return L1_2 end
  ::lbl_13::
  L1_2 = config
  L1_2 = L1_2.blackMoney
  L1_2 = L1_2.worthType
  if "quantity" == L1_2 then
    L1_2 = Framework
    L1_2 = L1_2.getPlayerGenericObjectCount
    L2_2 = A0_2
    L3_2 = config
    L3_2 = L3_2.blackMoney
    L3_2 = L3_2.object
    L3_2 = L3_2.name
    L4_2 = config
    L4_2 = L4_2.blackMoney
    L4_2 = L4_2.object
    L4_2 = L4_2.type
    return L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = INVENTORY_TO_USE
  if "ox_inventory" == L1_2 then
    L1_2 = Utils
    L1_2 = L1_2.getScriptName
    L2_2 = "ox_inventory"
    L1_2 = L1_2(L2_2)
    L2_2 = exports
    L2_2 = L2_2[L1_2]
    L3_2 = L2_2
    L2_2 = L2_2.Search
    L4_2 = A0_2
    L5_2 = "slots"
    L6_2 = config
    L6_2 = L6_2.blackMoney
    L6_2 = L6_2.object
    L6_2 = L6_2.name
    L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
    L3_2 = 0
    L4_2 = 1
    L5_2 = #L2_2
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L2_2[L7_2]
      L9_2 = L8_2.metadata
      if L9_2 then
        L9_2 = L8_2.metadata
        L10_2 = config
        L10_2 = L10_2.blackMoney
        L10_2 = L10_2.metadataFieldId
        L9_2 = L9_2[L10_2]
        if L9_2 then
          goto lbl_68
        end
      end
      L9_2 = L8_2.count
      if not L9_2 then
        L9_2 = 0
      end
      ::lbl_68::
      L3_2 = L3_2 + L9_2
    end
    return L3_2
  end
  L1_2 = L0_1
  if "QB-core" == L1_2 then
    L1_2 = QBCore
    L1_2 = L1_2.Functions
    L1_2 = L1_2.GetPlayer
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.Functions
    L2_2 = L2_2.GetItemsByName
    L3_2 = "markedbills"
    L2_2 = L2_2(L3_2)
    L3_2 = 0
    L4_2 = pairs
    L5_2 = L2_2
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = L1_1
      L11_2 = L9_2
      L10_2 = L10_2(L11_2)
      L10_2 = L10_2.worth
      L3_2 = L3_2 + L10_2
    end
    return L3_2
  end
  L1_2 = 0
  return L1_2
end
L7_1.getBlackMoneyValue = L8_1
L7_1 = Framework
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L1_2 = config
  L1_2 = L1_2.blackMoney
  if not L1_2 then
    L1_2 = print
    L2_2 = "^1Missing black money settings in clearBlackMoneyFromPlayer^7"
    L1_2(L2_2)
    L1_2 = false
    return L1_2
  end
  L1_2 = Framework
  L1_2 = L1_2.getBlackMoneyValue
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = config
  L2_2 = L2_2.blackMoney
  L2_2 = L2_2.worthType
  if "quantity" == L2_2 then
    L2_2 = Framework
    L2_2 = L2_2.removeGenericObjectFromPlayerId
    L3_2 = A0_2
    L4_2 = config
    L4_2 = L4_2.blackMoney
    L4_2 = L4_2.object
    L4_2 = L4_2.name
    L5_2 = config
    L5_2 = L5_2.blackMoney
    L5_2 = L5_2.object
    L5_2 = L5_2.type
    L6_2 = L1_2
    return L2_2(L3_2, L4_2, L5_2, L6_2)
  end
  L2_2 = Framework
  L2_2 = L2_2.getPlayerGenericObjectCount
  L3_2 = A0_2
  L4_2 = config
  L4_2 = L4_2.blackMoney
  L4_2 = L4_2.object
  L4_2 = L4_2.name
  L5_2 = config
  L5_2 = L5_2.blackMoney
  L5_2 = L5_2.object
  L5_2 = L5_2.type
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = INVENTORY_TO_USE
  if "ox_inventory" == L3_2 then
    L3_2 = Utils
    L3_2 = L3_2.getScriptName
    L4_2 = "ox_inventory"
    L3_2 = L3_2(L4_2)
    L4_2 = exports
    L4_2 = L4_2[L3_2]
    L5_2 = L4_2
    L4_2 = L4_2.RemoveItem
    L6_2 = A0_2
    L7_2 = config
    L7_2 = L7_2.blackMoney
    L7_2 = L7_2.object
    L7_2 = L7_2.name
    L8_2 = L2_2
    return L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  L3_2 = L0_1
  if "QB-core" == L3_2 then
    L3_2 = QBCore
    L3_2 = L3_2.Functions
    L3_2 = L3_2.GetPlayer
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.Functions
    L4_2 = L4_2.GetItemsByName
    L5_2 = config
    L5_2 = L5_2.blackMoney
    L5_2 = L5_2.object
    L5_2 = L5_2.name
    L4_2 = L4_2(L5_2)
    L5_2 = pairs
    L6_2 = L4_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
      L11_2 = exports
      L11_2 = L11_2["qb-inventory"]
      L12_2 = L11_2
      L11_2 = L11_2.RemoveItem
      L13_2 = A0_2
      L14_2 = config
      L14_2 = L14_2.blackMoney
      L14_2 = L14_2.object
      L14_2 = L14_2.name
      L15_2 = L10_2.amount
      L16_2 = L10_2.slot
      L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
    end
    L5_2 = true
    return L5_2
  end
  L3_2 = Framework
  L3_2 = L3_2.removeGenericObjectFromPlayerId
  L4_2 = A0_2
  L5_2 = config
  L5_2 = L5_2.blackMoney
  L5_2 = L5_2.object
  L5_2 = L5_2.name
  L6_2 = config
  L6_2 = L6_2.blackMoney
  L6_2 = L6_2.object
  L6_2 = L6_2.type
  L7_2 = L1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = true
  return L3_2
end
L7_1.clearBlackMoneyFromPlayer = L8_1
L7_1 = Framework
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = config
  L2_2 = L2_2.blackMoney
  if not L2_2 then
    L2_2 = print
    L3_2 = "^1Missing black money settings in removeBlackMoneyValue^7"
    L2_2(L3_2)
    L2_2 = false
    return L2_2
  end
  L2_2 = {}
  L3_2 = config
  L3_2 = L3_2.blackMoney
  L3_2 = L3_2.object
  L3_2 = L3_2.name
  L2_2.name = L3_2
  L3_2 = config
  L3_2 = L3_2.blackMoney
  L3_2 = L3_2.object
  L3_2 = L3_2.type
  L2_2.type = L3_2
  L3_2 = config
  L3_2 = L3_2.blackMoney
  L3_2 = L3_2.worthType
  if "quantity" == L3_2 then
    L3_2 = Framework
    L3_2 = L3_2.removeGenericObjectFromPlayerId
    L4_2 = A0_2
    L5_2 = L2_2.name
    L6_2 = L2_2.type
    L7_2 = A1_2
    return L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = Framework
  L3_2 = L3_2.getBlackMoneyValue
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2 - A1_2
  L5_2 = Framework
  L5_2 = L5_2.clearBlackMoneyFromPlayer
  L6_2 = A0_2
  L5_2(L6_2)
  if L4_2 < 0 then
    return
  end
  L5_2 = {}
  L6_2 = config
  L6_2 = L6_2.blackMoney
  L6_2 = L6_2.metadataFieldId
  L5_2[L6_2] = L4_2
  L2_2.metadata = L5_2
  L5_2 = Framework
  L5_2 = L5_2.giveGenericObjectToPlayerId
  L6_2 = A0_2
  L7_2 = L2_2
  L8_2 = 1
  L9_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L7_1.removeBlackMoneyValue = L8_1
L7_1 = Framework
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = config
  L2_2 = L2_2.blackMoney
  if not L2_2 then
    L2_2 = print
    L3_2 = "^1Missing black money settings in giveBlackMoneyValue^7"
    L2_2(L3_2)
    L2_2 = false
    return L2_2
  end
  L2_2 = {}
  L3_2 = config
  L3_2 = L3_2.blackMoney
  L3_2 = L3_2.object
  L3_2 = L3_2.name
  L2_2.name = L3_2
  L3_2 = config
  L3_2 = L3_2.blackMoney
  L3_2 = L3_2.object
  L3_2 = L3_2.type
  L2_2.type = L3_2
  L3_2 = config
  L3_2 = L3_2.blackMoney
  L3_2 = L3_2.worthType
  if "quantity" == L3_2 then
    L3_2 = Framework
    L3_2 = L3_2.giveGenericObjectToPlayerId
    L4_2 = A0_2
    L5_2 = L2_2
    L6_2 = A1_2
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = Framework
  L3_2 = L3_2.getBlackMoneyValue
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2 + A1_2
  L5_2 = Framework
  L5_2 = L5_2.clearBlackMoneyFromPlayer
  L6_2 = A0_2
  L5_2(L6_2)
  L5_2 = {}
  L6_2 = config
  L6_2 = L6_2.blackMoney
  L6_2 = L6_2.metadataFieldId
  L5_2[L6_2] = L4_2
  L2_2.metadata = L5_2
  L5_2 = Framework
  L5_2 = L5_2.giveGenericObjectToPlayerId
  L6_2 = A0_2
  L7_2 = L2_2
  L8_2 = 1
  L9_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2)
end
L7_1.giveBlackMoneyValue = L8_1
L7_1 = Framework
function L8_1()
  local L0_2, L1_2
  L0_2 = L0_1
  if "ESX" == L0_2 then
    L0_2 = ESX
    L0_2 = L0_2.GetConfig
    L0_2 = L0_2()
    L0_2 = L0_2.Accounts
    return L0_2
  else
    L0_2 = L0_1
    if "QB-core" == L0_2 then
      L0_2 = SUBFRAMEWORK
      if nil == L0_2 then
        L0_2 = QBCore
        L0_2 = L0_2.Config
        L0_2 = L0_2.Money
        L0_2 = L0_2.MoneyTypes
        return L0_2
      else
        L0_2 = QBCore
        L0_2 = L0_2.Config
        L0_2 = L0_2.money
        L0_2 = L0_2.moneyTypes
        return L0_2
      end
    end
  end
end
L7_1.getAllAccounts = L8_1
L7_1 = Framework
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.GetConfig
    L1_2 = L1_2()
    L1_2 = L1_2.Accounts
    L1_2 = L1_2[A0_2]
    if not L1_2 then
      return A0_2
    end
    L2_2 = type
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if "table" == L2_2 then
      L2_2 = L1_2.label
      return L2_2
    else
      return L1_2
    end
  else
    L1_2 = L0_1
    if "QB-core" == L1_2 then
      return A0_2
    end
  end
end
L7_1.getAccountLabel = L8_1
L7_1 = Framework
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = {}
  L2_2 = Framework
  L2_2 = L2_2.getFramework
  L2_2 = L2_2()
  if "ESX" == L2_2 then
    L2_2 = ESX
    L2_2 = L2_2.GetPlayerFromId
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.getLoadout
    L3_2 = L3_2()
    L1_2 = L3_2
  else
    L2_2 = Framework
    L2_2 = L2_2.getFramework
    L2_2 = L2_2()
    if "QB-core" == L2_2 then
      L2_2 = QBCore
      L2_2 = L2_2.Functions
      L2_2 = L2_2.GetPlayer
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = pairs
      L4_2 = L2_2.PlayerData
      L4_2 = L4_2.items
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L9_2 = QBCore
        L9_2 = L9_2.Shared
        L9_2 = L9_2.Weapons
        L10_2 = GetHashKey
        L11_2 = L8_2.name
        L10_2 = L10_2(L11_2)
        L9_2 = L9_2[L10_2]
        if L9_2 then
          L9_2 = table
          L9_2 = L9_2.insert
          L10_2 = L1_2
          L11_2 = {}
          L12_2 = L8_2.name
          L11_2.name = L12_2
          L12_2 = L8_2.label
          L11_2.label = L12_2
          L9_2(L10_2, L11_2)
        end
      end
    end
  end
  return L1_2
end
L7_1.getPlayerWeapons = L8_1
L7_1 = Framework
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L0_1
  if "ESX" == L1_2 then
    L1_2 = false
    return L1_2
  else
    L1_2 = QBCore
    L1_2 = L1_2.Shared
    L1_2 = L1_2.Weapons
    L2_2 = GetHashKey
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L1_2 = L1_2[L2_2]
    L1_2 = nil ~= L1_2
    return L1_2
  end
end
L7_1.isItemWeapon = L8_1
L7_1 = Framework
function L8_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L0_1
  if "ESX" == L3_2 then
    L3_2 = ESX
    L3_2 = L3_2.GetPlayerFromId
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.hasWeaponComponent
    L5_2 = A1_2
    L6_2 = A2_2
    return L4_2(L5_2, L6_2)
  else
    L3_2 = L0_1
    if "QB-core" == L3_2 then
      L3_2 = QBCore
      L3_2 = L3_2.Functions
      L3_2 = L3_2.GetPlayer
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2.Functions
      L4_2 = L4_2.GetItemByName
      L5_2 = A2_2
      L4_2 = L4_2(L5_2)
      L4_2 = nil ~= L4_2
      return L4_2
    end
  end
end
L7_1.hasPlayerWeaponComponent = L8_1
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = promise
  L0_2 = L0_2.new
  L0_2 = L0_2()
  L1_2 = false
  L2_2 = TriggerEvent
  L3_2 = "qb-weapons:getWeaponsAttachments"
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = true
    L1_2 = L1_3
    L1_3 = L0_2
    L2_3 = L1_3
    L1_3 = L1_3.resolve
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2, L4_2)
  L2_2 = SetTimeout
  L3_2 = 1000
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = L1_2
    if not L0_3 then
      L0_3 = L0_2
      L1_3 = L0_3
      L0_3 = L0_3.resolve
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L2_2(L3_2, L4_2)
  L2_2 = Citizen
  L2_2 = L2_2.Await
  L3_2 = L0_2
  return L2_2(L3_2)
end
L8_1 = Framework
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = L0_1
  if "ESX" == L2_2 then
    L2_2 = ESX
    L2_2 = L2_2.GetWeaponComponent
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = nil ~= L2_2
    return L2_2
  else
    L2_2 = L0_1
    if "QB-core" == L2_2 then
      L2_2 = promise
      L2_2 = L2_2.new
      L2_2 = L2_2()
      L3_2 = false
      L4_2 = L7_1
      L4_2 = L4_2()
      L6_2 = A0_2
      L5_2 = A0_2.upper
      L5_2 = L5_2(L6_2)
      L6_2 = L4_2[L5_2]
      if L6_2 then
        L7_2 = L2_2
        L6_2 = L2_2.resolve
        L8_2 = L4_2[L5_2]
        L8_2 = L8_2[A1_2]
        L8_2 = nil ~= L8_2
        L6_2(L7_2, L8_2)
      else
        L6_2 = print
        L7_2 = "^1Weapon "
        L8_2 = L5_2
        L9_2 = " not found in "
        L10_2 = Utils
        L10_2 = L10_2.getScriptName
        L11_2 = "qb-weapons"
        L10_2 = L10_2(L11_2)
        L11_2 = "/config.lua^7"
        L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
        L6_2(L7_2)
      end
      L6_2 = Citizen
      L6_2 = L6_2.Await
      L7_2 = L2_2
      return L6_2(L7_2)
    end
  end
end
L8_1.doesComponentExistsForWeapon = L9_1
L8_1 = Framework
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = L0_1
  if "ESX" == L2_2 then
    L2_2 = ESX
    L2_2 = L2_2.GetWeaponComponent
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = L2_2.label
    return L2_2
  else
    L2_2 = L0_1
    if "QB-core" == L2_2 then
      L2_2 = L7_1
      L2_2 = L2_2()
      L4_2 = A0_2
      L3_2 = A0_2.upper
      L3_2 = L3_2(L4_2)
      L4_2 = L2_2[L3_2]
      if L4_2 then
        L4_2 = L2_2[L3_2]
        L4_2 = L4_2[A1_2]
        L4_2 = L4_2.label
        if not L4_2 then
          L4_2 = Framework
          L4_2 = L4_2.getItemLabel
          L5_2 = L2_2[L3_2]
          L5_2 = L5_2[A1_2]
          L5_2 = L5_2.item
          L4_2 = L4_2(L5_2)
        end
        return L4_2
      else
        L4_2 = print
        L5_2 = "^1Weapon "
        L6_2 = L3_2
        L7_2 = " not found in "
        L8_2 = Utils
        L8_2 = L8_2.getScriptName
        L9_2 = "qb-weapons"
        L8_2 = L8_2(L9_2)
        L9_2 = "/config.lua^7"
        L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
        L4_2(L5_2)
      end
      return A1_2
    end
  end
end
L8_1.getWeaponComponentLabel = L9_1
L8_1 = Framework
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = L0_1
  if "ESX" == L2_2 then
    L2_2 = ESX
    L2_2 = L2_2.GetPlayerFromId
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = INVENTORY_TO_USE
    if "default" == L3_2 then
      L3_2 = L2_2.hasWeapon
      L4_2 = A1_2
      return L3_2(L4_2)
    else
      L3_2 = INVENTORY_TO_USE
      if "ox_inventory" == L3_2 then
        L3_2 = Utils
        L3_2 = L3_2.getScriptName
        L4_2 = "ox_inventory"
        L3_2 = L3_2(L4_2)
        if not L3_2 then
          L4_2 = print
          L5_2 = "^ox_inventory script name is not set in EXTERNAL_SCRIPTS_NAMES^7"
          L4_2(L5_2)
        end
        L4_2 = exports
        L4_2 = L4_2[L3_2]
        L5_2 = L4_2
        L4_2 = L4_2.CanCarryItem
        L6_2 = A0_2
        L7_2 = A1_2
        L8_2 = 1
        L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
        L4_2 = not L4_2
        return L4_2
      end
    end
  else
    L2_2 = L0_1
    if "QB-core" == L2_2 then
      L2_2 = QBCore
      L2_2 = L2_2.Functions
      L2_2 = L2_2.GetPlayer
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = L2_2.Functions
      L3_2 = L3_2.GetItemByName
      L4_2 = A1_2
      L3_2 = L3_2(L4_2)
      L3_2 = nil ~= L3_2
      return L3_2
    end
  end
end
L8_1.hasPlayerWeapon = L9_1
L8_1 = Framework
function L9_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.GetWeaponLabel
    L2_2 = A0_2
    return L1_2(L2_2)
  else
    L1_2 = L0_1
    if "QB-core" == L1_2 then
      L1_2 = Framework
      L1_2 = L1_2.getItemLabel
      L2_2 = A0_2
      return L1_2(L2_2)
    end
  end
end
L8_1.getWeaponLabel = L9_1
L8_1 = {}
L8_1.clip_extended = "extendedclip"
L8_1.clip_drum = "drum"
L8_1.flashlight = "flashlight"
L8_1.suppressor = "suppressor"
L8_1.scope = "scope"
L8_1.scope_advanced = "advancedscope"
L8_1.grip = "grip"
L8_1.clip_box = "drum"
L8_1.luxary_finish = "luxuryfinish"
L9_1 = Framework
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  if "ESX" == L3_2 then
    L3_2 = ESX
    L3_2 = L3_2.GetPlayerFromId
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.removeWeaponComponent
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  else
    L3_2 = L0_1
    if "QB-core" == L3_2 then
      L3_2 = QBCore
      L3_2 = L3_2.Functions
      L3_2 = L3_2.GetPlayer
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      L4_2 = L7_1
      L4_2 = L4_2()
      L6_2 = A1_2
      L5_2 = A1_2.upper
      L5_2 = L5_2(L6_2)
      L4_2 = L4_2[L5_2]
      L5_2 = L8_1
      L5_2 = L5_2[A2_2]
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.item
      L5_2 = L3_2.Functions
      L5_2 = L5_2.RemoveItem
      L6_2 = L4_2
      L7_2 = 1
      L5_2(L6_2, L7_2)
    end
  end
end
L9_1.removeWeaponComponentFromPlayer = L10_1
L9_1 = Framework
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  if "ESX" == L3_2 then
    L3_2 = ESX
    L3_2 = L3_2.GetPlayerFromId
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.addWeaponComponent
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  else
    L3_2 = L0_1
    if "QB-core" == L3_2 then
      L3_2 = QBCore
      L3_2 = L3_2.Functions
      L3_2 = L3_2.GetPlayer
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      L4_2 = L7_1
      L4_2 = L4_2()
      L6_2 = A1_2
      L5_2 = A1_2.upper
      L5_2 = L5_2(L6_2)
      L4_2 = L4_2[L5_2]
      L5_2 = L8_1
      L5_2 = L5_2[A2_2]
      L4_2 = L4_2[L5_2]
      L4_2 = L4_2.item
      L5_2 = L3_2.Functions
      L5_2 = L5_2.AddItem
      L6_2 = L4_2
      L7_2 = 1
      L5_2(L6_2, L7_2)
    end
  end
end
L9_1.addWeaponComponentToPlayer = L10_1
L9_1 = {}
L9_1[0] = "weapontint_black"
L9_1[1] = "weapontint_green"
L9_1[2] = "weapontint_gold"
L9_1[3] = "weapontint_pink"
L9_1[4] = "weapontint_army"
L9_1[5] = "weapontint_lspd"
L9_1[6] = "weapontint_orange"
L9_1[7] = "weapontint_plat"
L10_1 = Framework
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L0_1
  if "ESX" == L3_2 then
    L3_2 = ESX
    L3_2 = L3_2.GetPlayerFromId
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.setWeaponTint
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  else
    L3_2 = L0_1
    if "QB-core" == L3_2 then
      L3_2 = QBCore
      L3_2 = L3_2.Functions
      L3_2 = L3_2.GetPlayer
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2.Functions
      L4_2 = L4_2.AddItem
      L5_2 = L9_1
      L5_2 = L5_2[A2_2]
      L6_2 = 1
      L4_2(L5_2, L6_2)
    end
  end
end
L10_1.giveWeaponTintToPlayerWeapon = L11_1
L10_1 = Framework
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L0_1
  if "ESX" == L3_2 then
    L3_2 = ESX
    L3_2 = L3_2.GetPlayerFromId
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = L3_2.setJob
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
  else
    L3_2 = L0_1
    if "QB-core" == L3_2 then
      L3_2 = QBCore
      L3_2 = L3_2.Functions
      L3_2 = L3_2.GetPlayer
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2.Functions
      L4_2 = L4_2.SetJob
      L5_2 = A1_2
      L6_2 = A2_2
      L4_2(L5_2, L6_2)
    end
  end
end
L10_1.setJobToPlayer = L11_1
L10_1 = Framework
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = L0_1
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.GetPlayerFromId
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.getName
    L2_2 = L2_2()
    if not L2_2 then
      L2_2 = GetPlayerName
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
    end
    return L2_2
  else
    L1_2 = L0_1
    if "QB-core" == L1_2 then
      L1_2 = QBCore
      L1_2 = L1_2.Functions
      L1_2 = L1_2.GetPlayer
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      L2_2 = L1_2.PlayerData
      L2_2 = L2_2.charinfo
      L3_2 = L2_2.firstname
      L4_2 = " "
      L5_2 = L2_2.lastname
      L3_2 = L3_2 .. L4_2 .. L5_2
      return L3_2
    end
  end
end
L10_1.getPlayerCharacterName = L11_1
L10_1 = RegisterServerCallback
L11_1 = Utils
L11_1 = L11_1.eventsPrefix
L12_1 = ":getPlayerLicenses"
L11_1 = L11_1 .. L12_1
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = QBCore
  L3_2 = L3_2.Functions
  L3_2 = L3_2.GetPlayer
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L5_2 = L3_2.PlayerData
  L5_2 = L5_2.metadata
  L5_2 = L5_2.licences
  L4_2(L5_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = Utils
L11_1 = L11_1.eventsPrefix
L12_1 = ":giveLicenseToPlayer"
L11_1 = L11_1 .. L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = source
  L3_2 = Framework
  L3_2 = L3_2.getFramework
  L3_2 = L3_2()
  if "QB-core" ~= L3_2 then
    L3_2 = print
    L4_2 = "Event :giveLicenseToPlayer can be used only on QBCore"
    L3_2(L4_2)
    return
  end
  L3_2 = QBCore
  L3_2 = L3_2.Functions
  L3_2 = L3_2.GetPlayer
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.PlayerData
  L4_2 = L4_2.metadata
  L4_2 = L4_2.licences
  L4_2[A1_2] = true
  L5_2 = L3_2.Functions
  L5_2 = L5_2.SetMetaData
  L6_2 = "licences"
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = Utils
L11_1 = L11_1.eventsPrefix
L12_1 = ":removeLicenseFromPlayer"
L11_1 = L11_1 .. L12_1
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = source
  L3_2 = Framework
  L3_2 = L3_2.getFramework
  L3_2 = L3_2()
  if "QB-core" ~= L3_2 then
    L3_2 = print
    L4_2 = "Event :removeLicenseFromPlayer can be used only on QBCore"
    L3_2(L4_2)
    return
  end
  L3_2 = QBCore
  L3_2 = L3_2.Functions
  L3_2 = L3_2.GetPlayer
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L3_2.PlayerData
  L4_2 = L4_2.metadata
  L4_2 = L4_2.licences
  L4_2[A1_2] = false
  L5_2 = L3_2.Functions
  L5_2 = L5_2.SetMetaData
  L6_2 = "licences"
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
end
L10_1(L11_1, L12_1)
L10_1 = Framework
function L11_1(A0_2)
  local L1_2, L2_2
  L1_2 = Framework
  L1_2 = L1_2.getFramework
  L1_2 = L1_2()
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.GetPlayerFromId
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L2_2 = L1_2.identifier
    return L2_2
  else
    L1_2 = Framework
    L1_2 = L1_2.getFramework
    L1_2 = L1_2()
    if "QB-core" == L1_2 then
      L1_2 = QBCore
      L1_2 = L1_2.Functions
      L1_2 = L1_2.GetPlayer
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      L2_2 = L1_2.PlayerData
      L2_2 = L2_2.citizenid
      return L2_2
    end
  end
end
L10_1.getPlayerCharIdentifier = L11_1
L10_1 = Framework
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  if "ESX" == L3_2 then
    L3_2 = ESX
    L3_2 = L3_2.GetPlayerFromIdentifier
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L4_2 = Framework
      L4_2 = L4_2.giveAccountMoneyToOfflineCharIdentifier
      L5_2 = A0_2
      L6_2 = A1_2
      L7_2 = A2_2
      return L4_2(L5_2, L6_2, L7_2)
    end
    L4_2 = L3_2.addAccountMoney
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
    L4_2 = true
    return L4_2
  else
    L3_2 = L0_1
    if "QB-core" == L3_2 then
      L3_2 = QBCore
      L3_2 = L3_2.Functions
      L3_2 = L3_2.GetSource
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if not L3_2 or 0 == L3_2 then
        L4_2 = Framework
        L4_2 = L4_2.giveAccountMoneyToOfflineCharIdentifier
        L5_2 = A0_2
        L6_2 = A1_2
        L7_2 = A2_2
        return L4_2(L5_2, L6_2, L7_2)
      end
      L4_2 = QBCore
      L4_2 = L4_2.Functions
      L4_2 = L4_2.GetPlayer
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L5_2 = false
        return L5_2
      end
      L5_2 = L4_2.Functions
      L5_2 = L5_2.AddMoney
      L6_2 = A1_2
      L7_2 = A2_2
      L5_2(L6_2, L7_2)
      L5_2 = true
      return L5_2
    end
  end
end
L10_1.giveAccountMoneyToCharIdentifier = L11_1
L10_1 = Framework
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = L0_1
  if "ESX" == L3_2 then
    L3_2 = ESX
    L3_2 = L3_2.GetPlayerFromIdentifier
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L4_2 = Framework
      L5_2 = "removeAccountMoneyFromOfflineCharIdentifier"
      L4_2 = L4_2[L5_2]
      L5_2 = A0_2
      L6_2 = A1_2
      L7_2 = A2_2
      return L4_2(L5_2, L6_2, L7_2)
    end
    L4_2 = L3_2.removeAccountMoney
    L5_2 = A1_2
    L6_2 = A2_2
    L4_2(L5_2, L6_2)
    L4_2 = true
    return L4_2
  else
    L3_2 = L0_1
    if "QB-core" == L3_2 then
      L3_2 = QBCore
      L3_2 = L3_2.Functions
      L3_2 = L3_2.GetSource
      L4_2 = A0_2
      L3_2 = L3_2(L4_2)
      if not L3_2 or 0 == L3_2 then
        L4_2 = Framework
        L5_2 = "removeAccountMoneyFromOfflineCharIdentifier"
        L4_2 = L4_2[L5_2]
        L5_2 = A0_2
        L6_2 = A1_2
        L7_2 = A2_2
        return L4_2(L5_2, L6_2, L7_2)
      end
      L4_2 = QBCore
      L4_2 = L4_2.Functions
      L4_2 = L4_2.GetPlayer
      L5_2 = L3_2
      L4_2 = L4_2(L5_2)
      if not L4_2 then
        L5_2 = false
        return L5_2
      end
      L5_2 = L4_2.Functions
      L5_2 = L5_2.RemoveMoney
      L6_2 = A1_2
      L7_2 = A2_2
      L5_2(L6_2, L7_2)
      L5_2 = true
      return L5_2
    end
  end
end
L10_1.removeAccountMoneyFromCharIdentifier = L11_1
L10_1 = Framework
function L11_1(A0_2, A1_2)
  local L2_2, L3_2
  if "item" == A1_2 then
    L2_2 = Framework
    L2_2 = L2_2.doesItemExists
    L3_2 = A0_2
    return L2_2(L3_2)
  elseif "weapon" == A1_2 then
    L2_2 = Framework
    L2_2 = L2_2.getWeaponLabel
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2 ~= A0_2
    return L2_2
  elseif "account" == A1_2 then
    L2_2 = Framework
    L2_2 = L2_2.getAccountLabel
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L2_2 = L2_2 ~= A0_2
    return L2_2
  end
end
L10_1.doesGenericObjectExist = L11_1
L10_1 = Framework
function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2.name
  if L4_2 then
    L4_2 = A1_2.type
    if L4_2 then
      goto lbl_11
    end
  end
  L4_2 = print
  L5_2 = "^1Can't give item to player, object must have name and type^7"
  L4_2(L5_2)
  do return end
  ::lbl_11::
  L4_2 = A1_2.type
  if "item" == L4_2 then
    L4_2 = Framework
    L4_2 = L4_2.giveItemToPlayer
    L5_2 = A0_2
    L6_2 = A1_2.name
    L7_2 = A2_2
    L8_2 = A1_2.metadata
    L4_2(L5_2, L6_2, L7_2, L8_2)
    if A3_2 then
      L4_2 = notify
      L5_2 = A0_2
      L6_2 = getLocalizedText
      L7_2 = "you_received_item"
      L8_2 = A2_2
      L9_2 = Framework
      L9_2 = L9_2.getItemLabel
      L10_2 = A1_2.name
      L9_2, L10_2 = L9_2(L10_2)
      L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  else
    L4_2 = A1_2.type
    if "weapon" == L4_2 then
      L4_2 = Framework
      L4_2 = L4_2.giveWeaponToPlayer
      L5_2 = A0_2
      L6_2 = A1_2.name
      L7_2 = A2_2
      L4_2(L5_2, L6_2, L7_2)
      if A3_2 then
        L4_2 = notify
        L5_2 = A0_2
        L6_2 = getLocalizedText
        L7_2 = "you_received_weapon"
        L8_2 = Framework
        L8_2 = L8_2.getWeaponLabel
        L9_2 = A1_2.name
        L8_2, L9_2, L10_2 = L8_2(L9_2)
        L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
        L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      end
    else
      L4_2 = A1_2.type
      if "account" == L4_2 then
        L4_2 = Framework
        L4_2 = L4_2.giveAccountMoneyToPlayer
        L5_2 = A0_2
        L6_2 = A1_2.name
        L7_2 = A2_2
        L4_2(L5_2, L6_2, L7_2)
        if A3_2 then
          L4_2 = notify
          L5_2 = A0_2
          L6_2 = getLocalizedText
          L7_2 = "you_received_money"
          L8_2 = Utils
          L8_2 = L8_2.groupDigits
          L9_2 = A2_2
          L8_2 = L8_2(L9_2)
          L9_2 = Framework
          L9_2 = L9_2.getAccountLabel
          L10_2 = A1_2.name
          L9_2, L10_2 = L9_2(L10_2)
          L6_2, L7_2, L8_2, L9_2, L10_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
          L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
        end
      end
    end
  end
end
L10_1.giveGenericObjectToPlayerId = L11_1
L10_1 = Framework
function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if "item" == A2_2 then
    L4_2 = Framework
    L4_2 = L4_2.removeItemFromPlayer
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A3_2
    L4_2(L5_2, L6_2, L7_2)
  elseif "weapon" == A2_2 then
    L4_2 = Framework
    L4_2 = L4_2.removeWeaponFromPlayer
    L5_2 = A0_2
    L6_2 = A1_2
    L4_2(L5_2, L6_2)
  elseif "account" == A2_2 then
    L4_2 = Framework
    L4_2 = L4_2.removeAccountMoneyFromPlayer
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A3_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L10_1.removeGenericObjectFromPlayerId = L11_1
L10_1 = Framework
function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if "item" == A2_2 then
    L4_2 = Framework
    L4_2 = L4_2.hasPlayerEnoughOfItem
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A3_2
    return L4_2(L5_2, L6_2, L7_2)
  elseif "weapon" == A2_2 then
    L4_2 = Framework
    L4_2 = L4_2.hasPlayerWeapon
    L5_2 = A0_2
    L6_2 = A1_2
    return L4_2(L5_2, L6_2)
  elseif "account" == A2_2 then
    L4_2 = Framework
    L4_2 = L4_2.getAccountMoneyFromPlayer
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    L4_2 = A3_2 <= L4_2
    return L4_2
  end
end
L10_1.hasPlayerEnoughOfGenericObject = L11_1
L10_1 = Framework
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if "item" == A2_2 then
    L3_2 = Framework
    L3_2 = L3_2.getPlayerItemCount
    L4_2 = A0_2
    L5_2 = A1_2
    return L3_2(L4_2, L5_2)
  elseif "weapon" == A2_2 then
    L3_2 = Framework
    L3_2 = L3_2.hasPlayerWeapon
    L4_2 = A0_2
    L5_2 = A1_2
    L3_2 = L3_2(L4_2, L5_2)
    if L3_2 then
      L3_2 = 1
      if L3_2 then
        goto lbl_23
      end
    end
    L3_2 = 0
    ::lbl_23::
    return L3_2
  elseif "account" == A2_2 then
    L3_2 = Framework
    L3_2 = L3_2.getAccountMoneyFromPlayer
    L4_2 = A0_2
    L5_2 = A1_2
    return L3_2(L4_2, L5_2)
  end
end
L10_1.getPlayerGenericObjectCount = L11_1
L10_1 = Framework
function L11_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  if "item" == A2_2 then
    L4_2 = Framework
    L4_2 = L4_2.canPlayerCarryItem
    L5_2 = A0_2
    L6_2 = A1_2
    L7_2 = A3_2
    return L4_2(L5_2, L6_2, L7_2)
  elseif "weapon" == A2_2 then
    L4_2 = Framework
    L4_2 = L4_2.hasPlayerWeapon
    L5_2 = A0_2
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    L4_2 = not L4_2
    return L4_2
  else
    L4_2 = true
    return L4_2
  end
end
L10_1.canPlayerCarryGenericObject = L11_1
L10_1 = Framework
function L11_1(A0_2, A1_2)
  local L2_2, L3_2
  if "item" == A1_2 then
    L2_2 = Framework
    L2_2 = L2_2.getItemLabel
    L3_2 = A0_2
    return L2_2(L3_2)
  elseif "weapon" == A1_2 then
    L2_2 = Framework
    L2_2 = L2_2.getWeaponLabel
    L3_2 = A0_2
    return L2_2(L3_2)
  elseif "account" == A1_2 then
    L2_2 = Framework
    L2_2 = L2_2.getAccountLabel
    L3_2 = A0_2
    return L2_2(L3_2)
  end
end
L10_1.getGenericObjectLabel = L11_1
L10_1 = Framework
function L11_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L5_2 = #A3_2
  if 0 == L5_2 then
    return
  end
  L5_2 = Utils
  L5_2 = L5_2.getRandomQuantity
  L6_2 = A1_2
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 <= 0 then
    return
  end
  L6_2 = {}
  L7_2 = {}
  L8_2 = 1
  L9_2 = L5_2
  L10_2 = 1
  for L11_2 = L8_2, L9_2, L10_2 do
    L12_2 = Utils
    L12_2 = L12_2.getRandomElementFromTable
    L13_2 = A3_2
    L14_2 = L6_2
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 then
      if not A4_2 then
        L13_2 = L12_2.name
        L6_2[L13_2] = true
      end
      L13_2 = Utils
      L13_2 = L13_2.getRandomQuantity
      L14_2 = L12_2.minQuantity
      L15_2 = L12_2.maxQuantity
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = Framework
      L14_2 = L14_2.canPlayerCarryGenericObject
      L15_2 = A0_2
      L16_2 = L12_2.name
      L17_2 = L12_2.type
      L18_2 = L13_2
      L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2)
      if L14_2 then
        L14_2 = Framework
        L14_2 = L14_2.giveGenericObjectToPlayerId
        L15_2 = A0_2
        L16_2 = L12_2.name
        L17_2 = L12_2.type
        L18_2 = L13_2
        L19_2 = true
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
        L14_2 = L12_2.name
        L15_2 = L12_2.name
        L15_2 = L7_2[L15_2]
        if not L15_2 then
          L15_2 = {}
          L15_2.quantity = 0
          L16_2 = Framework
          L16_2 = L16_2.getGenericObjectLabel
          L17_2 = L12_2.name
          L18_2 = L12_2.type
          L16_2 = L16_2(L17_2, L18_2)
          L15_2.label = L16_2
          L16_2 = L12_2.type
          L15_2.type = L16_2
          L16_2 = L12_2.name
          L15_2.name = L16_2
        end
        L7_2[L14_2] = L15_2
        L14_2 = L12_2.name
        L14_2 = L7_2[L14_2]
        L15_2 = L12_2.name
        L15_2 = L7_2[L15_2]
        L15_2 = L15_2.quantity
        L15_2 = L15_2 + L13_2
        L14_2.quantity = L15_2
      else
        L14_2 = notify
        L15_2 = A0_2
        L16_2 = getLocalizedText
        L17_2 = "you_cant_carry_this_object"
        L16_2, L17_2, L18_2, L19_2 = L16_2(L17_2)
        L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
      end
    end
  end
  return L7_2
end
L10_1.giveMultipleItemsByChances = L11_1
L10_1 = Framework
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A1_2 then
    L2_2 = #A1_2
    if 0 ~= L2_2 then
      goto lbl_8
    end
  end
  L2_2 = true
  do return L2_2 end
  ::lbl_8::
  L2_2 = 1
  L3_2 = #A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = Framework
    L7_2 = L7_2.hasPlayerEnoughOfGenericObject
    L8_2 = A0_2
    L9_2 = L6_2.name
    L10_2 = L6_2.type
    L11_2 = L6_2.minQuantity
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2)
    if not L7_2 then
      L7_2 = notify
      L8_2 = A0_2
      L9_2 = getLocalizedText
      L10_2 = "you_dont_have_enough"
      L11_2 = L6_2.minQuantity
      L12_2 = Framework
      L12_2 = L12_2.getGenericObjectLabel
      L13_2 = L6_2.name
      L14_2 = L6_2.type
      L12_2, L13_2, L14_2 = L12_2(L13_2, L14_2)
      L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L7_2 = false
      return L7_2
    end
  end
  L2_2 = true
  return L2_2
end
L10_1.hasPlayerAllRequiredItems = L11_1
L10_1 = Framework
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if A1_2 then
    L2_2 = #A1_2
    if 0 ~= L2_2 then
      goto lbl_7
    end
  end
  do return end
  ::lbl_7::
  L2_2 = 1
  L3_2 = #A1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A1_2[L5_2]
    L7_2 = L6_2.hasToRemove
    if L7_2 then
      L7_2 = Framework
      L7_2 = L7_2.removeGenericObjectFromPlayerId
      L8_2 = A0_2
      L9_2 = L6_2.name
      L10_2 = L6_2.type
      L11_2 = L6_2.minQuantity
      L7_2(L8_2, L9_2, L10_2, L11_2)
    end
  end
end
L10_1.removeAllRequiredItemsFromPlayer = L11_1
