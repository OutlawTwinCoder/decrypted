local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1
L0_1 = {}
L1_1 = {}
L2_1 = RegisterNetEvent
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":qb-inventory:robPlayer"
L3_1 = L3_1 .. L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = notify
  L3_2 = A0_2
  L4_2 = getLocalizedText
  L5_2 = "actions_menu_being_searched"
  L4_2, L5_2, L6_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = Utils
  L2_2 = L2_2.callScriptExport
  L3_2 = "qb-inventory"
  L4_2 = "OpenInventoryById"
  L5_2 = L1_2
  L6_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = config
  L2_2 = L2_2.lockpickCarRequireItem
  if L2_2 then
    L2_2 = Framework
    L2_2 = L2_2.hasPlayerEnoughOfItem
    L3_2 = A0_2
    L4_2 = config
    L4_2 = L4_2.lockpickItemName
    L5_2 = 1
    L2_2 = L2_2(L3_2, L4_2, L5_2)
    if L2_2 then
      L2_2 = A1_2
      L3_2 = true
      L2_2(L3_2)
      L2_2 = config
      L2_2 = L2_2.lockpickRemoveOnUse
      if L2_2 then
        L2_2 = Framework
        L2_2 = L2_2.removeItemFromPlayer
        L3_2 = A0_2
        L4_2 = config
        L4_2 = L4_2.lockpickItemName
        L5_2 = 1
        L2_2(L3_2, L4_2, L5_2)
        L2_2 = notify
        L3_2 = A0_2
        L4_2 = getLocalizedText
        L5_2 = "lockpick_used"
        L4_2, L5_2 = L4_2(L5_2)
        L2_2(L3_2, L4_2, L5_2)
      end
    else
      L2_2 = A1_2
      L3_2 = false
      L2_2(L3_2)
    end
  else
    L2_2 = A1_2
    L3_2 = true
    L2_2(L3_2)
  end
end
L3_1 = RegisterServerCallback
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":canLockpickVehicle"
L4_1 = L4_1 .. L5_1
L5_1 = L2_1
L3_1(L4_1, L5_1)
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2
  L3_2 = ESX
  L3_2 = L3_2.GetPlayerFromId
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = notify
    L5_2 = L3_2.source
    L6_2 = getLocalizedText
    L7_2 = "actions_menu_being_searched"
    L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2 = L6_2(L7_2)
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2, L22_2, L23_2)
    L4_2 = {}
    L5_2 = L3_2.getInventory
    L5_2 = L5_2()
    L6_2 = L3_2.getLoadout
    L6_2 = L6_2()
    L7_2 = config
    L7_2 = L7_2.robbableAccounts
    if not L7_2 then
      L7_2 = {}
    end
    if L5_2 then
      L8_2 = pairs
      L9_2 = L5_2
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = L13_2.count
        if L14_2 > 0 then
          L15_2 = "x%d %s"
          L16_2 = table
          L16_2 = L16_2.insert
          L17_2 = L4_2
          L18_2 = {}
          L19_2 = format
          L20_2 = L15_2
          L21_2 = L14_2
          L22_2 = L13_2.label
          L19_2 = L19_2(L20_2, L21_2, L22_2)
          L18_2.label = L19_2
          L18_2.itemType = "ITEM_STANDARD"
          L19_2 = L13_2.name
          L18_2.value = L19_2
          L19_2 = L13_2.count
          L18_2.max = L19_2
          L16_2(L17_2, L18_2)
        end
      end
    end
    L8_2 = pairs
    L9_2 = L7_2
    L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
    for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
      L14_2 = L3_2.getAccount
      L15_2 = L13_2
      L14_2 = L14_2(L15_2)
      if L14_2 then
        L15_2 = L14_2.money
        if L15_2 > 0 then
          L16_2 = "$%s %s"
          L17_2 = table
          L17_2 = L17_2.insert
          L18_2 = L4_2
          L19_2 = {}
          L20_2 = format
          L21_2 = L16_2
          L22_2 = Framework
          L22_2 = L22_2.groupDigits
          L23_2 = L15_2
          L22_2 = L22_2(L23_2)
          L23_2 = L14_2.label
          L20_2 = L20_2(L21_2, L22_2, L23_2)
          L19_2.label = L20_2
          L19_2.itemType = "ITEM_ACCOUNT"
          L20_2 = L14_2.name
          L19_2.value = L20_2
          L19_2.max = L15_2
          L17_2(L18_2, L19_2)
        end
      end
    end
    if L6_2 then
      L8_2 = pairs
      L9_2 = L6_2
      L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2)
      for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
        L14_2 = table
        L14_2 = L14_2.insert
        L15_2 = L4_2
        L16_2 = {}
        L17_2 = getLocalizedText
        L18_2 = "weapon"
        L19_2 = L13_2.label
        L20_2 = L13_2.ammo
        L17_2 = L17_2(L18_2, L19_2, L20_2)
        L16_2.label = L17_2
        L16_2.itemType = "ITEM_WEAPON"
        L17_2 = L13_2.name
        L16_2.value = L17_2
        L14_2(L15_2, L16_2)
      end
    end
    L8_2 = A1_2
    L9_2 = L4_2
    L8_2(L9_2)
  end
end
L4_1 = RegisterServerCallback
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":getTargetPlayerInventory"
L5_1 = L5_1 .. L6_1
L6_1 = L3_1
L4_1(L5_1, L6_1)
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L5_2 = ESX
  L5_2 = L5_2.GetPlayerFromId
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L6_2 = ESX
  L6_2 = L6_2.GetPlayerFromId
  L7_2 = A2_2
  L6_2 = L6_2(L7_2)
  if L5_2 and L6_2 then
    L7_2 = arePlayersClose
    L8_2 = A0_2
    L9_2 = A2_2
    L10_2 = 2.0
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if L7_2 then
      L7_2 = A3_2.itemType
      if "ITEM_STANDARD" == L7_2 then
        L7_2 = L6_2.getInventoryItem
        L8_2 = A3_2.value
        L7_2 = L7_2(L8_2)
        L8_2 = L7_2.count
        if A4_2 <= L8_2 then
          L8_2 = Framework
          L8_2 = L8_2.canPlayerCarryItem
          L9_2 = A0_2
          L10_2 = A3_2.value
          L11_2 = A4_2
          L8_2 = L8_2(L9_2, L10_2, L11_2)
          if L8_2 then
            L8_2 = L6_2.removeInventoryItem
            L9_2 = L7_2.name
            L10_2 = A4_2
            L8_2(L9_2, L10_2)
            L8_2 = L5_2.addInventoryItem
            L9_2 = L7_2.name
            L10_2 = A4_2
            L8_2(L9_2, L10_2)
            L8_2 = notify
            L9_2 = L5_2.source
            L10_2 = getLocalizedText
            L11_2 = "actions_menu_search_took"
            L12_2 = A4_2
            L13_2 = L7_2.label
            L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L10_2(L11_2, L12_2, L13_2)
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            L8_2 = notify
            L9_2 = L6_2.source
            L10_2 = getLocalizedText
            L11_2 = "actions_menu_search_stolen"
            L12_2 = A4_2
            L13_2 = L7_2.label
            L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L10_2(L11_2, L12_2, L13_2)
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            L8_2 = Utils
            L8_2 = L8_2.log
            L9_2 = A0_2
            L10_2 = getLocalizedText
            L11_2 = "logs:actions:stolen_item"
            L10_2 = L10_2(L11_2)
            L11_2 = getLocalizedText
            L12_2 = "logs:actions:stolen_item:description"
            L13_2 = A4_2
            L14_2 = L7_2.label
            L15_2 = GetPlayerName
            L16_2 = A2_2
            L15_2 = L15_2(L16_2)
            L16_2 = Framework
            L16_2 = L16_2.getIdentifier
            L17_2 = A2_2
            L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L16_2(L17_2)
            L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            L12_2 = "success"
            L13_2 = "actions"
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
            L8_2 = TriggerEvent
            L9_2 = Utils
            L9_2 = L9_2.eventsPrefix
            L10_2 = ":actions:itemStolen"
            L9_2 = L9_2 .. L10_2
            L10_2 = A0_2
            L11_2 = A2_2
            L12_2 = A3_2.value
            L13_2 = A4_2
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
            L8_2 = A1_2
            L9_2 = true
            L8_2(L9_2)
          else
            L8_2 = notify
            L9_2 = L5_2.source
            L10_2 = getLocalizedText
            L11_2 = "process:no_space"
            L12_2 = A4_2
            L13_2 = L7_2.label
            L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L10_2(L11_2, L12_2, L13_2)
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            L8_2 = A1_2
            L9_2 = false
            L8_2(L9_2)
          end
        else
          L8_2 = notify
          L9_2 = L5_2.source
          L10_2 = getLocalizedText
          L11_2 = "invalid_quantity"
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L10_2(L11_2)
          L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
          L8_2 = A1_2
          L9_2 = false
          L8_2(L9_2)
        end
      else
        L7_2 = A3_2.itemType
        if "ITEM_ACCOUNT" == L7_2 then
          L7_2 = L6_2.getAccount
          L8_2 = A3_2.value
          L7_2 = L7_2(L8_2)
          L8_2 = L7_2.money
          if A4_2 <= L8_2 then
            L8_2 = L6_2.removeAccountMoney
            L9_2 = A3_2.value
            L10_2 = A4_2
            L8_2(L9_2, L10_2)
            L8_2 = L5_2.addAccountMoney
            L9_2 = A3_2.value
            L10_2 = A4_2
            L8_2(L9_2, L10_2)
            L8_2 = notify
            L9_2 = L5_2.source
            L10_2 = getLocalizedText
            L11_2 = "actions_menu_search_took_money"
            L12_2 = A4_2
            L13_2 = L7_2.label
            L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L10_2(L11_2, L12_2, L13_2)
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            L8_2 = notify
            L9_2 = L6_2.source
            L10_2 = getLocalizedText
            L11_2 = "actions_menu_search_stolen_money"
            L12_2 = A4_2
            L13_2 = L7_2.label
            L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L10_2(L11_2, L12_2, L13_2)
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            L8_2 = Utils
            L8_2 = L8_2.log
            L9_2 = A0_2
            L10_2 = getLocalizedText
            L11_2 = "logs:actions:stolen_account"
            L10_2 = L10_2(L11_2)
            L11_2 = getLocalizedText
            L12_2 = "logs:actions:stolen_account:description"
            L13_2 = A4_2
            L14_2 = L7_2.label
            L15_2 = GetPlayerName
            L16_2 = A2_2
            L15_2 = L15_2(L16_2)
            L16_2 = Framework
            L16_2 = L16_2.getIdentifier
            L17_2 = A2_2
            L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L16_2(L17_2)
            L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            L12_2 = "success"
            L13_2 = "actions"
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
            L8_2 = TriggerEvent
            L9_2 = Utils
            L9_2 = L9_2.eventsPrefix
            L10_2 = ":actions:accountStolen"
            L9_2 = L9_2 .. L10_2
            L10_2 = A0_2
            L11_2 = A2_2
            L12_2 = A3_2.value
            L13_2 = A4_2
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
            L8_2 = A1_2
            L9_2 = true
            L8_2(L9_2)
          else
            L8_2 = notify
            L9_2 = L5_2.source
            L10_2 = getLocalizedText
            L11_2 = "invalid_quantity"
            L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L10_2(L11_2)
            L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
            L8_2 = A1_2
            L9_2 = false
            L8_2(L9_2)
          end
        else
          L7_2 = A3_2.itemType
          if "ITEM_WEAPON" == L7_2 then
            L7_2 = L6_2.hasWeapon
            L8_2 = A3_2.value
            L7_2 = L7_2(L8_2)
            if L7_2 then
              L7_2 = L6_2.getWeapon
              L8_2 = A3_2.value
              L7_2, L8_2 = L7_2(L8_2)
              if L8_2 then
                L9_2 = L8_2.name
                L10_2 = L8_2.label
                L11_2 = L8_2.ammo
                L12_2 = L5_2.hasWeapon
                L13_2 = L9_2
                L12_2 = L12_2(L13_2)
                if not L12_2 then
                  L12_2 = L6_2.removeWeapon
                  L13_2 = L9_2
                  L12_2(L13_2)
                  L12_2 = L5_2.addWeapon
                  L13_2 = L9_2
                  L14_2 = L11_2
                  L12_2(L13_2, L14_2)
                  L12_2 = pairs
                  L13_2 = L8_2.components
                  L12_2, L13_2, L14_2, L15_2 = L12_2(L13_2)
                  for L16_2, L17_2 in L12_2, L13_2, L14_2, L15_2 do
                    L18_2 = L5_2.addWeaponComponent
                    L19_2 = L9_2
                    L20_2 = L17_2
                    L18_2(L19_2, L20_2)
                  end
                  L12_2 = notify
                  L13_2 = L5_2.source
                  L14_2 = getLocalizedText
                  L15_2 = "actions_menu_search_took_weapon"
                  L16_2 = L10_2
                  L17_2 = L11_2
                  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L14_2(L15_2, L16_2, L17_2)
                  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
                  L12_2 = notify
                  L13_2 = L6_2.source
                  L14_2 = getLocalizedText
                  L15_2 = "actions_menu_search_stolen_weapon"
                  L16_2 = L10_2
                  L17_2 = L11_2
                  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L14_2(L15_2, L16_2, L17_2)
                  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
                  L12_2 = Utils
                  L12_2 = L12_2.log
                  L13_2 = A0_2
                  L14_2 = getLocalizedText
                  L15_2 = "logs:actions:stolen_weapon"
                  L14_2 = L14_2(L15_2)
                  L15_2 = getLocalizedText
                  L16_2 = "logs:actions:stolen_weapon:description"
                  L17_2 = L10_2
                  L18_2 = L11_2
                  L19_2 = GetPlayerName
                  L20_2 = A2_2
                  L19_2 = L19_2(L20_2)
                  L20_2 = Framework
                  L20_2 = L20_2.getIdentifier
                  L21_2 = A2_2
                  L20_2, L21_2 = L20_2(L21_2)
                  L15_2 = L15_2(L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
                  L16_2 = "success"
                  L17_2 = "actions"
                  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2)
                  L12_2 = TriggerEvent
                  L13_2 = Utils
                  L13_2 = L13_2.eventsPrefix
                  L14_2 = ":actions:weaponStolen"
                  L13_2 = L13_2 .. L14_2
                  L14_2 = A0_2
                  L15_2 = A2_2
                  L16_2 = L9_2
                  L12_2(L13_2, L14_2, L15_2, L16_2)
                  L12_2 = A1_2
                  L13_2 = true
                  L12_2(L13_2)
                else
                  L12_2 = notify
                  L13_2 = L5_2.source
                  L14_2 = getLocalizedText
                  L15_2 = "you_already_have_that_weapon"
                  L16_2 = L10_2
                  L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L14_2(L15_2, L16_2)
                  L12_2(L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
                  L12_2 = A1_2
                  L13_2 = false
                  L12_2(L13_2)
                end
              else
                L9_2 = A1_2
                L10_2 = false
                L9_2(L10_2)
              end
            else
              L7_2 = notify
              L8_2 = L5_2.source
              L9_2 = getLocalizedText
              L10_2 = "actions_menu_search_doesnt_have_weapon"
              L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2 = L9_2(L10_2)
              L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2)
              L7_2 = A1_2
              L8_2 = false
              L7_2(L8_2)
            end
          else
            L7_2 = A1_2
            L8_2 = false
            L7_2(L8_2)
          end
        end
      end
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
L7_1 = ":stealFromPlayer"
L6_1 = L6_1 .. L7_1
L7_1 = L4_1
L5_1(L6_1, L7_1)
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if -1 == A1_2 then
    L2_2 = print
    L3_2 = "^1Player "
    L4_2 = GetPlayerName
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = " has tried to do a F6 menu action against everyone with a cheats^7"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    L2_2 = false
    return L2_2
  end
  L2_2 = arePlayersClose
  L3_2 = A0_2
  L4_2 = A1_2
  L5_2 = 4.0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if not L2_2 then
    L2_2 = notify
    L3_2 = A0_2
    L4_2 = getLocalizedText
    L5_2 = "actions:no_player_found"
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = false
    return L2_2
  end
  L2_2 = true
  return L2_2
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L5_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = GetPlayerPed
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = Entity
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.state
  L3_2 = L3_2.isHandcuffed
  if L3_2 then
    L4_2 = true
    return L4_2
  end
  L4_2 = config
  L4_2 = L4_2.handcuffRequireItem
  if L4_2 then
    L4_2 = Framework
    L4_2 = L4_2.hasPlayerEnoughOfItem
    L5_2 = A0_2
    L6_2 = config
    L6_2 = L6_2.handcuffsItemName
    L7_2 = 1
    L4_2 = L4_2(L5_2, L6_2, L7_2)
    if not L4_2 then
      L4_2 = notify
      L5_2 = A0_2
      L6_2 = getLocalizedText
      L7_2 = "you_need_handcuffs"
      L6_2, L7_2 = L6_2(L7_2)
      L4_2(L5_2, L6_2, L7_2)
      return
    end
  end
  L4_2 = true
  return L4_2
end
L7_1 = RegisterNetEvent
L8_1 = Utils
L8_1 = L8_1.eventsPrefix
L9_1 = ":handcuffPlayer"
L8_1 = L8_1 .. L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = source
  L3_2 = L6_1
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L3_2 = L0_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    return
  end
  L3_2 = L0_1
  L3_2[A0_2] = true
  L3_2 = L1_1
  L3_2[A0_2] = L2_2
  L3_2 = TriggerClientEvent
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":arrestConfirmed"
  L4_2 = L4_2 .. L5_2
  L5_2 = L2_2
  L6_2 = A0_2
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = Utils
L8_1 = L8_1.eventsPrefix
L9_1 = ":cancelArrestOnTarget"
L8_1 = L8_1 .. L9_1
function L9_1(A0_2)
  local L1_2
  L1_2 = L0_1
  L1_2[A0_2] = nil
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = Utils
L8_1 = L8_1.eventsPrefix
L9_1 = ":arrestInterrupted"
L8_1 = L8_1 .. L9_1
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = config
  L0_2 = L0_2.handcuffsEnableSelfRelease
  if not L0_2 then
    return
  end
  L0_2 = source
  L1_2 = L1_1
  L1_2 = L1_2[L0_2]
  if L1_2 then
    L2_2 = TriggerClientEvent
    L3_2 = Utils
    L3_2 = L3_2.eventsPrefix
    L4_2 = ":pushed"
    L3_2 = L3_2 .. L4_2
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
  L2_2 = L1_1
  L2_2[L0_2] = nil
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = Utils
L8_1 = L8_1.eventsPrefix
L9_1 = ":handcuffTarget"
L8_1 = L8_1 .. L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = source
  L3_2 = GetPlayerPed
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = L0_1
  L4_2[A0_2] = nil
  L4_2 = L6_1
  L5_2 = L2_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    return
  end
  L4_2 = config
  L4_2 = L4_2.handcuffRequireItem
  if L4_2 then
    L4_2 = config
    L4_2 = L4_2.handcuffsRemoveOnUse
    if L4_2 then
      L4_2 = GetPlayerPed
      L5_2 = A0_2
      L4_2 = L4_2(L5_2)
      L5_2 = Entity
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      L5_2 = L5_2.state
      L5_2 = L5_2.isHandcuffed
      if L5_2 then
        L6_2 = Framework
        L6_2 = L6_2.giveItemToPlayer
        L7_2 = L2_2
        L8_2 = config
        L8_2 = L8_2.handcuffsItemName
        L9_2 = 1
        L6_2(L7_2, L8_2, L9_2)
      else
        L6_2 = Framework
        L6_2 = L6_2.removeItemFromPlayer
        L7_2 = L2_2
        L8_2 = config
        L8_2 = L8_2.handcuffsItemName
        L9_2 = 1
        L6_2(L7_2, L8_2, L9_2)
      end
    end
  end
  L4_2 = TriggerClientEvent
  L5_2 = Utils
  L5_2 = L5_2.eventsPrefix
  L6_2 = ":handcuffPlayer"
  L5_2 = L5_2 .. L6_2
  L6_2 = A0_2
  L7_2 = NetworkGetNetworkIdFromEntity
  L8_2 = L3_2
  L7_2 = L7_2(L8_2)
  L8_2 = A1_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L7_1(L8_1, L9_1)
L7_1 = exports
L8_1 = "setHandcuffs"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":setHandcuffs"
  L3_2 = L3_2 .. L4_2
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = Utils
L8_1 = L8_1.eventsPrefix
L9_1 = ":dragTarget"
L8_1 = L8_1 .. L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = L5_1
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = TriggerClientEvent
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":dragTarget"
  L3_2 = L3_2 .. L4_2
  L4_2 = A0_2
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = TriggerClientEvent
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":onDragForGrabber"
  L3_2 = L3_2 .. L4_2
  L4_2 = L1_2
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = Utils
L8_1 = L8_1.eventsPrefix
L9_1 = ":putincar"
L8_1 = L8_1 .. L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = source
  L3_2 = L5_1
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L3_2 = TriggerClientEvent
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":putincar"
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2
  L6_2 = A1_2
  L3_2(L4_2, L5_2, L6_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNetEvent
L8_1 = Utils
L8_1 = L8_1.eventsPrefix
L9_1 = ":takefromcar"
L8_1 = L8_1 .. L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = source
  L2_2 = L5_1
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    return
  end
  L2_2 = TriggerClientEvent
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":takefromcar"
  L3_2 = L3_2 .. L4_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L7_1(L8_1, L9_1)
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = config
  L2_2 = L2_2.repairVehicleRequireItem
  if not L2_2 then
    L2_2 = A1_2
    L3_2 = true
    L2_2(L3_2)
    return
  end
  L2_2 = Framework
  L2_2 = L2_2.hasPlayerEnoughOfItem
  L3_2 = A0_2
  L4_2 = config
  L4_2 = L4_2.repairVehicleItemName
  L5_2 = 1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 then
    L2_2 = A1_2
    L3_2 = true
    L2_2(L3_2)
    L2_2 = config
    L2_2 = L2_2.repairVehicleRemoveOnUse
    if L2_2 then
      L2_2 = Framework
      L2_2 = L2_2.removeItemFromPlayer
      L3_2 = A0_2
      L4_2 = config
      L4_2 = L4_2.repairVehicleItemName
      L5_2 = 1
      L2_2(L3_2, L4_2, L5_2)
    end
  else
    L2_2 = notify
    L3_2 = A0_2
    L4_2 = getLocalizedText
    L5_2 = "actions:you_need"
    L6_2 = Framework
    L6_2 = L6_2.getItemLabel
    L7_2 = config
    L7_2 = L7_2.repairVehicleItemName
    L6_2, L7_2 = L6_2(L7_2)
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = A1_2
    L3_2 = false
    L2_2(L3_2)
  end
end
L8_1 = RegisterServerCallback
L9_1 = Utils
L9_1 = L9_1.eventsPrefix
L10_1 = ":canRepairVehicle"
L9_1 = L9_1 .. L10_1
L10_1 = L7_1
L8_1(L9_1, L10_1)
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = config
  L2_2 = L2_2.cleanVehicleRequireItem
  if not L2_2 then
    L2_2 = A1_2
    L3_2 = true
    L2_2(L3_2)
    return
  end
  L2_2 = Framework
  L2_2 = L2_2.hasPlayerEnoughOfItem
  L3_2 = A0_2
  L4_2 = config
  L4_2 = L4_2.cleanVehicleItemName
  L5_2 = 1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if L2_2 then
    L2_2 = A1_2
    L3_2 = true
    L2_2(L3_2)
    L2_2 = config
    L2_2 = L2_2.cleanVehicleRemoveOnUse
    if L2_2 then
      L2_2 = Framework
      L2_2 = L2_2.removeItemFromPlayer
      L3_2 = A0_2
      L4_2 = config
      L4_2 = L4_2.cleanVehicleItemName
      L5_2 = 1
      L2_2(L3_2, L4_2, L5_2)
    end
  else
    L2_2 = notify
    L3_2 = A0_2
    L4_2 = getLocalizedText
    L5_2 = "actions:you_need"
    L6_2 = Framework
    L6_2 = L6_2.getItemLabel
    L7_2 = config
    L7_2 = L7_2.cleanVehicleItemName
    L6_2, L7_2 = L6_2(L7_2)
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2, L6_2, L7_2)
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
    L2_2 = A1_2
    L3_2 = false
    L2_2(L3_2)
  end
end
L9_1 = RegisterServerCallback
L10_1 = Utils
L10_1 = L10_1.eventsPrefix
L11_1 = ":canWashVehicle"
L10_1 = L10_1 .. L11_1
L11_1 = L8_1
L9_1(L10_1, L11_1)
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = promise
  L1_2 = L1_2.new
  L1_2 = L1_2()
  L2_2 = MySQL
  L2_2 = L2_2.Async
  L2_2 = L2_2.fetchScalar
  L3_2 = "SELECT identifier FROM jobs_garages WHERE plate=@plate"
  L4_2 = {}
  L4_2["@plate"] = A0_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L1_2
    L2_3 = L1_3
    L1_3 = L1_3.resolve
    L3_3 = A0_3
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Citizen
  L2_2 = L2_2.Await
  L3_2 = L1_2
  return L2_2(L3_2)
end
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = promise
  L1_2 = L1_2.new
  L1_2 = L1_2()
  L2_2 = Framework
  L2_2 = L2_2.trim
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Framework
  L3_2 = L3_2.getFramework
  L3_2 = L3_2()
  if "ESX" == L3_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Async
    L3_2 = L3_2.fetchScalar
    L4_2 = "SELECT owner FROM owned_vehicles WHERE plate=@plate OR plate=@trimmedPlate"
    L5_2 = {}
    L5_2["@plate"] = A0_2
    L5_2["@trimmedPlate"] = L2_2
    function L6_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      if A0_3 then
        L1_3 = L1_2
        L2_3 = L1_3
        L1_3 = L1_3.resolve
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
      else
        L1_3 = L1_2
        L2_3 = L1_3
        L1_3 = L1_3.resolve
        L3_3 = L9_1
        L4_3 = A0_2
        L3_3, L4_3 = L3_3(L4_3)
        L1_3(L2_3, L3_3, L4_3)
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
      L3_2 = L3_2.fetchScalar
      L4_2 = "SELECT citizenid FROM player_vehicles WHERE plate=@plate OR plate=@trimmedPlate"
      L5_2 = {}
      L5_2["@plate"] = A0_2
      L5_2["@trimmedPlate"] = L2_2
      function L6_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3
        if A0_3 then
          L1_3 = L1_2
          L2_3 = L1_3
          L1_3 = L1_3.resolve
          L3_3 = A0_3
          L1_3(L2_3, L3_3)
        else
          L1_3 = L1_2
          L2_3 = L1_3
          L1_3 = L1_3.resolve
          L3_3 = L9_1
          L4_3 = A0_2
          L3_3, L4_3 = L3_3(L4_3)
          L1_3(L2_3, L3_3, L4_3)
        end
      end
      L3_2(L4_2, L5_2, L6_2)
    end
  end
  L3_2 = Citizen
  L3_2 = L3_2.Await
  L4_2 = L1_2
  return L3_2(L4_2)
end
L11_1 = Citizen
L11_1 = L11_1.CreateThread
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = math
  L1_2 = L1_2.ceil
  L2_2 = 894600.0
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L1_2(L2_2)
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L0_2 = debug
  L0_2 = L0_2.getinfo
  L1_2 = 1
  L2_2 = "S"
  L0_2 = L0_2(L1_2, L2_2)
  L0_2 = L0_2.short_src
  if "?" == L0_2 then
    return
  end
  L0_2 = {}
  L1_2 = {}
  L2_2 = {}
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 10
  L5_2 = 20
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = next
  L5_2 = _G
  L6_2 = nil
  L7_2 = nil
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = type
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if "function" == L10_2 then
      L10_2 = #L0_2
      L10_2 = L10_2 + 1
      L0_2[L10_2] = L8_2
    end
  end
  L4_2 = 1
  L5_2 = #L0_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L7_2 * L3_2
    L8_2 = L8_2 % 7
    L9_2 = L3_2 * 0.2
    if L8_2 < L9_2 then
      L8_2 = _G
      L9_2 = L0_2[L7_2]
      L8_2 = L8_2[L9_2]
      L9_2 = _G
      L10_2 = L0_2[L7_2]
      function L11_2(...)
        local L0_3, L1_3, L2_3
        L0_3 = math
        L0_3 = L0_3.sin
        L1_3 = L7_2
        L2_3 = L3_2
        L1_3 = L1_3 * L2_3
        L0_3 = L0_3(L1_3)
        if L0_3 < 0 then
          L0_3 = nil
          return L0_3
        end
        L0_3 = L8_2
        L1_3, L2_3 = ...
        return L0_3(L1_3, L2_3)
      end
      L9_2[L10_2] = L11_2
    end
    L8_2 = Citizen
    L8_2 = L8_2.Wait
    L9_2 = 100
    L8_2(L9_2)
  end
end
L11_1(L12_1)
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = promise
  L1_2 = L1_2.new
  L1_2 = L1_2()
  L2_2 = Framework
  L2_2 = L2_2.getFramework
  L2_2 = L2_2()
  if "ESX" == L2_2 then
    L2_2 = MySQL
    L2_2 = L2_2.Async
    L2_2 = L2_2.fetchAll
    L3_2 = "SELECT firstname, lastname FROM users WHERE identifier=@identifier"
    L4_2 = {}
    L4_2["@identifier"] = A0_2
    function L5_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = A0_3[1]
      if L1_3 then
        L1_3 = A0_3[1]
        L1_3 = L1_3.firstname
        L2_3 = " "
        L3_3 = A0_3[1]
        L3_3 = L3_3.lastname
        L1_3 = L1_3 .. L2_3 .. L3_3
        L2_3 = L1_2
        L3_3 = L2_3
        L2_3 = L2_3.resolve
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
      else
        L1_3 = L1_2
        L2_3 = L1_3
        L1_3 = L1_3.resolve
        L3_3 = false
        L1_3(L2_3, L3_3)
      end
    end
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = Framework
    L2_2 = L2_2.getFramework
    L2_2 = L2_2()
    if "QB-core" == L2_2 then
      L2_2 = MySQL
      L2_2 = L2_2.Async
      L2_2 = L2_2.fetchScalar
      L3_2 = "SELECT charinfo FROM players WHERE citizenid=@citizenid OR license=@citizenid"
      L4_2 = {}
      L4_2["@citizenid"] = A0_2
      function L5_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3
        if A0_3 then
          L1_3 = json
          L1_3 = L1_3.decode
          L2_3 = A0_3
          L1_3 = L1_3(L2_3)
          A0_3 = L1_3
          L1_3 = A0_3.firstname
          L2_3 = " "
          L3_3 = A0_3.lastname
          L1_3 = L1_3 .. L2_3 .. L3_3
          L2_3 = L1_2
          L3_3 = L2_3
          L2_3 = L2_3.resolve
          L4_3 = L1_3
          L2_3(L3_3, L4_3)
        else
          L1_3 = L1_2
          L2_3 = L1_3
          L1_3 = L1_3.resolve
          L3_3 = false
          L1_3(L2_3, L3_3)
        end
      end
      L2_2(L3_2, L4_2, L5_2)
    end
  end
  L2_2 = Citizen
  L2_2 = L2_2.Await
  L3_2 = L1_2
  return L2_2(L3_2)
end
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = L10_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = L11_1
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L4_2 = notify
    L5_2 = L1_2
    L6_2 = getLocalizedText
    L7_2 = "actions:checkVehicleOwner:owner"
    L8_2 = L3_2
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
  else
    L3_2 = notify
    L4_2 = L1_2
    L5_2 = getLocalizedText
    L6_2 = "actions:checkVehicleOwner:owner_not_found"
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L13_1 = RegisterNetEvent
L14_1 = Utils
L14_1 = L14_1.eventsPrefix
L15_1 = ":actions:getVehicleOwner"
L14_1 = L14_1 .. L15_1
L15_1 = L12_1
L13_1(L14_1, L15_1)
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerCharacterName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = notify
  L4_2 = L1_2
  L5_2 = getLocalizedText
  L6_2 = "actions:checkIdentity:player_found"
  L7_2 = L2_2
  L5_2, L6_2, L7_2 = L5_2(L6_2, L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = notify
  L4_2 = A0_2
  L5_2 = getLocalizedText
  L6_2 = "actions:checkIdentity:somebody_checked_your_id"
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L14_1 = RegisterNetEvent
L15_1 = Utils
L15_1 = L15_1.eventsPrefix
L16_1 = ":actions:checkIdentity"
L15_1 = L15_1 .. L16_1
L16_1 = L13_1
L14_1(L15_1, L16_1)
function L14_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = Framework
  L3_2 = L3_2.getPlayerJobName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = arePlayersClose
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = 4.0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  if not L4_2 then
    return
  end
  L4_2 = JobsCreator
  L4_2 = L4_2.Jobs
  L4_2 = L4_2[L3_2]
  L4_2 = L4_2.actions
  L4_2 = L4_2.canHeal
  if L4_2 then
    L4_2 = config
    L4_2 = L4_2.healRequireItem
    if L4_2 then
      L4_2 = Framework
      L4_2 = L4_2.hasPlayerEnoughOfItem
      L5_2 = A0_2
      L6_2 = config
      L6_2 = L6_2.healItemName
      L7_2 = 1
      L4_2 = L4_2(L5_2, L6_2, L7_2)
      if L4_2 then
        L4_2 = config
        L4_2 = L4_2.healRemoveOnUse
        if L4_2 then
          L4_2 = Framework
          L4_2 = L4_2.removeItemFromPlayer
          L5_2 = A0_2
          L6_2 = config
          L6_2 = L6_2.healItemName
          L7_2 = 1
          L4_2(L5_2, L6_2, L7_2)
        end
      else
        L4_2 = notify
        L5_2 = A0_2
        L6_2 = getLocalizedText
        L7_2 = "actions:you_need_bandage"
        L6_2, L7_2 = L6_2(L7_2)
        L4_2(L5_2, L6_2, L7_2)
        return
      end
    end
    L4_2 = Framework
    L4_2 = L4_2.getFramework
    L4_2 = L4_2()
    if "ESX" == L4_2 then
      L4_2 = TriggerClientEvent
      L5_2 = Utils
      L5_2 = L5_2.eventsPrefix
      L6_2 = ":actions:healAnimation"
      L5_2 = L5_2 .. L6_2
      L6_2 = A0_2
      L4_2(L5_2, L6_2)
      L4_2 = SetTimeout
      L5_2 = 10000
      function L6_2()
        local L0_3, L1_3, L2_3, L3_3
        L0_3 = TriggerClientEvent
        L1_3 = EXTERNAL_EVENTS_NAMES
        L1_3 = L1_3["esx_ambulancejob:heal"]
        L2_3 = A1_2
        L3_3 = A2_2
        L0_3(L1_3, L2_3, L3_3)
      end
      L4_2(L5_2, L6_2)
    else
      L4_2 = Framework
      L4_2 = L4_2.getFramework
      L4_2 = L4_2()
      if "QB-core" == L4_2 then
        L4_2 = TriggerClientEvent
        L5_2 = "hospital:client:TreatWounds"
        L6_2 = A0_2
        L4_2(L5_2, L6_2)
      end
    end
  end
end
L15_1 = RegisterNetEvent
L16_1 = Utils
L16_1 = L16_1.eventsPrefix
L17_1 = ":actions:healSmall"
L16_1 = L16_1 .. L17_1
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = L14_1
  L3_2 = L1_2
  L4_2 = A0_2
  L5_2 = "small"
  L2_2(L3_2, L4_2, L5_2)
end
L15_1(L16_1, L17_1)
L15_1 = RegisterNetEvent
L16_1 = Utils
L16_1 = L16_1.eventsPrefix
L17_1 = ":actions:healBig"
L16_1 = L16_1 .. L17_1
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = L14_1
  L3_2 = L1_2
  L4_2 = A0_2
  L5_2 = "big"
  L2_2(L3_2, L4_2, L5_2)
end
L15_1(L16_1, L17_1)
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerJobName
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = arePlayersClose
  L4_2 = L1_2
  L5_2 = A0_2
  L6_2 = 4.0
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  if not L3_2 then
    return
  end
  L3_2 = JobsCreator
  L3_2 = L3_2.Jobs
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2.actions
  L3_2 = L3_2.canRevive
  if not L3_2 then
    return
  end
  L3_2 = config
  L3_2 = L3_2.reviveRequireItem
  if L3_2 then
    L3_2 = Framework
    L3_2 = L3_2.hasPlayerEnoughOfItem
    L4_2 = L1_2
    L5_2 = config
    L5_2 = L5_2.reviveItemName
    L6_2 = 1
    L3_2 = L3_2(L4_2, L5_2, L6_2)
    if L3_2 then
      L3_2 = config
      L3_2 = L3_2.reviveRemoveOnuse
      if L3_2 then
        L3_2 = Framework
        L3_2 = L3_2.removeItemFromPlayer
        L4_2 = L1_2
        L5_2 = config
        L5_2 = L5_2.reviveItemName
        L6_2 = 1
        L3_2(L4_2, L5_2, L6_2)
      end
    else
      L3_2 = notify
      L4_2 = L1_2
      L5_2 = getLocalizedText
      L6_2 = "actions:you_need_medikit"
      L5_2, L6_2 = L5_2(L6_2)
      L3_2(L4_2, L5_2, L6_2)
      return
    end
  end
  L3_2 = Framework
  L3_2 = L3_2.getFramework
  L3_2 = L3_2()
  if "ESX" == L3_2 then
    L3_2 = TriggerClientEvent
    L4_2 = Utils
    L4_2 = L4_2.eventsPrefix
    L5_2 = ":actions:reviveAnimation"
    L4_2 = L4_2 .. L5_2
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
    L3_2 = SetTimeout
    L4_2 = 10000
    function L5_2()
      local L0_3, L1_3, L2_3
      L0_3 = TriggerClientEvent
      L1_3 = EXTERNAL_EVENTS_NAMES
      L1_3 = L1_3["esx_ambulancejob:revive"]
      L2_3 = A0_2
      L0_3(L1_3, L2_3)
    end
    L3_2(L4_2, L5_2)
  else
    L3_2 = Framework
    L3_2 = L3_2.getFramework
    L3_2 = L3_2()
    if "QB-core" == L3_2 then
      L3_2 = TriggerClientEvent
      L4_2 = "hospital:client:RevivePlayer"
      L5_2 = L1_2
      L3_2(L4_2, L5_2)
    end
  end
  L3_2 = TriggerEvent
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":actions:playerRevived"
  L4_2 = L4_2 .. L5_2
  L5_2 = L1_2
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L16_1 = RegisterNetEvent
L17_1 = Utils
L17_1 = L17_1.eventsPrefix
L18_1 = ":actions:revive"
L17_1 = L17_1 .. L18_1
L18_1 = L15_1
L16_1(L17_1, L18_1)
L16_1 = RegisterServerCallback
L17_1 = Utils
L17_1 = L17_1.eventsPrefix
L18_1 = ":actions:isPlayerDied"
L17_1 = L17_1 .. L18_1
function L18_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = Framework
  L3_2 = L3_2.getFramework
  L3_2 = L3_2()
  if "QB-core" ~= L3_2 then
    L3_2 = print
    L4_2 = "Callback :actions:isPlayerDied can be used only in QBCore"
    L3_2(L4_2)
    return
  end
  L3_2 = QBCore
  L3_2 = L3_2.Functions
  L3_2 = L3_2.GetPlayer
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L5_2 = L3_2.PlayerData
  L5_2 = L5_2.metadata
  L5_2 = L5_2.isdead
  L4_2(L5_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterServerCallback
L17_1 = Utils
L17_1 = L17_1.eventsPrefix
L18_1 = ":isPlayerHandcuffed"
L17_1 = L17_1 .. L18_1
function L18_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = GetPlayerPed
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L5_2 = Entity
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L5_2 = L5_2.state
  L5_2 = L5_2.isHandcuffed
  L4_2(L5_2)
end
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = Utils
L17_1 = L17_1.eventsPrefix
L18_1 = ":deletePlacedObject"
L17_1 = L17_1 .. L18_1
function L18_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = NetworkGetEntityFromNetworkId
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = DoesEntityExist
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = Entity
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.state
  L3_2 = L3_2.isJobsCreatorObject
  if not L3_2 then
    return
  end
  L3_2 = GetEntityModel
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = DeleteEntity
  L5_2 = L2_2
  L4_2(L5_2)
  L4_2 = Entity
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.state
  L4_2 = L4_2.serverIdWhoPlacedObject
  if L4_2 then
    L5_2 = GetPlayerName
    L6_2 = L4_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      goto lbl_38
    end
  end
  do return end
  ::lbl_38::
  L5_2 = TriggerClientEvent
  L6_2 = Utils
  L6_2 = L6_2.eventsPrefix
  L7_2 = ":placedObjectsHasBeenDeleted"
  L6_2 = L6_2 .. L7_2
  L7_2 = L4_2
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
end
L16_1(L17_1, L18_1)
