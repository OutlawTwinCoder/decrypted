local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
openedMenu = nil
L3_1 = false
canUseMarkers = true
L4_1 = {}
L5_1 = {}
L6_1 = {}
isOnDuty = true
hasFirstLoadFinished = false
L7_1 = RegisterNetEvent
L8_1 = Utils
L8_1 = L8_1.eventsPrefix
L9_1 = ":openGUI"
L8_1 = L8_1 .. L9_1
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetNuiFocus
  L3_2 = true
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SendNUIMessage
  L3_2 = {}
  L3_2.action = "show"
  L3_2.version = A0_2
  L3_2.fullConfig = A1_2
  L2_2(L3_2)
end
L7_1(L8_1, L9_1)
function L7_1(A0_2)
  local L1_2
  L1_2 = A0_2.jobName
  if "public_marker" ~= L1_2 then
    L1_2 = A0_2.type
    if "duty" ~= L1_2 then
      goto lbl_9
    end
  end
  L1_2 = true
  do return L1_2 end
  ::lbl_9::
  L1_2 = Framework
  L1_2 = L1_2.getFramework
  L1_2 = L1_2()
  L1_2 = "ESX" == L1_2 or L1_2
  return L1_2
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "#"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2 = L1_2
  L1_2 = tonumber
  L2_2 = "0x"
  L4_2 = A0_2
  L3_2 = A0_2.sub
  L5_2 = 1
  L6_2 = 2
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2(L2_2)
  L2_2 = tonumber
  L3_2 = "0x"
  L5_2 = A0_2
  L4_2 = A0_2.sub
  L6_2 = 3
  L7_2 = 4
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2(L3_2)
  L3_2 = tonumber
  L4_2 = "0x"
  L6_2 = A0_2
  L5_2 = A0_2.sub
  L7_2 = 5
  L8_2 = 6
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L4_2 .. L5_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
  return L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
end
getRGBFromHex = L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetDisplayNameFromVehicleModel
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetLabelText
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2 or L3_2
  L3_2 = L1_2 or L3_2
  if ("NULL" == L2_2 or not L2_2) and ("CARNOTFOUND" == L1_2 or not L1_2) then
    L3_2 = A0_2
  end
  return L3_2
end
getVehicleNameFromModel = L8_1
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = Framework
  L0_2 = L0_2.getFramework
  L0_2 = L0_2()
  if "ESX" == L0_2 then
    L0_2 = TriggerEvent
    L1_2 = "skinchanger:getSkin"
    function L2_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = TriggerServerEvent
      L2_3 = EXTERNAL_EVENTS_NAMES
      L2_3 = L2_3["esx_skin:save"]
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    L0_2(L1_2, L2_2)
  else
    L0_2 = print
    L1_2 = "^1Can't save skin in QBCore yet"
    L0_2(L1_2)
  end
end
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = config
  L2_2 = L2_2.modules
  L2_2 = L2_2.outfits
  if "default" ~= L2_2 then
    L2_2 = Utils
    L2_2 = L2_2.callModuleFunc
    L3_2 = "outfits"
    L4_2 = "setPlayerClothes"
    L5_2 = A0_2
    L6_2 = A1_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
    return
  end
  L2_2 = Framework
  L2_2 = L2_2.getFramework
  L2_2 = L2_2()
  if "ESX" == L2_2 then
    L2_2 = TriggerServerCallback
    L3_2 = EXTERNAL_EVENTS_NAMES
    L3_2 = L3_2["esx_skin:getPlayerSkin"]
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = TriggerEvent
      L2_3 = "skinchanger:loadClothes"
      L3_3 = A0_3
      L4_3 = A0_2
      L1_3(L2_3, L3_3, L4_3)
      L1_3 = A1_2
      if L1_3 then
        L1_3 = L8_1
        L1_3()
      end
    end
    L2_2(L3_2, L4_2)
  else
    L2_2 = Framework
    L2_2 = L2_2.getFramework
    L2_2 = L2_2()
    if "QB-core" == L2_2 then
      L2_2 = TriggerEvent
      L3_2 = "qb-clothing:client:loadOutfit"
      L4_2 = {}
      L4_2.outfitData = A0_2
      L2_2(L3_2, L4_2)
    end
  end
end
setClothes = L9_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Framework
  L1_2 = L1_2.getFramework
  L1_2 = L1_2()
  if "ESX" == L1_2 then
    L1_2 = TriggerServerPromise
    L2_2 = Utils
    L2_2 = L2_2.eventsPrefix
    L3_2 = ":switchJobDuty"
    L2_2 = L2_2 .. L3_2
    L3_2 = A0_2
    L1_2 = L1_2(L2_2, L3_2)
    isOnDuty = L1_2
  else
    L1_2 = Framework
    L1_2 = L1_2.getFramework
    L1_2 = L1_2()
    if "QB-core" == L1_2 then
      L1_2 = QBCore
      L1_2 = L1_2.Functions
      L1_2 = L1_2.GetPlayerData
      L1_2 = L1_2()
      L1_2 = L1_2.job
      L1_2 = L1_2.onduty
      L2_2 = TriggerServerEvent
      L3_2 = "QBCore:ToggleDuty"
      L2_2(L3_2)
      L2_2 = GetGameTimer
      L2_2 = L2_2()
      L2_2 = L2_2 + 2000
      while true do
        L3_2 = QBCore
        L3_2 = L3_2.Functions
        L3_2 = L3_2.GetPlayerData
        L3_2 = L3_2()
        L3_2 = L3_2.job
        L3_2 = L3_2.onduty
        if L1_2 ~= L3_2 then
          break
        end
        L3_2 = GetGameTimer
        L3_2 = L3_2()
        if not (L2_2 > L3_2) then
          break
        end
        L3_2 = Citizen
        L3_2 = L3_2.Wait
        L4_2 = 500
        L3_2(L4_2)
      end
      L3_2 = QBCore
      L3_2 = L3_2.Functions
      L3_2 = L3_2.GetPlayerData
      L3_2 = L3_2()
      L3_2 = L3_2.job
      L3_2 = L3_2.onduty
      isOnDuty = L3_2
    end
  end
  L1_2 = TriggerEvent
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":refreshMarkers"
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = TriggerEvent
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":toggleDuty"
  L2_2 = L2_2 .. L3_2
  L3_2 = isOnDuty
  L1_2(L2_2, L3_2)
  L1_2 = TriggerServerEvent
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":changeDutyStatus"
  L2_2 = L2_2 .. L3_2
  L3_2 = isOnDuty
  L1_2(L2_2, L3_2)
  L1_2 = Framework
  L1_2 = L1_2.getFramework
  L1_2 = L1_2()
  if "ESX" == L1_2 then
    L1_2 = isOnDuty
    if L1_2 then
      L1_2 = getLocalizedText
      L2_2 = "now_you_are_on_duty"
      L1_2 = L1_2(L2_2)
      if L1_2 then
        goto lbl_93
      end
    end
    L1_2 = getLocalizedText
    L2_2 = "now_you_are_off_duty"
    L1_2 = L1_2(L2_2)
    ::lbl_93::
    L2_2 = notifyClient
    L3_2 = L1_2
    L2_2(L3_2)
  end
end
L10_1 = RegisterNetEvent
L11_1 = Utils
L11_1 = L11_1.eventsPrefix
L12_1 = ":toggleCurrentDutyStatus"
L11_1 = L11_1 .. L12_1
L12_1 = L9_1
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = "QBCore:Player:SetPlayerData"
function L12_1(A0_2)
  local L1_2
  L1_2 = A0_2.job
  L1_2 = L1_2.onduty
  isOnDuty = L1_2
end
L10_1(L11_1, L12_1)
L10_1 = RegisterNetEvent
L11_1 = Utils
L11_1 = L11_1.eventsPrefix
L12_1 = ":framework:ready"
L11_1 = L11_1 .. L12_1
function L12_1()
  local L0_2, L1_2, L2_2
  L0_2 = Framework
  L0_2 = L0_2.getFramework
  L0_2 = L0_2()
  if "QB-core" ~= L0_2 then
    return
  end
  L0_2 = TriggerServerPromise
  L1_2 = Utils
  L1_2 = L1_2.eventsPrefix
  L2_2 = ":isPlayerOnDuty"
  L1_2 = L1_2 .. L2_2
  L0_2 = L0_2(L1_2)
  isOnDuty = L0_2
end
L10_1(L11_1, L12_1)
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2.id
  L2_2 = A0_2.type
  openedMenu = L1_2
  if "stash" == L2_2 then
    L3_2 = TriggerEvent
    L4_2 = Utils
    L4_2 = L4_2.eventsPrefix
    L5_2 = ":stash:openStash"
    L4_2 = L4_2 .. L5_2
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  elseif "wardrobe" == L2_2 then
    L3_2 = openWardrobe
    L3_2()
  elseif "boss" == L2_2 then
    L3_2 = openBoss
    L4_2 = L1_2
    L3_2(L4_2)
  elseif "garage" == L2_2 then
    L3_2 = openGarage
    L4_2 = L1_2
    L3_2(L4_2)
  elseif "shop" == L2_2 then
    L3_2 = openShop
    L4_2 = L1_2
    L3_2(L4_2)
  elseif "garage_buyable" == L2_2 then
    L3_2 = openGarageBuyable
    L4_2 = L1_2
    L3_2(L4_2)
  elseif "crafting_table" == L2_2 then
    L3_2 = openCraftingTable
    L4_2 = L1_2
    L3_2(L4_2)
  elseif "armory" == L2_2 then
    L3_2 = TriggerEvent
    L4_2 = Utils
    L4_2 = L4_2.eventsPrefix
    L5_2 = ":armory:openArmory"
    L4_2 = L4_2 .. L5_2
    L5_2 = L1_2
    L6_2 = A0_2.data
    L3_2(L4_2, L5_2, L6_2)
  elseif "job_outfit" == L2_2 then
    L3_2 = openJobOutfit
    L4_2 = L1_2
    L3_2(L4_2)
  elseif "teleport" == L2_2 then
    openedMenu = nil
    L3_2 = teleportMarker
    L4_2 = L1_2
    L3_2(L4_2)
  elseif "safe" == L2_2 then
    L3_2 = TriggerEvent
    L4_2 = Utils
    L4_2 = L4_2.eventsPrefix
    L5_2 = ":safe:openSafe"
    L4_2 = L4_2 .. L5_2
    L5_2 = L1_2
    L3_2(L4_2, L5_2)
  elseif "market" == L2_2 then
    L3_2 = openMarket
    L4_2 = L1_2
    L3_2(L4_2)
  elseif "harvest" == L2_2 then
    openedMenu = nil
    L3_2 = harvestMarker
    L4_2 = L1_2
    L3_2(L4_2)
  elseif "weapon_upgrader" == L2_2 then
    L3_2 = openOwnedWeapons
    L4_2 = L1_2
    L3_2(L4_2)
  elseif "duty" == L2_2 then
    openedMenu = nil
    L3_2 = L9_1
    L3_2()
  elseif "job_shop" == L2_2 then
    L3_2 = openJobShop
    L4_2 = L1_2
    L3_2(L4_2)
  elseif "process" == L2_2 then
    L3_2 = processMarker
    L4_2 = L1_2
    L3_2(L4_2)
    openedMenu = nil
  elseif "garage_owned" == L2_2 then
    L3_2 = openGarageOwned
    L4_2 = L1_2
    L3_2(L4_2)
  end
end
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = getLocalizedText
  L4_2 = "interact"
  L3_2 = L3_2(L4_2)
  L4_2 = config
  L4_2 = L4_2.targetingScript
  L4_2 = "none" ~= L4_2 and L4_2
  if L4_2 then
    L5_2 = "_targeting"
    if L5_2 then
      goto lbl_18
    end
  end
  L5_2 = ""
  ::lbl_18::
  if "stash" == A0_2 then
    L6_2 = getLocalizedText
    L7_2 = "open_stash"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  elseif "wardrobe" == A0_2 then
    L6_2 = getLocalizedText
    L7_2 = "open_wardrobe"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  elseif "boss" == A0_2 then
    L6_2 = getLocalizedText
    L7_2 = "open_boss"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  elseif "garage" == A0_2 then
    L6_2 = getLocalizedText
    L7_2 = "open_garage"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  elseif "shop" == A0_2 then
    L6_2 = getLocalizedText
    L7_2 = "open_shop"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  elseif "garage_buyable" == A0_2 then
    L6_2 = getLocalizedText
    L7_2 = "open_garage"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  elseif "crafting_table" == A0_2 then
    L6_2 = getLocalizedText
    L7_2 = "open_crafting_table"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  elseif "armory" == A0_2 then
    L6_2 = getLocalizedText
    L7_2 = "open_armory"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  elseif "job_outfit" == A0_2 then
    L6_2 = getLocalizedText
    L7_2 = "open_job_outfit"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  elseif "teleport" == A0_2 then
    L6_2 = getLocalizedText
    L7_2 = "teleport"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
    L6_2 = L0_1
    L6_2 = L6_2[A1_2]
    L6_2 = L6_2.label
    if "Default" ~= L6_2 then
      L7_2 = getLocalizedText
      L8_2 = "teleport_to"
      L9_2 = L5_2
      L8_2 = L8_2 .. L9_2
      L9_2 = L6_2
      L7_2 = L7_2(L8_2, L9_2)
      L3_2 = L7_2
    end
  elseif "safe" == A0_2 then
    L6_2 = getLocalizedText
    L7_2 = "open_safe"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  elseif "market" == A0_2 then
    L6_2 = getLocalizedText
    L7_2 = "open_market"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  elseif "harvest" == A0_2 then
    L6_2 = getLocalizedText
    L7_2 = "harvest"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  elseif "weapon_upgrader" == A0_2 then
    L6_2 = getLocalizedText
    L7_2 = "open_weapon_upgrader"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  elseif "duty" == A0_2 then
    if L4_2 then
      L6_2 = getLocalizedText
      L7_2 = "toggle_duty_targeting"
      L6_2 = L6_2(L7_2)
      L3_2 = L6_2
    else
      L6_2 = isOnDuty
      if L6_2 then
        L6_2 = getLocalizedText
        L7_2 = "go_off_duty"
        L6_2 = L6_2(L7_2)
        L3_2 = L6_2
      else
        L6_2 = getLocalizedText
        L7_2 = "go_on_duty"
        L6_2 = L6_2(L7_2)
        L3_2 = L6_2
      end
    end
  elseif "job_shop" == A0_2 then
    L6_2 = getLocalizedText
    L7_2 = "open_job_shop"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  elseif "process" == A0_2 then
    L6_2 = getLocalizedText
    L7_2 = "process:press_to_process"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  elseif "garage_owned" == A0_2 then
    L6_2 = getLocalizedText
    L7_2 = "garage_owned:press_to_open"
    L8_2 = L5_2
    L7_2 = L7_2 .. L8_2
    L6_2 = L6_2(L7_2)
    L3_2 = L6_2
  end
  return L3_2
end
function L12_1(A0_2)
  local L1_2, L2_2
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    L0_3 = A0_2.id
    L1_3 = L2_1
    L1_3 = L1_3[L0_3]
    if L1_3 then
      return
    end
    L1_3 = L1_1
    L1_3[L0_3] = true
    L1_3 = PlayerPedId
    L1_3 = L1_3()
    L2_3 = GetEntityCoords
    L3_3 = L1_3
    L2_3 = L2_3(L3_3)
    L3_3 = vecFromTable
    L4_3 = A0_2.coords
    L3_3 = L3_3(L4_3)
    L3_3 = L2_3 - L3_3
    L3_3 = #L3_3
    L4_3 = Citizen
    L4_3 = L4_3.CreateThread
    function L5_3()
      local L0_4, L1_4, L2_4, L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4, L19_4, L20_4, L21_4, L22_4, L23_4, L24_4
      L0_4 = A0_2.type
      L1_4 = L11_1
      L2_4 = L0_4
      L3_4 = L0_3
      L4_4 = false
      L1_4 = L1_4(L2_4, L3_4, L4_4)
      while true do
        L2_4 = L3_3
        L3_4 = config
        L3_4 = L3_4.markerDistance
        if not (L2_4 < L3_4) then
          break
        end
        L3_4 = L0_3
        L2_4 = L1_1
        L2_4 = L2_4[L3_4]
        if not L2_4 then
          break
        end
        L3_4 = L0_3
        L2_4 = L2_1
        L2_4 = L2_4[L3_4]
        if L2_4 then
          break
        end
        L2_4 = Citizen
        L2_4 = L2_4.Wait
        L3_4 = 0
        L2_4(L3_4)
        L2_4 = config
        L2_4 = L2_4.use3Dtext
        if not L2_4 then
          L2_4 = DrawMarker
          L3_4 = A0_2.markerType
          L4_4 = vecFromTable
          L5_4 = A0_2.coords
          L4_4 = L4_4(L5_4)
          L5_4 = 0.0
          L6_4 = 0.0
          L7_4 = 0.0
          L8_4 = 0.0
          L9_4 = 0.0
          L10_4 = 0.0
          L11_4 = A0_2.scale
          L11_4 = L11_4.x
          L11_4 = L11_4 + 0.0
          L12_4 = A0_2.scale
          L12_4 = L12_4.y
          L12_4 = L12_4 + 0.0
          L13_4 = A0_2.scale
          L13_4 = L13_4.z
          L13_4 = L13_4 + 0.0
          L14_4 = A0_2.color
          L14_4 = L14_4.r
          L15_4 = A0_2.color
          L15_4 = L15_4.g
          L16_4 = A0_2.color
          L16_4 = L16_4.b
          L17_4 = A0_2.color
          L17_4 = L17_4.alpha
          L18_4 = false
          L19_4 = true
          L20_4 = 2
          L21_4 = false
          L22_4 = nil
          L23_4 = nil
          L24_4 = false
          L2_4(L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4, L12_4, L13_4, L14_4, L15_4, L16_4, L17_4, L18_4, L19_4, L20_4, L21_4, L22_4, L23_4, L24_4)
        else
          L2_4 = vecFromTable
          L3_4 = A0_2.coords
          L2_4 = L2_4(L3_4)
          L3_4 = vector3
          L4_4 = 0.0
          L5_4 = 0.0
          L6_4 = 1.0
          L3_4 = L3_4(L4_4, L5_4, L6_4)
          L2_4 = L2_4 + L3_4
          L3_4 = Framework
          L3_4 = L3_4.draw3dText
          L4_4 = L2_4
          L5_4 = A0_2.label
          L6_4 = config
          L6_4 = L6_4.textSize
          L7_4 = config
          L7_4 = L7_4.textFont
          L3_4(L4_4, L5_4, L6_4, L7_4)
        end
        L2_4 = L3_3
        L3_4 = A0_2.scale
        L3_4 = L3_4.x
        if L2_4 <= L3_4 then
          L2_4 = openedMenu
          if not L2_4 then
            L2_4 = canUseMarkers
            if L2_4 then
              L2_4 = L7_1
              L3_4 = A0_2
              L2_4 = L2_4(L3_4)
              if L2_4 then
                L2_4 = IsControlJustReleased
                L3_4 = 0
                L4_4 = 38
                L2_4 = L2_4(L3_4, L4_4)
                if L2_4 then
                  L2_4 = L10_1
                  L3_4 = A0_2
                  L2_4(L3_4)
                  L2_4 = Citizen
                  L2_4 = L2_4.Wait
                  L3_4 = 500
                  L2_4(L3_4)
                end
              else
                L2_4 = getLocalizedText
                L3_4 = "you_are_not_on_duty"
                L2_4 = L2_4(L3_4)
                L1_4 = L2_4
              end
              L2_4 = showHelpNotification
              L3_4 = L1_4
              L2_4(L3_4)
            end
          end
        else
          L2_4 = openedMenu
          L3_4 = L0_3
          if L2_4 == L3_4 then
            openedMenu = nil
            L2_4 = Utils
            L2_4 = L2_4.hideInteractionMenu
            L2_4()
          end
        end
      end
    end
    L4_3(L5_3)
    while true do
      L4_3 = config
      L4_3 = L4_3.markerDistance
      if not (L3_3 < L4_3) then
        break
      end
      L4_3 = L1_1
      L4_3 = L4_3[L0_3]
      if not L4_3 then
        break
      end
      L4_3 = L2_1
      L4_3 = L4_3[L0_3]
      if L4_3 then
        break
      end
      L4_3 = Citizen
      L4_3 = L4_3.Wait
      L5_3 = 500
      L4_3(L5_3)
      L4_3 = PlayerPedId
      L4_3 = L4_3()
      L1_3 = L4_3
      L4_3 = GetEntityCoords
      L5_3 = L1_3
      L4_3 = L4_3(L5_3)
      L2_3 = L4_3
      L4_3 = vecFromTable
      L5_3 = A0_2.coords
      L4_3 = L4_3(L5_3)
      L4_3 = L2_3 - L4_3
      L3_3 = #L4_3
    end
    L4_3 = L1_1
    L4_3[L0_3] = false
  end
  L1_2(L2_2)
end
L13_1 = Citizen
L13_1 = L13_1.CreateThread
function L14_1()
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
L13_1(L14_1)
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = SetPedRelationshipGroupHash
  L2_2 = A0_2
  L3_2 = GetHashKey
  L4_2 = "AMBIENT_GANG_FAMILY"
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = GetPedRelationshipGroupHash
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetRelationshipBetweenGroups
  L3_2 = 1
  L4_2 = GetHashKey
  L5_2 = "AMBIENT_GANG_FAMILY"
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetRelationshipBetweenGroups
  L3_2 = 1
  L4_2 = L1_2
  L5_2 = GetHashKey
  L6_2 = "AMBIENT_GANG_FAMILY"
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetEntityInvincible
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = FreezeEntityPosition
  L3_2 = A0_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetPedConfigFlag
  L3_2 = A0_2
  L4_2 = 24
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetPedConfigFlag
  L3_2 = A0_2
  L4_2 = 43
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetPedConfigFlag
  L3_2 = A0_2
  L4_2 = 122
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetPedConfigFlag
  L3_2 = A0_2
  L4_2 = 128
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetPedConfigFlag
  L3_2 = A0_2
  L4_2 = 188
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = DisablePedPainAudio
  L3_2 = A0_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetCanAttackFriendly
  L3_2 = A0_2
  L4_2 = false
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetPedRagdollOnCollision
  L3_2 = A0_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetRagdollBlockingFlags
  L3_2 = A0_2
  L4_2 = 1
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityInvincible
  L3_2 = A0_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetBlockingOfNonTemporaryEvents
  L3_2 = A0_2
  L4_2 = true
  L2_2(L3_2, L4_2)
end
function L14_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2.id
  L1_2 = L5_1
  L1_2[L2_2] = true
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = GetEntityCoords
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    L2_3 = GetGameTimer
    L2_3 = L2_3()
    L2_3 = L2_3 + 5000
    while true do
      L3_3 = HasModelLoaded
      L4_3 = A0_2.ped
      L4_3 = L4_3.model
      L3_3 = L3_3(L4_3)
      if L3_3 then
        break
      end
      L3_3 = Citizen
      L3_3 = L3_3.Wait
      L4_3 = 0
      L3_3(L4_3)
      L3_3 = RequestModel
      L4_3 = A0_2.ped
      L4_3 = L4_3.model
      L3_3(L4_3)
      L3_3 = GetGameTimer
      L3_3 = L3_3()
      if L2_3 < L3_3 then
        return
      end
    end
    L3_3 = CreatePed
    L4_3 = 1
    L5_3 = A0_2.ped
    L5_3 = L5_3.model
    L6_3 = vecFromTable
    L7_3 = A0_2.coords
    L6_3 = L6_3(L7_3)
    L7_3 = A0_2.ped
    L7_3 = L7_3.heading
    L7_3 = L7_3 + 0.0
    L8_3 = false
    L9_3 = false
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L5_3 = A0_2.id
    L4_3 = L5_1
    L4_3[L5_3] = L3_3
    L4_3 = L13_1
    L5_3 = L3_3
    L4_3(L5_3)
    L4_3 = L11_1
    L5_3 = A0_2.type
    L6_3 = A0_2.id
    L7_3 = true
    L4_3 = L4_3(L5_3, L6_3, L7_3)
    L5_3 = Target
    L5_3 = L5_3.addLocalEntityToTargeting
    L6_3 = L3_3
    L7_3 = "marker_ped"
    L8_3 = L4_3
    L9_3 = {}
    function L10_3()
      local L0_4, L1_4
      L0_4 = L10_1
      L1_4 = A0_2
      L0_4(L1_4)
    end
    L9_3.onSelect = L10_3
    function L10_3()
      local L0_4, L1_4
      L1_4 = A0_2.id
      L0_4 = L2_1
      L0_4 = L0_4[L1_4]
      L0_4 = L7_1
      L1_4 = A0_2
      L0_4 = not L0_4 and L0_4
      return L0_4
    end
    L9_3.canInteract = L10_3
    L5_3(L6_3, L7_3, L8_3, L9_3)
    L5_3 = vecFromTable
    L6_3 = A0_2.coords
    L5_3 = L5_3(L6_3)
    L6_3 = L1_3 - L5_3
    L6_3 = #L6_3
    while L6_3 < 50.0 do
      L7_3 = GetEntityCoords
      L8_3 = L0_3
      L7_3 = L7_3(L8_3)
      L1_3 = L7_3
      L7_3 = L1_3 - L5_3
      L6_3 = #L7_3
      L7_3 = Citizen
      L7_3 = L7_3.Wait
      L8_3 = 2000
      L7_3(L8_3)
    end
    L7_3 = DeleteEntity
    L8_3 = L3_3
    L7_3(L8_3)
    L8_3 = A0_2.id
    L7_3 = L5_1
    L7_3[L8_3] = nil
  end
  L1_2(L2_2)
end
function L15_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2.id
  L1_2 = L6_1
  L1_2[L2_2] = true
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3
    L0_3 = PlayerPedId
    L0_3 = L0_3()
    L1_3 = GetEntityCoords
    L2_3 = L0_3
    L1_3 = L1_3(L2_3)
    L2_3 = GetGameTimer
    L2_3 = L2_3()
    L2_3 = L2_3 + 5000
    while true do
      L3_3 = HasModelLoaded
      L4_3 = A0_2.object
      L4_3 = L4_3.model
      L3_3 = L3_3(L4_3)
      if L3_3 then
        break
      end
      L3_3 = Citizen
      L3_3 = L3_3.Wait
      L4_3 = 0
      L3_3(L4_3)
      L3_3 = RequestModel
      L4_3 = A0_2.object
      L4_3 = L4_3.model
      L3_3(L4_3)
      L3_3 = GetGameTimer
      L3_3 = L3_3()
      if L2_3 < L3_3 then
        return
      end
    end
    L3_3 = CreateObjectNoOffset
    L4_3 = A0_2.object
    L4_3 = L4_3.model
    L5_3 = vecFromTable
    L6_3 = A0_2.coords
    L5_3 = L5_3(L6_3)
    L6_3 = false
    L7_3 = false
    L8_3 = false
    L3_3 = L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
    L4_3 = PlaceObjectOnGroundProperly
    L5_3 = L3_3
    L4_3(L5_3)
    L4_3 = A0_2.object
    L4_3 = L4_3.heading
    if L4_3 then
      L4_3 = A0_2.object
      L4_3 = L4_3.heading
      L4_3 = L4_3 + 0.0
      if L4_3 then
        goto lbl_64
      end
    end
    L4_3 = A0_2.object
    L4_3 = L4_3.yaw
    if L4_3 then
      L4_3 = A0_2.object
      L4_3 = L4_3.yaw
      L4_3 = L4_3 + 0.0
      if L4_3 then
        goto lbl_64
      end
    end
    L4_3 = 0.0
    ::lbl_64::
    L5_3 = SetEntityHeading
    L6_3 = L3_3
    L7_3 = L4_3
    L5_3(L6_3, L7_3)
    L5_3 = FreezeEntityPosition
    L6_3 = L3_3
    L7_3 = true
    L5_3(L6_3, L7_3)
    L5_3 = L11_1
    L6_3 = A0_2.type
    L7_3 = A0_2.id
    L8_3 = true
    L5_3 = L5_3(L6_3, L7_3, L8_3)
    L6_3 = Target
    L6_3 = L6_3.addLocalEntityToTargeting
    L7_3 = L3_3
    L8_3 = "marker_object"
    L9_3 = L5_3
    L10_3 = {}
    function L11_3()
      local L0_4, L1_4
      L0_4 = L10_1
      L1_4 = A0_2
      L0_4(L1_4)
    end
    L10_3.onSelect = L11_3
    function L11_3()
      local L0_4, L1_4
      L1_4 = A0_2.id
      L0_4 = L2_1
      L0_4 = L0_4[L1_4]
      L0_4 = L7_1
      L1_4 = A0_2
      L0_4 = not L0_4 and L0_4
      return L0_4
    end
    L10_3.canInteract = L11_3
    L6_3(L7_3, L8_3, L9_3, L10_3)
    L7_3 = A0_2.id
    L6_3 = L6_1
    L6_3[L7_3] = L3_3
    L6_3 = vecFromTable
    L7_3 = A0_2.coords
    L6_3 = L6_3(L7_3)
    L7_3 = L1_3 - L6_3
    L7_3 = #L7_3
    while L7_3 < 50.0 do
      L8_3 = GetEntityCoords
      L9_3 = L0_3
      L8_3 = L8_3(L9_3)
      L1_3 = L8_3
      L8_3 = L1_3 - L6_3
      L7_3 = #L8_3
      L8_3 = Citizen
      L8_3 = L8_3.Wait
      L9_3 = 2000
      L8_3(L9_3)
    end
    L8_3 = DeleteEntity
    L9_3 = L3_3
    L8_3(L9_3)
    L9_3 = A0_2.id
    L8_3 = L6_1
    L8_3[L9_3] = nil
  end
  L1_2(L2_2)
end
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L0_2 = L3_1
  if L0_2 then
    return
  else
    L0_2 = true
    L3_1 = L0_2
  end
  while true do
    L0_2 = PlayerPedId
    L0_2 = L0_2()
    L1_2 = GetEntityCoords
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    L2_2 = pairs
    L3_2 = L0_1
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
      L8_2 = L7_2.coords
      if L8_2 then
        L8_2 = type
        L9_2 = L7_2.coords
        L8_2 = L8_2(L9_2)
        if "table" ~= L8_2 then
          L8_2 = json
          L8_2 = L8_2.decode
          L9_2 = L7_2.coords
          L8_2 = L8_2(L9_2)
          L7_2.coords = L8_2
        end
      end
      L8_2 = vecFromTable
      L9_2 = L7_2.coords
      L8_2 = L8_2(L9_2)
      L8_2 = L1_2 - L8_2
      L8_2 = #L8_2
      if L8_2 < 50.0 then
        L9_2 = L7_2.ped
        if L9_2 then
          L9_2 = L7_2.ped
          L9_2 = L9_2.model
          if L9_2 then
            L10_2 = L7_2.id
            L9_2 = L5_1
            L9_2 = L9_2[L10_2]
            if not L9_2 then
              L9_2 = L14_1
              L10_2 = L7_2
              L9_2(L10_2)
            end
        end
        else
          L9_2 = L7_2.object
          if L9_2 then
            L9_2 = L7_2.object
            L9_2 = L9_2.model
            if L9_2 then
              L10_2 = L7_2.id
              L9_2 = L6_1
              L9_2 = L9_2[L10_2]
              if not L9_2 then
                L9_2 = L15_1
                L10_2 = L7_2
                L9_2(L10_2)
              end
          end
          else
            L9_2 = L11_1
            L10_2 = L7_2.type
            L11_2 = L7_2.id
            L12_2 = true
            L9_2 = L9_2(L10_2, L11_2, L12_2)
            L10_2 = Target
            L10_2 = L10_2.addSphereZoneToTargeting
            L11_2 = "marker_"
            L12_2 = tostring
            L13_2 = L7_2.id
            L12_2 = L12_2(L13_2)
            L11_2 = L11_2 .. L12_2
            L12_2 = "jobs_creator_marker"
            L13_2 = L9_2
            L14_2 = vecFromTable
            L15_2 = L7_2.coords
            L14_2 = L14_2(L15_2)
            L15_2 = L7_2.scale
            L15_2 = L15_2.x
            L16_2 = {}
            function L17_2()
              local L0_3, L1_3
              L0_3 = L10_1
              L1_3 = L7_2
              L0_3(L1_3)
            end
            L16_2.onSelect = L17_2
            function L17_2()
              local L0_3, L1_3
              L1_3 = L7_2.id
              L0_3 = L2_1
              L0_3 = L0_3[L1_3]
              L0_3 = L7_1
              L1_3 = L7_2
              L0_3 = not L0_3 and L0_3
              return L0_3
            end
            L16_2.canInteract = L17_2
            L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
          end
        end
      end
      L9_2 = config
      L9_2 = L9_2.targetingScript
      if "none" == L9_2 then
        L9_2 = config
        L9_2 = L9_2.markerDistance
        L9_2 = L9_2 + 0.0
        if L8_2 < L9_2 then
          L10_2 = L7_2.id
          L9_2 = L1_1
          L9_2 = L9_2[L10_2]
          if not L9_2 then
            L9_2 = L12_1
            L10_2 = L7_2
            L9_2(L10_2)
          end
        end
      end
    end
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 2000
    L2_2(L3_2)
  end
end
function L17_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = TriggerServerPromise
  L1_2 = Utils
  L1_2 = L1_2.eventsPrefix
  L2_2 = ":getMarkers"
  L1_2 = L1_2 .. L2_2
  L0_2 = L0_2(L1_2)
  L1_2 = pairs
  L2_2 = L4_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = DoesBlipExist
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if L7_2 then
      L7_2 = RemoveBlip
      L8_2 = L6_2
      L7_2(L8_2)
    end
  end
  L1_2 = pairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.jobName
    L7_2 = "public_marker" == L7_2 or L7_2
    if not L7_2 then
      L8_2 = COMPLETELY_HIDE_MARKERS_WHEN_OFF_DUTY
      if L8_2 then
        L0_2[L5_2] = nil
      end
    end
    L8_2 = L6_2.blip
    L8_2 = L8_2.spriteId
    if L8_2 and L7_2 then
      L8_2 = AddBlipForCoord
      L9_2 = vecFromTable
      L10_2 = L6_2.coords
      L9_2, L10_2, L11_2 = L9_2(L10_2)
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L9_2 = SetBlipSprite
      L10_2 = L8_2
      L11_2 = L6_2.blip
      L11_2 = L11_2.spriteId
      L9_2(L10_2, L11_2)
      L9_2 = SetBlipDisplay
      L10_2 = L8_2
      L11_2 = 4
      L9_2(L10_2, L11_2)
      L9_2 = SetBlipAsShortRange
      L10_2 = L8_2
      L11_2 = true
      L9_2(L10_2, L11_2)
      L9_2 = SetBlipColour
      L10_2 = L8_2
      L11_2 = L6_2.blip
      L11_2 = L11_2.color
      L9_2(L10_2, L11_2)
      L9_2 = SetBlipScale
      L10_2 = L8_2
      L11_2 = L6_2.blip
      L11_2 = L11_2.scale
      L11_2 = L11_2 + 0.0
      L9_2(L10_2, L11_2)
      L9_2 = BeginTextCommandSetBlipName
      L10_2 = "STRING"
      L9_2(L10_2)
      L9_2 = AddTextComponentString
      L10_2 = L6_2.label
      L9_2(L10_2)
      L9_2 = EndTextCommandSetBlipName
      L10_2 = L8_2
      L9_2(L10_2)
      L9_2 = L4_1
      L9_2 = #L9_2
      L10_2 = L9_2 + 1
      L9_2 = L4_1
      L9_2[L10_2] = L8_2
    end
  end
  return L0_2
end
function L18_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = L5_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = DeleteEntity
      L7_2 = L5_2
      L6_2(L7_2)
    end
  end
  L0_2 = {}
  L5_1 = L0_2
  L0_2 = pairs
  L1_2 = L6_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = DoesEntityExist
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      L6_2 = DeleteEntity
      L7_2 = L5_2
      L6_2(L7_2)
    end
  end
  L0_2 = {}
  L6_1 = L0_2
  L0_2 = Target
  L0_2 = L0_2.removeSphereZoneFromTargeting
  L1_2 = "jobs_creator_marker"
  L0_2(L1_2)
end
L19_1 = RegisterNetEvent
L20_1 = Utils
L20_1 = L20_1.eventsPrefix
L21_1 = ":refreshMarkers"
L20_1 = L20_1 .. L21_1
function L21_1()
  local L0_2, L1_2
  L0_2 = {}
  L1_1 = L0_2
  L0_2 = {}
  L0_1 = L0_2
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 1000
  L0_2(L1_2)
  L0_2 = L17_1
  L0_2 = L0_2()
  L0_1 = L0_2
  L0_2 = L18_1
  L0_2()
  openedMenu = nil
  L0_2 = false
  L3_1 = L0_2
  L0_2 = Utils
  L0_2 = L0_2.hideInteractionMenu
  L0_2()
end
L19_1(L20_1, L21_1)
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L2_1
  L2_2[A0_2] = true
  L2_2 = SetTimeout
  L3_2 = A1_2 * 1000
  function L4_2()
    local L0_3, L1_3
    L1_3 = A0_2
    L0_3 = L2_1
    L0_3[L1_3] = nil
  end
  L2_2(L3_2, L4_2)
end
L20_1 = RegisterNetEvent
L21_1 = Utils
L21_1 = L21_1.eventsPrefix
L22_1 = ":harvest:hideMarker"
L21_1 = L21_1 .. L22_1
L22_1 = L19_1
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "esx:setJob"
function L22_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = TriggerEvent
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":refreshMarkers"
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = TriggerServerPromise
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":isSelfOnDuty"
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2(L2_2)
  isOnDuty = L1_2
end
L20_1(L21_1, L22_1)
L20_1 = RegisterNetEvent
L21_1 = "QBCore:Client:OnJobUpdate"
function L22_1()
  local L0_2, L1_2, L2_2
  L0_2 = TriggerEvent
  L1_2 = Utils
  L1_2 = L1_2.eventsPrefix
  L2_2 = ":refreshMarkers"
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
end
L20_1(L21_1, L22_1)
L20_1 = {}
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = GetEntityModel
  L3_2 = NetToVeh
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L20_1
  L3_2 = L3_2[A0_2]
  L3_2[A1_2] = L2_2
end
L22_1 = RegisterNetEvent
L23_1 = Utils
L23_1 = L23_1.eventsPrefix
L24_1 = ":addVehicleToOutsideVehicles"
L23_1 = L23_1 .. L24_1
L24_1 = L21_1
L22_1(L23_1, L24_1)
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L20_1
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = L20_1
    L3_2 = {}
    L2_2[A0_2] = L3_2
  end
  L2_2 = VehToNet
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L21_1
  L4_2 = A0_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
addVehicleToOutsideVehicles = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = 10.0
  L4_2 = L20_1
  L4_2 = L4_2[A0_2]
  if L4_2 then
    L4_2 = pairs
    L5_2 = L20_1
    L5_2 = L5_2[A0_2]
    L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
    for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
      L10_2 = NetworkDoesNetworkIdExist
      L11_2 = L8_2
      L10_2 = L10_2(L11_2)
      if L10_2 then
        L10_2 = NetToVeh
        L11_2 = L8_2
        L10_2 = L10_2(L11_2)
        L11_2 = GetEntityModel
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        if L9_2 == L11_2 then
          L11_2 = GetEntityCoords
          L12_2 = L10_2
          L11_2 = L11_2(L12_2)
          L12_2 = L2_2 - L11_2
          L12_2 = #L12_2
          if L3_2 > L12_2 then
            return L10_2
          end
        else
          L11_2 = L20_1
          L11_2 = L11_2[A0_2]
          L11_2[L8_2] = nil
        end
      end
    end
  end
  L4_2 = nil
  return L4_2
end
getOutsideVehicleInRange = L22_1
function L22_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = VehToNet
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L20_1
  L3_2 = L3_2[A0_2]
  if L3_2 then
    L3_2 = L20_1
    L3_2 = L3_2[A0_2]
    L3_2[L2_2] = nil
  end
end
deleteVehicleFromOutsideVehicles = L22_1
function L22_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  if A0_2 then
    L1_2 = #A0_2
    if 0 ~= L1_2 then
      goto lbl_11
    end
  end
  L1_2 = print
  L2_2 = "^1You didn't define ANY spawnpoint in the configuration of the marker^7"
  L1_2(L2_2)
  L1_2 = nil
  do return L1_2 end
  ::lbl_11::
  L1_2 = GetGamePool
  L2_2 = "CVehicle"
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = A0_2[L5_2]
    L7_2 = vecFromTable
    L8_2 = L6_2.coords
    L7_2 = L7_2(L8_2)
    L8_2 = true
    L9_2 = 1
    L10_2 = #L1_2
    L11_2 = 1
    for L12_2 = L9_2, L10_2, L11_2 do
      L13_2 = L1_2[L12_2]
      L14_2 = GetEntityCoords
      L15_2 = L13_2
      L14_2 = L14_2(L15_2)
      L15_2 = L14_2 - L7_2
      L15_2 = #L15_2
      L16_2 = L6_2.radius
      if L15_2 < L16_2 then
        L8_2 = false
        break
      end
    end
    if L8_2 then
      L9_2 = {}
      L9_2.coords = L7_2
      L10_2 = L6_2.heading
      L10_2 = L10_2 + 0.0
      L9_2.heading = L10_2
      return L9_2
    end
  end
  L2_2 = nil
  return L2_2
end
getFreeSpawnpoint = L22_1
L22_1 = false
L23_1 = nil
function L24_1(A0_2)
  local L1_2, L2_2
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = true
    L22_1 = L0_3
    L0_3 = Timeout
    L1_3 = A0_2
    function L2_3()
      local L0_4, L1_4
      L0_4 = false
      L22_1 = L0_4
    end
    L0_3 = L0_3(L1_3, L2_3)
    L23_1 = L0_3
    while true do
      L0_3 = L22_1
      if not L0_3 then
        break
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 0
      L0_3(L1_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 24
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 257
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 263
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 32
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 34
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 31
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 30
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 45
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 22
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 44
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 37
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 23
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 59
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 71
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 72
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 36
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 47
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 264
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 257
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 140
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 141
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 142
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 143
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
      L0_3 = DisableControlAction
      L1_3 = 0
      L2_3 = 75
      L3_3 = true
      L0_3(L1_3, L2_3, L3_3)
    end
  end
  L1_2(L2_2)
end
L25_1 = RegisterNetEvent
L26_1 = Utils
L26_1 = L26_1.eventsPrefix
L27_1 = ":startTimedFreeze"
L26_1 = L26_1 .. L27_1
L27_1 = L24_1
L25_1(L26_1, L27_1)
function L25_1()
  local L0_2, L1_2
  L0_2 = L23_1
  if L0_2 then
    L0_2 = ClearTimeout
    L1_2 = L23_1
    L0_2(L1_2)
    L0_2 = nil
    L23_1 = L0_2
  end
  L0_2 = false
  L22_1 = L0_2
end
stopTimedFreeze = L25_1
function L25_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = A0_2.type
  if "scenario" == L2_2 then
    L2_2 = TaskStartScenarioInPlace
    L3_2 = L1_2
    L4_2 = A0_2.scenarioName
    L5_2 = 0
    L6_2 = true
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = A0_2.scenarioDuration
    L3_2 = L3_2 * 1000
    L2_2(L3_2)
    L2_2 = ClearPedTasks
    L3_2 = L1_2
    L2_2(L3_2)
    L2_2 = GetEntityCoords
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L3_2 = ClearAreaOfObjects
    L4_2 = L2_2
    L5_2 = 2.0
    L6_2 = 0
    L3_2(L4_2, L5_2, L6_2)
  else
    L2_2 = A0_2.type
    if "animation" == L2_2 then
      while true do
        L2_2 = HasAnimDictLoaded
        L3_2 = A0_2.animDict
        L2_2 = L2_2(L3_2)
        if L2_2 then
          break
        end
        L2_2 = RequestAnimDict
        L3_2 = A0_2.animDict
        L2_2(L3_2)
        L2_2 = Citizen
        L2_2 = L2_2.Wait
        L3_2 = 0
        L2_2(L3_2)
      end
      L2_2 = A0_2.animDuration
      L2_2 = L2_2 * 1000
      L3_2 = TaskPlayAnim
      L4_2 = L1_2
      L5_2 = A0_2.animDict
      L6_2 = A0_2.animName
      L7_2 = 4.0
      L8_2 = 4.0
      L9_2 = L2_2
      L10_2 = 1
      L11_2 = 1.0
      L12_2 = 0
      L13_2 = 0
      L14_2 = 0
      L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L3_2 = Citizen
      L3_2 = L3_2.Wait
      L4_2 = L2_2
      L3_2(L4_2)
      L3_2 = ClearPedTasks
      L4_2 = L1_2
      L3_2(L4_2)
    end
  end
end
L26_1 = RegisterNetEvent
L27_1 = Utils
L27_1 = L27_1.eventsPrefix
L28_1 = ":playAnimation"
L27_1 = L27_1 .. L28_1
L28_1 = L25_1
L26_1(L27_1, L28_1)
function L26_1()
  local L0_2, L1_2, L2_2
  L0_2 = Framework
  L0_2 = L0_2.getFramework
  L0_2 = L0_2()
  if "QB-core" ~= L0_2 then
    return
  end
  L0_2 = AlreadyInjectedFirstTime
  if L0_2 then
    return
  end
  AlreadyInjectedFirstTime = true
  L0_2 = TriggerServerEvent
  L1_2 = Utils
  L1_2 = L1_2.eventsPrefix
  L2_2 = ":askQBCoreJobs"
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
end
L27_1 = RegisterNetEvent
L28_1 = Utils
L28_1 = L28_1.eventsPrefix
L29_1 = ":framework:ready"
L28_1 = L28_1 .. L29_1
function L29_1()
  local L0_2, L1_2
  L0_2 = hasFirstLoadFinished
  if L0_2 then
    return
  else
    hasFirstLoadFinished = true
  end
  L0_2 = L26_1
  L0_2()
  L0_2 = L17_1
  L0_2 = L0_2()
  L0_1 = L0_2
  while true do
    L0_2 = config
    if nil ~= L0_2 then
      break
    end
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 100
    L0_2(L1_2)
  end
  L0_2 = L16_1
  L0_2()
end
L27_1(L28_1, L29_1)
L27_1 = RegisterNetEvent
L28_1 = "onResourceStop"
function L29_1(A0_2)
  local L1_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 == L1_2 then
    L1_2 = L18_1
    L1_2()
  end
end
L27_1(L28_1, L29_1)
L27_1 = Citizen
L27_1 = L27_1.CreateThread
function L28_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 600000
  L0_2(L1_2)
  while true do
    L0_2 = DoesEntityExist
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    if L0_2 then
      break
    end
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 5000
    L0_2(L1_2)
  end
  while true do
    L0_2 = IsEntityPositionFrozen
    L1_2 = PlayerPedId
    L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L1_2()
    L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
    if not L0_2 then
      break
    end
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 5000
    L0_2(L1_2)
  end
  L0_2 = GetHashKey
  L1_2 = "L1_1"
  L0_2 = L0_2(L1_2)
  L1_2 = IsModelValid
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetModelDimensions
  L3_2 = L0_2
  L2_2, L3_2 = L2_2(L3_2)
  L4_2 = L3_2 - L2_2
  L5_2 = TriggerServerEvent
  L6_2 = Utils
  L6_2 = L6_2.eventsPrefix
  L7_2 = ":playerConnected"
  L6_2 = L6_2 .. L7_2
  L7_2 = L1_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
end
L27_1(L28_1)
function L27_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetGamePool
  L2_2 = "CObject"
  L1_2 = L1_2(L2_2)
  L2_2 = 1
  L3_2 = #L1_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = GetEntityModel
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L8_2 = GetHashKey
    L9_2 = "L1_1"
    L8_2 = L8_2(L9_2)
    if L7_2 == L8_2 then
      L7_2 = DeleteEntity
      L8_2 = L6_2
      L7_2(L8_2)
    end
  end
  L2_2 = A0_2
  L2_2()
end
L28_1 = RegisterNetEvent
L29_1 = "onResourceStop"
function L30_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = promise
  L1_2 = L1_2.new
  L1_2 = L1_2()
  L2_2 = L27_1
  function L3_2()
    local L0_3, L1_3
    L0_3 = L1_2
    L1_3 = L0_3
    L0_3 = L0_3.resolve
    L0_3(L1_3)
  end
  L2_2(L3_2)
  L2_2 = Citizen
  L2_2 = L2_2.Await
  L3_2 = L1_2
  L2_2(L3_2)
end
L28_1(L29_1, L30_1)
