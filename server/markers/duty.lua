local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = L0_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = getCurrentUnixTime
  L2_2 = L2_2()
  L3_2 = L1_2.startTime
  L2_2 = L2_2 - L3_2
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = L2_2 / 60
  L3_2 = L3_2(L4_2)
  L4_2 = os
  L4_2 = L4_2.date
  L5_2 = "%Y-%m-%d"
  L4_2 = L4_2(L5_2)
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.execute
  L6_2 = [[
            INSERT INTO jobs_employee_hours (job_name, char_identifier, total_minutes, date) VALUES (@job, @id, @min, @date)
            ON DUPLICATE KEY UPDATE total_minutes = total_minutes + @min
        ]]
  L7_2 = {}
  L8_2 = L1_2.job
  L7_2["@job"] = L8_2
  L8_2 = L1_2.charIdentifier
  L7_2["@id"] = L8_2
  L7_2["@min"] = L3_2
  L7_2["@date"] = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = L0_1
  L5_2[A0_2] = nil
end
L2_1 = RegisterNetEvent
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":framework:ready"
L3_1 = L3_1 .. L4_1
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = GetPlayers
  L0_2 = L0_2()
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM jobs_employee_hours WHERE date < DATE_SUB(CURDATE(), INTERVAL 14 DAY)"
  L1_2(L2_2)
  L1_2 = 1
  L2_2 = #L0_2
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = tonumber
    L6_2 = L0_2[L4_2]
    L5_2 = L5_2(L6_2)
    L6_2 = Framework
    L6_2 = L6_2.getPlayerJobName
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = JobsCreator
    L7_2 = L7_2.isOffDutyName
    L8_2 = L6_2
    L7_2 = L7_2(L8_2)
    L7_2 = false == L7_2
    if L7_2 then
      L8_2 = L0_1
      L9_2 = {}
      L9_2.job = L6_2
      L10_2 = getCurrentUnixTime
      L10_2 = L10_2()
      L9_2.startTime = L10_2
      L10_2 = Framework
      L10_2 = L10_2.getPlayerCharIdentifier
      L11_2 = L5_2
      L10_2 = L10_2(L11_2)
      L9_2.charIdentifier = L10_2
      L8_2[L5_2] = L9_2
    end
  end
end
L2_1(L3_1, L4_1)
L2_1 = RegisterServerCallback
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":switchJobDuty"
L3_1 = L3_1 .. L4_1
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = Framework
  L3_2 = L3_2.getFramework
  L3_2 = L3_2()
  if "ESX" ~= L3_2 then
    return
  end
  L3_2 = Framework
  L3_2 = L3_2.getPlayerJobName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = Framework
  L4_2 = L4_2.getPlayerJobGrade
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = JobsCreator
  L5_2 = L5_2.Jobs
  L6_2 = JobsCreator
  L6_2 = L6_2.getOffDutyName
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L5_2 = L5_2[L6_2]
  if not L5_2 then
    L5_2 = JobsCreator
    L5_2 = L5_2.ensureOffDutyJob
    L6_2 = L3_2
    L5_2(L6_2)
    L5_2 = Citizen
    L5_2 = L5_2.Wait
    L6_2 = 1000
    L5_2(L6_2)
  end
    if nil == A2_2 then
      L5_2 = JobsCreator
      L5_2 = L5_2.isOffDutyName
      L6_2 = L3_2
      L5_2 = L5_2(L6_2)
      A2_2 = L5_2
    else
      L5_2 = JobsCreator
      L5_2 = L5_2.isOffDutyName
      L6_2 = L3_2
      L5_2 = L5_2(L6_2)
      if not A2_2 and L5_2 then
        L6_2 = A1_2
        L7_2 = JobsCreator
        L7_2 = L7_2.isOffDutyName
        L8_2 = L3_2
        L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
        return L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      end
    end
  L5_2 = nil
  if A2_2 then
    L6_2 = JobsCreator
    L6_2 = L6_2.getOnDutyName
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  else
    L6_2 = JobsCreator
    L6_2 = L6_2.getOffDutyName
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    L5_2 = L6_2
  end
  L6_2 = GetGameTimer
  L6_2 = L6_2()
  L6_2 = L6_2 + 3000
  while true do
    L7_2 = JobsCreator
    L7_2 = L7_2.Jobs
    L7_2 = L7_2[L5_2]
    if L7_2 then
      break
    end
    L7_2 = GetGameTimer
    L7_2 = L7_2()
    if not (L6_2 > L7_2) then
      break
    end
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = 1000
    L7_2(L8_2)
  end
  L7_2 = Framework
  L7_2 = L7_2.setJobToPlayer
  L8_2 = A0_2
  L9_2 = L5_2
  L10_2 = L4_2
  L7_2(L8_2, L9_2, L10_2)
  if A2_2 then
    L7_2 = Framework
    L7_2 = L7_2.getPlayerCharIdentifier
    L8_2 = A0_2
    L7_2 = L7_2(L8_2)
    L8_2 = L0_1
    L9_2 = {}
    L9_2.job = L5_2
    L10_2 = getCurrentUnixTime
    L10_2 = L10_2()
    L9_2.startTime = L10_2
    L9_2.charIdentifier = L7_2
    L8_2[A0_2] = L9_2
  else
    L7_2 = L0_1
    L7_2 = L7_2[A0_2]
    if L7_2 then
      L7_2 = L1_1
      L8_2 = A0_2
      L7_2(L8_2)
    end
  end
  L7_2 = A1_2
  L8_2 = A2_2
  L7_2(L8_2)
end
L2_1(L3_1, L4_1)
L2_1 = RegisterServerCallback
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":isSelfOnDuty"
L3_1 = L3_1 .. L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Framework
  L2_2 = L2_2.getFramework
  L2_2 = L2_2()
  if "ESX" ~= L2_2 then
    return
  end
  L2_2 = Framework
  L2_2 = L2_2.getPlayerJobName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2
  L4_2 = JobsCreator
  L4_2 = L4_2.isOffDutyName
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L4_2 = not L4_2
  L3_2(L4_2)
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Framework
  L1_2 = L1_2.getFramework
  L1_2 = L1_2()
  if "ESX" == L1_2 then
    L1_2 = Framework
    L1_2 = L1_2.getPlayerJobName
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    L2_2 = JobsCreator
    L2_2 = L2_2.isOffDutyName
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    L2_2 = not L2_2
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
      while not L1_2 do
        L2_2 = QBCore
        L2_2 = L2_2.Functions
        L2_2 = L2_2.GetPlayer
        L3_2 = A0_2
        L2_2 = L2_2(L3_2)
        L1_2 = L2_2
        L2_2 = Citizen
        L2_2 = L2_2.Wait
        L3_2 = 1000
        L2_2(L3_2)
      end
      L2_2 = L1_2.PlayerData
      L2_2 = L2_2.job
      L2_2 = L2_2.onduty
      return L2_2
    end
  end
end
L3_1 = exports
L4_1 = "isPlayerOnDuty"
L5_1 = L2_1
L3_1(L4_1, L5_1)
L3_1 = RegisterServerCallback
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":isPlayerOnDuty"
L4_1 = L4_1 .. L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = L2_1
  L4_2 = A0_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
end
L3_1(L4_1, L5_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerJobName
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = TriggerEvent
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":toggleDuty"
  L4_2 = L4_2 .. L5_2
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = A0_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L4_1 = RegisterNetEvent
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":changeDutyStatus"
L5_1 = L5_1 .. L6_1
L6_1 = L3_1
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "QBCore:Server:PlayerLoaded"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DEFAULT_DUTY_STATUS
  if nil == L1_2 then
    return
  end
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 1000
  L1_2(L2_2)
  L1_2 = TriggerClientEvent
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":toggleCurrentDutyStatus"
  L2_2 = L2_2 .. L3_2
  L3_2 = A0_2.PlayerData
  L3_2 = L3_2.source
  L4_2 = DEFAULT_DUTY_STATUS
  L1_2(L2_2, L3_2, L4_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "playerDropped"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = source
  L2_2 = L1_1
  L3_2 = L1_2
  L2_2(L3_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "onResourceStop"
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = 0
  L2_2 = pairs
  L3_2 = L0_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L1_1
    L9_2 = L6_2
    L8_2(L9_2)
    L1_2 = L1_2 + 1
  end
  L2_2 = print
  L3_2 = "^2Saved "
  L4_2 = L1_2
  L5_2 = " active duty sessions^7"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2(L3_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "esx:playerLoaded"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A1_2.job
  L2_2 = L2_2.name
  L3_2 = JobsCreator
  L3_2 = L3_2.isOffDutyName
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    return
  end
  L3_2 = L0_1
  L4_2 = {}
  L4_2.job = L2_2
  L5_2 = getCurrentUnixTime
  L5_2 = L5_2()
  L4_2.startTime = L5_2
  L5_2 = Framework
  L5_2 = L5_2.getPlayerCharIdentifier
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  L4_2.charIdentifier = L5_2
  L3_2[A0_2] = L4_2
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "QBCore:Client:OnPlayerLoaded"
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = source
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 1000
  L1_2(L2_2)
  L1_2 = exports
  L2_2 = GetCurrentResourceName
  L2_2 = L2_2()
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.isPlayerOnDuty
  L3_2 = L0_2
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    return
  end
  L1_2 = Framework
  L1_2 = L1_2.getPlayerJobName
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = Framework
  L2_2 = L2_2.getPlayerCharIdentifier
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L0_1
  L4_2 = {}
  L4_2.job = L1_2
  L5_2 = getCurrentUnixTime
  L5_2 = L5_2()
  L4_2.startTime = L5_2
  L4_2.charIdentifier = L2_2
  L3_2[L0_2] = L4_2
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "esx:setJob"
function L6_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = L1_1
  L4_2 = A0_2
  L3_2(L4_2)
  L3_2 = JobsCreator
  L3_2 = L3_2.isOffDutyName
  L4_2 = A1_2.name
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = L0_1
    L4_2 = {}
    L5_2 = A1_2.name
    L4_2.job = L5_2
    L5_2 = getCurrentUnixTime
    L5_2 = L5_2()
    L4_2.startTime = L5_2
    L5_2 = Framework
    L5_2 = L5_2.getPlayerCharIdentifier
    L6_2 = A0_2
    L5_2 = L5_2(L6_2)
    L4_2.charIdentifier = L5_2
    L3_2[A0_2] = L4_2
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "QBCore:Server:OnJobUpdate"
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = A1_2
  if L2_2 then
    L2_2 = L2_2.onduty
  end
  if L2_2 then
    L2_2 = L0_1
    L3_2 = {}
    L4_2 = A1_2.name
    L3_2.job = L4_2
    L4_2 = getCurrentUnixTime
    L4_2 = L4_2()
    L3_2.startTime = L4_2
    L4_2 = Framework
    L4_2 = L4_2.getPlayerCharIdentifier
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L3_2.charIdentifier = L4_2
    L2_2[A0_2] = L3_2
  end
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "esx:playerLogout"
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = A0_2
  L1_2(L2_2)
end
L4_1(L5_1, L6_1)
L4_1 = RegisterNetEvent
L5_1 = "QBCore:Server:OnPlayerUnload"
function L6_1(A0_2)
  local L1_2, L2_2
  L1_2 = L1_1
  L2_2 = A0_2
  L1_2(L2_2)
end
L4_1(L5_1, L6_1)
