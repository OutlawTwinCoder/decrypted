local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1
CURRENT_FRAMEWORK = "ESX"
SUBFRAMEWORK = nil
L0_1 = CURRENT_FRAMEWORK
if "QB-core" == L0_1 then
  L0_1 = GetResourceState
  L1_1 = "qbx_core"
  L0_1 = L0_1(L1_1)
  if "missing" ~= L0_1 then
    SUBFRAMEWORK = "QBX"
  end
end
L0_1 = Framework
if not L0_1 then
  L0_1 = {}
end
Framework = L0_1
L0_1 = nil
function L1_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = LoadResourceFile
  L1_2 = Utils
  L1_2 = L1_2.getScriptName
  L2_2 = "es_extended"
  L1_2 = L1_2(L2_2)
  L2_2 = "client/common.lua"
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = nil
  if L0_2 then
    L3_2 = L0_2
    L2_2 = L0_2.match
    L4_2 = "['\"](.*)['\"]"
    L2_2 = L2_2(L3_2, L4_2)
    L1_2 = L2_2
  else
    L2_2 = print
    L3_2 = "^1Couldn't find file "
    L4_2 = Utils
    L4_2 = L4_2.getScriptName
    L5_2 = "es_extended"
    L4_2 = L4_2(L5_2)
    L5_2 = "/client/common.lua^7"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
  end
  return L1_2
end
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = promise
  L0_2 = L0_2.new
  L0_2 = L0_2()
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.fetchScalar
  L2_2 = "SELECT COUNT(*) FROM items"
  L3_2 = {}
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L0_2
    L2_3 = L1_3
    L1_3 = L1_3.resolve
    L3_3 = A0_3 > 0
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = Citizen
  L1_2 = L1_2.Await
  L2_2 = L0_2
  return L1_2(L2_2)
end
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = promise
  L0_2 = L0_2.new
  L0_2 = L0_2()
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.fetchScalar
  L2_2 = "SELECT COUNT(*) FROM jobs"
  L3_2 = {}
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L0_2
    L2_3 = L1_3
    L1_3 = L1_3.resolve
    L3_3 = A0_3 > 0
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = Citizen
  L1_2 = L1_2.Await
  L2_2 = L0_2
  return L1_2(L2_2)
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = promise
  L0_2 = L0_2.new
  L0_2 = L0_2()
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.fetchScalar
  L2_2 = "SELECT COUNT(*) FROM job_grades"
  L3_2 = {}
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = L0_2
    L2_3 = L1_3
    L1_3 = L1_3.resolve
    L3_3 = A0_3 > 0
    L1_3(L2_3, L3_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = Citizen
  L1_2 = L1_2.Await
  L2_2 = L0_2
  return L1_2(L2_2)
end
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L0_2 = IsDuplicityVersion
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = false
    L1_2 = false
    L2_2 = false
    L3_2 = INVENTORY_TO_USE
    if "ox_inventory" == L3_2 then
      L3_2 = pairs
      L4_2 = Utils
      L4_2 = L4_2.getScriptExports
      L5_2 = "ox_inventory"
      L4_2 = L4_2(L5_2)
      L5_2 = L4_2
      L4_2 = L4_2.Items
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L4_2(L5_2)
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
      for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
        L0_2 = true
        break
      end
    else
      L3_2 = ESX
      L3_2 = L3_2.Items
      if L3_2 then
        L3_2 = pairs
        L4_2 = ESX
        L4_2 = L4_2.Items
        L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
        for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
          L0_2 = true
          break
        end
      else
        L3_2 = ESX
        L3_2 = L3_2.Items
        if not L3_2 then
          L0_2 = true
        end
      end
    end
    L3_2 = pairs
    L4_2 = ESX
    L4_2 = L4_2.Jobs
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = L8_2.grades
      if L9_2 then
        L9_2 = pairs
        L10_2 = L8_2.grades
        L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
        for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
          L2_2 = true
          break
        end
      end
      L1_2 = true
      break
    end
    if not L1_2 then
      L3_2 = L3_1
      L3_2 = L3_2()
    end
    L3_2 = L2_2 or L3_2
    if not L2_2 then
      L3_2 = L4_1
      L3_2 = L3_2()
      L3_2 = not L3_2 and L3_2
    end
    return L3_2
  else
    L0_2 = true
    return L0_2
  end
end
function L6_1()
  local L0_2, L1_2
  L0_2 = ESX
  L0_2 = L5_1
  L0_2 = nil ~= L0_2 and L0_2
  return L0_2
end
function L7_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Utils
  L0_2 = L0_2.doesExportExistAnywhere
  L1_2 = "getSharedObject"
  L0_2 = L0_2(L1_2)
  if L0_2 then
    repeat
      L0_2 = Utils
      L0_2 = L0_2.callScriptExport
      L1_2 = "es_extended"
      L2_2 = "getSharedObject"
      L0_2 = L0_2(L1_2, L2_2)
      ESX = L0_2
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 100
      L0_2(L1_2)
      L0_2 = L6_1
      L0_2 = L0_2()
    until L0_2
    return
  end
  L0_2 = promise
  L0_2 = L0_2.new
  L0_2 = L0_2()
  L1_2 = "esx_shared_object"
  L2_2 = Citizen
  L2_2 = L2_2.CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L0_3 = ProfilerIsRecording
    L0_3 = L0_3()
    if L0_3 then
      L1_3 = ProfilerEnterScope
      L2_3 = "Getting shared object"
      L1_3(L2_3)
    end
    L1_3 = EXTERNAL_EVENTS_NAMES
    L1_3 = L1_3["esx:getSharedObject"]
    if not L1_3 then
      L1_3 = GetResourceKvpString
      L2_3 = L1_2
      L1_3 = L1_3(L2_3)
      if not L1_3 then
        L1_3 = "esx:getSharedObject"
      end
    end
    L2_3 = true
    L3_3 = GetGameTimer
    L3_3 = L3_3()
    L3_3 = L3_3 + 1000
    repeat
      L4_3 = ESX
      if not L4_3 then
        if L1_3 then
          L4_3 = TriggerEvent
          L5_3 = L1_3
          function L6_3(A0_4)
            local L1_4
            ESX = A0_4
          end
          L4_3(L5_3, L6_3)
          L4_3 = GetGameTimer
          L4_3 = L4_3()
          if L3_3 < L4_3 then
            if L2_3 then
              L2_3 = false
              L4_3 = GetGameTimer
              L4_3 = L4_3()
              L3_3 = L4_3 + 1000
              L4_3 = L1_1
              L4_3 = L4_3()
              L1_3 = L4_3
            else
              return
            end
          end
        else
          L4_3 = print
          L5_3 = "^1ESX Shared Object is nil^7"
          L4_3(L5_3)
          return
        end
      else
        L4_3 = TriggerEvent
        L5_3 = L1_3
        function L6_3(A0_4)
          local L1_4
          ESX = A0_4
        end
        L4_3(L5_3, L6_3)
      end
      L4_3 = Citizen
      L4_3 = L4_3.Wait
      L5_3 = 500
      L4_3(L5_3)
      L4_3 = L6_1
      L4_3 = L4_3()
    until L4_3
    L4_3 = L0_1
    if nil ~= L4_3 then
      L4_3 = L0_1
      if L4_3 == L1_3 then
        goto lbl_77
      end
    end
    L0_1 = L1_3
    L4_3 = SetResourceKvp
    L5_3 = L1_2
    L6_3 = L1_3
    L4_3(L5_3, L6_3)
    ::lbl_77::
    if L0_3 then
      L4_3 = ProfilerExitScope
      L4_3()
    end
    L4_3 = L0_2
    L5_3 = L4_3
    L4_3 = L4_3.resolve
    L4_3(L5_3)
  end
  L2_2(L3_2)
  L2_2 = Citizen
  L2_2 = L2_2.Await
  L3_2 = L0_2
  return L2_2(L3_2)
end
function L8_1()
  local L0_2, L1_2, L2_2
  L0_2 = CURRENT_FRAMEWORK
  if "ESX" == L0_2 then
    L0_2 = L7_1
    L0_2()
  else
    L0_2 = CURRENT_FRAMEWORK
    if "QB-core" == L0_2 then
      QBCore = nil
      L0_2 = GetGameTimer
      L0_2 = L0_2()
      L0_2 = L0_2 + 10000
      while true do
        L1_2 = QBCore
        if nil ~= L1_2 then
          break
        end
        L1_2 = Utils
        L1_2 = L1_2.getScriptExports
        L2_2 = "qb-core"
        L1_2 = L1_2(L2_2)
        L2_2 = L1_2
        L1_2 = L1_2.GetCoreObject
        L1_2 = L1_2(L2_2)
        QBCore = L1_2
        L1_2 = GetGameTimer
        L1_2 = L1_2()
        if L0_2 < L1_2 then
          L1_2 = print
          L2_2 = "^1Couldn't find QBCore object, if you edited qb-core folder name, be sure to update it in jobs_creator/integrations/sh_integrations.lua^7"
          L1_2(L2_2)
          return
        end
        L1_2 = Citizen
        L1_2 = L1_2.Wait
        L2_2 = 100
        L1_2(L2_2)
      end
    end
  end
end
updateSharedObject = L8_1
L8_1 = Framework
function L9_1()
  local L0_2, L1_2, L2_2
  L0_2 = updateSharedObject
  L0_2()
  L0_2 = TriggerEvent
  L1_2 = Utils
  L1_2 = L1_2.eventsPrefix
  L2_2 = ":framework:ready"
  L1_2 = L1_2 .. L2_2
  L0_2(L1_2)
  L0_2 = SECONDS_TO_REFRESH_SHARED_OBJECT
  if L0_2 then
    L0_2 = SECONDS_TO_REFRESH_SHARED_OBJECT
    L0_2 = L0_2 * 1000
    L1_2 = Citizen
    L1_2 = L1_2.CreateThread
    function L2_2()
      local L0_3, L1_3
      while true do
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = L0_2
        L0_3(L1_3)
        L0_3 = updateSharedObject
        L0_3()
      end
    end
    L1_2(L2_2)
  end
  L0_2 = RegisterNetEvent
  L1_2 = "jobs_creator:refreshJobs"
  L2_2 = updateSharedObject
  L0_2(L1_2, L2_2)
end
L8_1.setupFramework = L9_1
L8_1 = Framework
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = string
  L1_2 = L1_2.match
  L2_2 = A0_2
  L3_2 = "^([^%d]*%d)(%d*)(.-)$"
  L1_2, L2_2, L3_2 = L1_2(L2_2, L3_2)
  L4_2 = PRICES_SEPARATOR
  if not L4_2 then
    L4_2 = "."
  end
  L5_2 = L1_2
  L7_2 = L2_2
  L6_2 = L2_2.reverse
  L6_2 = L6_2(L7_2)
  L7_2 = L6_2
  L6_2 = L6_2.gsub
  L8_2 = "(%d%d%d)"
  L9_2 = "%1"
  L10_2 = L4_2
  L9_2 = L9_2 .. L10_2
  L6_2 = L6_2(L7_2, L8_2, L9_2)
  L7_2 = L6_2
  L6_2 = L6_2.reverse
  L6_2 = L6_2(L7_2)
  L7_2 = L3_2
  L5_2 = L5_2 .. L6_2 .. L7_2
  return L5_2
end
L8_1.groupDigits = L9_1
L8_1 = Framework
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  if A0_2 then
    L1_2 = string
    L1_2 = L1_2.gsub
    L2_2 = A0_2
    L3_2 = "^%s*(.-)%s*$"
    L4_2 = "%1"
    L1_2 = L1_2(L2_2, L3_2, L4_2)
    return L1_2
  else
    L1_2 = nil
    return L1_2
  end
end
L8_1.trim = L9_1
L8_1 = Framework
function L9_1()
  local L0_2, L1_2
  L0_2 = CURRENT_FRAMEWORK
  return L0_2
end
L8_1.getFramework = L9_1
L8_1 = {}
L9_1 = {}
L9_1.name = "tshirt_1"
L9_1.color = "tshirt_2"
L8_1["t-shirt"] = L9_1
L9_1 = {}
L9_1.name = "torso_1"
L9_1.color = "torso_2"
L8_1.torso2 = L9_1
L9_1 = {}
L9_1.name = "decals_1"
L9_1.color = "decals_2"
L8_1.decals = L9_1
L9_1 = {}
L9_1.name = "arms"
L9_1.color = "arms_2"
L8_1.arms = L9_1
L9_1 = {}
L9_1.name = "pants_1"
L9_1.color = "pants_2"
L8_1.pants = L9_1
L9_1 = {}
L9_1.name = "shoes_1"
L9_1.color = "shoes_2"
L8_1.shoes = L9_1
L9_1 = {}
L9_1.name = "mask_1"
L9_1.color = "mask_2"
L8_1.mask = L9_1
L9_1 = {}
L9_1.name = "bproof_1"
L9_1.color = "bproof_2"
L8_1.vest = L9_1
L9_1 = {}
L9_1.name = "chain_1"
L9_1.color = "chain_2"
L8_1.accessory = L9_1
L9_1 = {}
L9_1.name = "helmet_1"
L9_1.color = "helmet_2"
L8_1.hat = L9_1
L9_1 = {}
L9_1.name = "glasses_1"
L9_1.color = "glasses_2"
L8_1.glass = L9_1
L9_1 = {}
L9_1.name = "bags_1"
L9_1.color = "bags_2"
L8_1.bag = L9_1
L9_1 = Framework
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L8_1
    L8_2 = L8_2[L6_2]
    if L8_2 then
      L8_2 = L8_1
      L8_2 = L8_2[L6_2]
      L8_2 = L8_2.name
      L9_2 = L8_1
      L9_2 = L9_2[L6_2]
      L9_2 = L9_2.color
      L10_2 = L7_2.item
      L1_2[L8_2] = L10_2
      L10_2 = L7_2.texture
      L1_2[L9_2] = L10_2
    end
  end
  return L1_2
end
L9_1.convertOutfitFromQBCoreToESX = L10_1
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = L8_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.name
    if L7_2 == A0_2 then
      L7_2 = L5_2
      L8_2 = "name"
      return L7_2, L8_2
    else
      L7_2 = L6_2.color
      if L7_2 == A0_2 then
        L7_2 = L5_2
        L8_2 = "color"
        return L7_2, L8_2
      end
    end
  end
end
L10_1 = Framework
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L9_1
    L9_2 = L6_2
    L8_2, L9_2 = L8_2(L9_2)
    if L8_2 then
      L10_2 = L1_2[L8_2]
      if not L10_2 then
        L10_2 = {}
      end
      L1_2[L8_2] = L10_2
      if "name" == L9_2 then
        L10_2 = L1_2[L8_2]
        L10_2.item = L7_2
      elseif "color" == L9_2 then
        L10_2 = L1_2[L8_2]
        L10_2.texture = L7_2
      end
    end
  end
  return L1_2
end
L10_1.convertOutfitFromESXToQBCore = L11_1
function L10_1(A0_2)
  local L1_2
  INVENTORY_TO_USE = A0_2
end
function L11_1(A0_2)
  local L1_2
  CLOTHING_TO_USE = A0_2
end
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = print
  L3_2 = "====================================================="
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "^1Couldn't find any "
  L4_2 = A0_2
  L5_2 = " script. Make sure to update them in jobs_creator/integrations/sh_integrations.lua^7"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "^1Only "
  L4_2 = table
  L4_2 = L4_2.concat
  L5_2 = A1_2
  L6_2 = " and "
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = " can be used^7"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2(L3_2)
  L2_2 = print
  L3_2 = "====================================================="
  L2_2(L3_2)
end
L13_1 = {}
L14_1 = {}
L15_1 = {}
L16_1 = "esx_skin"
L17_1 = "illenium-appereance"
L15_1[1] = L16_1
L15_1[2] = L17_1
L14_1.clothing = L15_1
L15_1 = {}
L14_1.inventory = L15_1
L15_1 = {}
L14_1.boss = L15_1
L13_1.ESX = L14_1
L14_1 = {}
L15_1 = {}
L16_1 = "qb-clothing"
L17_1 = "illenium-appereance"
L15_1[1] = L16_1
L15_1[2] = L17_1
L14_1.clothing = L15_1
L15_1 = {}
L14_1.inventory = L15_1
L15_1 = {}
L16_1 = "qb-banking (latest QBCore wants this)"
L15_1[1] = L16_1
L14_1.boss = L15_1
L13_1["QB-core"] = L14_1
L14_1 = {}
L15_1 = {}
L15_1.label = "OX Inventory"
L15_1.successFunction = L10_1
L14_1.ox_inventory = L15_1
L15_1 = {}
L15_1.label = "ESX Skin"
L15_1.value = "framework"
function L16_1()
  local L0_2, L1_2
  L0_2 = Framework
  L0_2 = L0_2.getFramework
  L0_2 = L0_2()
  if "ESX" ~= L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = GetResourceState
  L1_2 = "illenium-appearance"
  L0_2 = L0_2(L1_2)
  if "missing" == L0_2 then
    L0_2 = GetResourceState
    L1_2 = "fivem-appearance"
    L0_2 = L0_2(L1_2)
    if "missing" == L0_2 then
      goto lbl_20
    end
  end
  L0_2 = false
  do return L0_2 end
  ::lbl_20::
  L0_2 = true
  return L0_2
end
L15_1.checkFunction = L16_1
L15_1.successFunction = L11_1
L14_1.esx_skin = L15_1
L15_1 = {}
L15_1.label = "QB Clothing"
L15_1.value = "framework"
function L16_1()
  local L0_2, L1_2
  L0_2 = Framework
  L0_2 = L0_2.getFramework
  L0_2 = L0_2()
  if "QB-core" ~= L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = GetResourceState
  L1_2 = "illenium-appearance"
  L0_2 = L0_2(L1_2)
  if "missing" == L0_2 then
    L0_2 = GetResourceState
    L1_2 = "fivem-appearance"
    L0_2 = L0_2(L1_2)
    if "missing" == L0_2 then
      goto lbl_20
    end
  end
  L0_2 = false
  do return L0_2 end
  ::lbl_20::
  L0_2 = true
  return L0_2
end
L15_1.checkFunction = L16_1
L15_1.successFunction = L11_1
L14_1["qb-clothing"] = L15_1
L15_1 = {}
L15_1.label = "Illenium Appearance"
L15_1.successFunction = L11_1
L14_1["illenium-appearance"] = L15_1
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = pairs
  L1_2 = L14_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = Utils
    L6_2 = L6_2.getScriptName
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = GetResourceState
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    if "missing" ~= L7_2 then
      L7_2 = L5_2.checkFunction
      if L7_2 then
        L7_2 = L5_2.checkFunction
        L7_2 = L7_2()
        if not L7_2 then
          goto lbl_33
        end
      end
      L7_2 = print
      L8_2 = "^2Automatically using ^4"
      L9_2 = L5_2.label
      L10_2 = "^7"
      L8_2 = L8_2 .. L9_2 .. L10_2
      L7_2(L8_2)
      L7_2 = L5_2.successFunction
      L8_2 = L5_2.value
      if not L8_2 then
        L8_2 = L4_2
      end
      L7_2(L8_2)
    end
    ::lbl_33::
  end
  L0_2 = CLOTHING_TO_USE
  if nil == L0_2 then
    L0_2 = L12_1
    L1_2 = "clothing"
    L3_2 = CURRENT_FRAMEWORK
    L2_2 = L13_1
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2.clothing
    L0_2(L1_2, L2_2)
  end
  L0_2 = INVENTORY_TO_USE
  if nil == L0_2 then
    INVENTORY_TO_USE = "default"
    L0_2 = print
    L1_2 = "^2Using default ^4"
    L2_2 = CURRENT_FRAMEWORK
    L3_2 = " inventory^7"
    L1_2 = L1_2 .. L2_2 .. L3_2
    L0_2(L1_2)
  end
  L0_2 = pairs
  L1_2 = config
  L1_2 = L1_2.modules
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = print
    L7_2 = "^2Automatically using ^4"
    L8_2 = L5_2
    L9_2 = "^2 for "
    L10_2 = L4_2
    L11_2 = "^7"
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
    L6_2(L7_2)
  end
end
L16_1 = RegisterNetEvent
L17_1 = Utils
L17_1 = L17_1.eventsPrefix
L18_1 = ":clientConfigLoadedOnStart"
L17_1 = L17_1 .. L18_1
L18_1 = L15_1
L16_1(L17_1, L18_1)
L16_1 = RegisterNetEvent
L17_1 = Utils
L17_1 = L17_1.eventsPrefix
L18_1 = ":serverConfigLoadedOnStart"
L17_1 = L17_1 .. L18_1
L18_1 = L15_1
L16_1(L17_1, L18_1)
