local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1
L0_1 = {}
L1_1 = {}
L1_1.framework = "ESX"
L2_1 = Utils
L2_1 = L2_1.getScriptName
L3_1 = "es_extended"
L2_1 = L2_1(L3_1)
L1_1.resourceName = L2_1
L1_1.path = "server/common.lua"
L1_1.keyString = "esx:refreshJobs"
L1_1.code = [[
            -- Jobs Creator integration (jobs_creator)
            RegisterNetEvent('esx:refreshJobs')
            AddEventHandler('esx:refreshJobs', function()
                MySQL.Async.fetchAll('SELECT * FROM jobs', {}, function(jobs)
                    for k,v in ipairs(jobs) do
                        ESX.Jobs[v.name] = v
                        ESX.Jobs[v.name].grades = {}
                    end

                    MySQL.Async.fetchAll('SELECT * FROM job_grades', {}, function(jobGrades)
                        for k,v in ipairs(jobGrades) do
                            if ESX.Jobs[v.job_name] then
                                ESX.Jobs[v.job_name].grades[tostring(v.grade)] = v
                            else
                                print(('[es_extended] [^3WARNING^7] Ignoring job grades for "%s" due to missing job'):format(v.job_name))
                            end
                        end

                        for k2,v2 in pairs(ESX.Jobs) do
                            if ESX.Table.SizeOf(v2.grades) == 0 then
                                ESX.Jobs[v2.name] = nil
                                print(('[es_extended] [^3WARNING^7] Ignoring job "%s" due to no job grades found'):format(v2.name))
                            end
                        end
                    end)
                end)
            end)
        ]]
L2_1 = {}
L2_1.framework = "ESX"
L3_1 = Utils
L3_1 = L3_1.getScriptName
L4_1 = "esx_addonaccount"
L3_1 = L3_1(L4_1)
L2_1.resourceName = L3_1
L2_1.path = "server/main.lua"
L2_1.keyString = "esx_addonaccount:refreshAccounts"
L2_1.code = [[
            -- Jobs Creator integration (jobs_creator)
            RegisterNetEvent('esx_addonaccount:refreshAccounts')
            AddEventHandler('esx_addonaccount:refreshAccounts', function() 
                local result = MySQL.Sync.fetchAll('SELECT * FROM addon_account')

                for i=1, #result, 1 do
                    local name   = result[i].name
                    local label  = result[i].label
                    local shared = result[i].shared

                    local result2 = MySQL.Sync.fetchAll('SELECT * FROM addon_account_data WHERE account_name = @account_name', {
                        ['@account_name'] = name
                    })

                    if shared == 0 then
                        table.insert(AccountsIndex, name)
                        Accounts[name] = {}

                        for j=1, #result2, 1 do
                            local addonAccount = CreateAddonAccount(name, result2[j].owner, result2[j].money)
                            table.insert(Accounts[name], addonAccount)
                        end
                    else
                        local money = nil

                        if #result2 == 0 then
                            MySQL.Sync.execute('INSERT INTO addon_account_data (account_name, money, owner) VALUES (@account_name, @money, NULL)', {
                                ['@account_name'] = name,
                                ['@money']        = 0
                            })

                            money = 0
                        else
                            money = result2[1].money
                        end

                        local addonAccount   = CreateAddonAccount(name, nil, money)
                        SharedAccounts[name] = addonAccount
                    end
                end
            end)
        ]]
L3_1 = {}
L3_1.framework = "ESX"
L4_1 = Utils
L4_1 = L4_1.getScriptName
L5_1 = "es_extended"
L4_1 = L4_1(L5_1)
L3_1.resourceName = L4_1
L3_1.path = "server/common.lua"
L3_1.keyString = "ESX.ServerCallbacks"
L3_1.code = [[
            -- Jobs Creator integration (jobs_creator)
            ESX.ServerCallbacks = Core.ServerCallbacks
        ]]
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = LoadResourceFile
  L1_2 = Utils
  L1_2 = L1_2.getScriptName
  L2_2 = "es_extended"
  L1_2 = L1_2(L2_2)
  L2_2 = "server/modules/callback.lua"
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L0_2 = false
    return L0_2
  end
  L0_2 = true
  return L0_2
end
L3_1.controlFunction = L4_1
L4_1 = {}
L4_1.framework = "ESX"
L5_1 = Utils
L5_1 = L5_1.getScriptName
L6_1 = "es_extended"
L5_1 = L5_1(L6_1)
L4_1.resourceName = L5_1
L4_1.path = "server/modules/callback.lua"
L4_1.keyString = "ESX.ServerCallbacks"
L4_1.code = [[
            -- Jobs Creator integration (jobs_creator)
            ESX.ServerCallbacks = serverCallbacks
        ]]
function L5_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = LoadResourceFile
  L1_2 = Utils
  L1_2 = L1_2.getScriptName
  L2_2 = "es_extended"
  L1_2 = L1_2(L2_2)
  L2_2 = "server/modules/callback.lua"
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L1_2 = false
    return L1_2
  end
  L2_2 = L0_2
  L1_2 = L0_2.find
  L3_2 = "local serverCallbacks = {}"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = nil ~= L1_2
  return L1_2
end
L4_1.controlFunction = L5_1
L5_1 = {}
L5_1.framework = "ESX"
L6_1 = Utils
L6_1 = L6_1.getScriptName
L7_1 = "es_extended"
L6_1 = L6_1(L7_1)
L5_1.resourceName = L6_1
L5_1.path = "server/modules/callback.lua"
L5_1.keyString = "ESX.ServerCallbacks = Callbacks.storage"
L5_1.code = [[
            -- Jobs Creator integration (jobs_creator)
            ESX.ServerCallbacks = Callbacks.storage
        ]]
function L6_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = LoadResourceFile
  L1_2 = Utils
  L1_2 = L1_2.getScriptName
  L2_2 = "es_extended"
  L1_2 = L1_2(L2_2)
  L2_2 = "server/modules/callback.lua"
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L1_2 = false
    return L1_2
  end
  L2_2 = L0_2
  L1_2 = L0_2.find
  L3_2 = "Callbacks.storage = {}"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = nil ~= L1_2
  return L1_2
end
L5_1.controlFunction = L6_1
L6_1 = {}
L6_1.framework = "QB-core"
L7_1 = Utils
L7_1 = L7_1.getScriptName
L8_1 = "qb-clothing"
L7_1 = L7_1(L8_1)
L6_1.resourceName = L7_1
L6_1.path = "client/main.lua"
L6_1.keyString = "getPlayerSkin"
L6_1.code = [[
            -- Jobs Creator integration (jobs_creator)
            RegisterNetEvent("qb-clothes:getPlayerSkin", function(cb)
                cb(skinData)
            end)
        ]]
function L7_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Utils
  L0_2 = L0_2.getScriptName
  L1_2 = "qb-clothing"
  L0_2 = L0_2(L1_2)
  L1_2 = CLOTHING_TO_USE
  L1_2 = Utils
  L1_2 = L1_2.doesScriptProvideFor
  L2_2 = L0_2
  L3_2 = "qb-clothing"
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = "framework" == L1_2 and L1_2
  return L1_2
end
L6_1.controlFunction = L7_1
L7_1 = {}
L7_1.framework = "QB-core"
L8_1 = Utils
L8_1 = L8_1.getScriptName
L9_1 = "qb-weapons"
L8_1 = L8_1(L9_1)
L7_1.resourceName = L8_1
L7_1.path = "config.lua"
L7_1.keyString = "getWeaponsAttachments"
L7_1.code = [[
            -- Jobs Creator integration (jobs_creator)
            RegisterNetEvent("qb-weapons:getWeaponsAttachments", function(cb)
                cb(WeaponAttachments)
            end)
        ]]
function L8_1()
  local L0_2, L1_2
  L0_2 = INVENTORY_TO_USE
  L0_2 = "default" == L0_2
  return L0_2
end
L7_1.controlFunction = L8_1
L8_1 = {}
L8_1.framework = "QB-core"
L9_1 = Utils
L9_1 = L9_1.getScriptName
L10_1 = "qb-core"
L9_1 = L9_1(L10_1)
L8_1.resourceName = L9_1
L8_1.path = "shared/jobs.lua"
L8_1.keyString = "injectJobs"
L8_1.code = [[
            -- Jobs Creator integration (jobs_creator)
            RegisterNetEvent("jobs_creator:injectJobs", function(jobs)
                if IsDuplicityVersion() and type(source) == "number" and source > 0 then return end
                QBShared.Jobs = jobs
            end)
        ]]
function L9_1()
  local L0_2, L1_2
  L0_2 = SUBFRAMEWORK
  L0_2 = nil == L0_2
  return L0_2
end
L8_1.controlFunction = L9_1
L9_1 = {}
L9_1.framework = "QB-core"
L10_1 = Utils
L10_1 = L10_1.getScriptName
L11_1 = "qb-core"
L10_1 = L10_1(L11_1)
L9_1.resourceName = L10_1
L9_1.path = "server/main.lua"
L9_1.keyString = "injectJobs"
L9_1.code = [[
            -- Jobs Creator integration (jobs_creator)
            RegisterNetEvent("jobs_creator:injectJobs", function(jobs)
                if type(source) == "number" and source > 0 then return end
                QBCore.Shared.Jobs = jobs
            end)
        ]]
function L10_1()
  local L0_2, L1_2
  L0_2 = SUBFRAMEWORK
  L0_2 = nil == L0_2
  return L0_2
end
L9_1.controlFunction = L10_1
L10_1 = {}
L10_1.framework = "QB-core"
L11_1 = Utils
L11_1 = L11_1.getScriptName
L12_1 = "qb-core"
L11_1 = L11_1(L12_1)
L10_1.resourceName = L11_1
L10_1.path = "client/main.lua"
L10_1.keyString = "injectJobs"
L10_1.code = [[
            -- Jobs Creator integration (jobs_creator)
            RegisterNetEvent("jobs_creator:injectJobs", function(jobs)
                QBCore.Shared.Jobs = jobs
            end)
        ]]
function L11_1()
  local L0_2, L1_2
  L0_2 = SUBFRAMEWORK
  L0_2 = nil == L0_2
  return L0_2
end
L10_1.controlFunction = L11_1
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L0_1[6] = L6_1
L0_1[7] = L7_1
L0_1[8] = L8_1
L0_1[9] = L9_1
L0_1[10] = L10_1
function L1_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = LoadResourceFile
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if L3_2 then
    L5_2 = L3_2
    L4_2 = L3_2.match
    L6_2 = A2_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = nil ~= L4_2
    return L5_2
  else
    L4_2 = false
    return L4_2
  end
end
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = LoadResourceFile
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L4_2 = print
    L5_2 = "^1"
    L6_2 = A1_2
    L7_2 = " can't be found in "
    L8_2 = A0_2
    L9_2 = "^7"
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    L4_2(L5_2)
    L4_2 = false
    L5_2 = nil
    return L4_2, L5_2
  end
  L4_2 = L3_2
  L5_2 = [[


]]
  L6_2 = A2_2
  L4_2 = L4_2 .. L5_2 .. L6_2
  L3_2 = L4_2
  L4_2 = SaveResourceFile
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = L3_2
  L8_2 = -1
  L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
  if L4_2 then
    L5_2 = true
    return L5_2
  end
  L6_2 = A1_2
  L5_2 = A1_2.gsub
  L7_2 = "/"
  L8_2 = "-"
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = "tmp/"
  L7_2 = A0_2
  L8_2 = "-"
  L9_2 = L5_2
  L6_2 = L6_2 .. L7_2 .. L8_2 .. L9_2
  L7_2 = GetCurrentResourceName
  L7_2 = L7_2()
  L8_2 = SaveResourceFile
  L9_2 = L7_2
  L10_2 = L6_2
  L11_2 = L3_2
  L12_2 = -1
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = L7_2
  L9_2 = "/"
  L10_2 = L6_2
  L8_2 = L8_2 .. L9_2 .. L10_2
  L9_2 = false
  L10_2 = L8_2
  return L9_2, L10_2
end
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2, L21_2
  L0_2 = false
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.framework
    L7_2 = not L7_2
    L8_2 = L6_2.controlFunction
    L8_2 = L6_2.controlFunction
    L8_2 = not L8_2 or L8_2
    if L7_2 and L8_2 then
      L9_2 = L1_1
      L10_2 = L6_2.resourceName
      L11_2 = L6_2.path
      L12_2 = L6_2.keyString
      L9_2 = L9_2(L10_2, L11_2, L12_2)
      if not L9_2 then
        L9_2 = L2_1
        L10_2 = L6_2.resourceName
        L11_2 = L6_2.path
        L12_2 = L6_2.code
        L9_2, L10_2 = L9_2(L10_2, L11_2, L12_2)
        if L9_2 then
          L11_2 = print
          L12_2 = "^2Added integration to "
          L13_2 = L6_2.resourceName
          L14_2 = "/"
          L15_2 = L6_2.path
          L12_2 = L12_2 .. L13_2 .. L14_2 .. L15_2
          L11_2(L12_2)
          L0_2 = true
        elseif L10_2 then
          L12_2 = L10_2
          L11_2 = L10_2.match
          L13_2 = "[^/]+$"
          L11_2 = L11_2(L12_2, L13_2)
          L12_2 = L6_2.resourceName
          L13_2 = "/"
          L14_2 = L6_2.path
          L12_2 = L12_2 .. L13_2 .. L14_2
          L14_2 = L12_2
          L13_2 = L12_2.match
          L15_2 = "(.*/)"
          L13_2 = L13_2(L14_2, L15_2)
          L15_2 = L12_2
          L14_2 = L12_2.match
          L16_2 = "[^/]+$"
          L14_2 = L14_2(L15_2, L16_2)
          L15_2 = print
          L15_2()
          L15_2 = print
          L16_2 = "^1Failed to add integration to ^3'"
          L17_2 = L12_2
          L18_2 = "'^1, the file is probably read-only. To fix it, follow these steps:^7"
          L16_2 = L16_2 .. L17_2 .. L18_2
          L15_2(L16_2)
          L15_2 = print
          L16_2 = "1. Backup the file ^3"
          L17_2 = L12_2
          L18_2 = "^7 and delete it from the ^3"
          L19_2 = L6_2.resourceName
          L20_2 = "^7 resource"
          L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2
          L15_2(L16_2)
          L15_2 = print
          L16_2 = "2. Move the file ^3"
          L17_2 = L10_2
          L18_2 = "^7 to ^2"
          L19_2 = L13_2
          L20_2 = "^7"
          L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2
          L15_2(L16_2)
          L15_2 = print
          L16_2 = "3. Rename the file ^3"
          L17_2 = L13_2
          L18_2 = L11_2
          L19_2 = "^7 to ^2"
          L20_2 = L14_2
          L21_2 = "^7 (so it replaces the file you backed up and deleted in step 1)"
          L16_2 = L16_2 .. L17_2 .. L18_2 .. L19_2 .. L20_2 .. L21_2
          L15_2(L16_2)
          L15_2 = print
          L16_2 = "4. Restart the server"
          L15_2(L16_2)
          L15_2 = print
          L16_2 = "----------------------------------"
          L15_2(L16_2)
          L15_2 = print
          L15_2()
        end
      end
    end
  end
  if L0_2 then
    L1_2 = GetGameTimer
    L1_2 = L1_2()
    L1_2 = L1_2 + 10000
    while true do
      L2_2 = GetGameTimer
      L2_2 = L2_2()
      if not (L1_2 > L2_2) then
        break
      end
      L2_2 = Citizen
      L2_2 = L2_2.Wait
      L3_2 = 1000
      L2_2(L3_2)
      L2_2 = print
      L3_2 = "^3Code integration automatically done, SERVER REQUIRES RESTART^7"
      L2_2(L3_2)
    end
  end
end
L4_1 = RegisterNetEvent
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":serverConfigLoadedOnStart"
L5_1 = L5_1 .. L6_1
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = L0_1
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = Utils
    L6_2 = L6_2.getScriptName
    L7_2 = L5_2.resourceName
    L6_2 = L6_2(L7_2)
    L5_2.resourceName = L6_2
  end
  L0_2 = L3_1
  L0_2()
end
L4_1(L5_1, L6_1)
