local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = JobsCreator
  L2_2 = L2_2.Markers
  L2_2 = L2_2[A1_2]
  L2_2 = L2_2.jobName
  if "public_marker" == L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = Framework
  L2_2 = L2_2.getPlayerJobName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Framework
  L3_2 = L3_2.getPlayerJobGrade
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L4_2 = L4_2[A1_2]
  L4_2 = L4_2.gradesType
  if "minimumGrade" == L4_2 then
    L5_2 = JobsCreator
    L5_2 = L5_2.Markers
    L5_2 = L5_2[A1_2]
    L5_2 = L5_2.jobName
    L5_2 = L5_2 == L2_2
    return L5_2
  elseif "specificGrades" == L4_2 then
    L5_2 = JobsCreator
    L5_2 = L5_2.Markers
    L5_2 = L5_2[A1_2]
    L5_2 = L5_2.jobName
    L5_2 = JobsCreator
    L5_2 = L5_2.Markers
    L5_2 = L5_2[A1_2]
    L5_2 = L5_2.specificGrades
    L6_2 = tostring
    L7_2 = L3_2
    L6_2 = L6_2(L7_2)
    L5_2 = L5_2 == L2_2 and L5_2
    return L5_2
  end
end
isAllowedToUseMarker = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = isAllowedToUseMarker
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = Utils
    L2_2 = L2_2.log
    L3_2 = A0_2
    L4_2 = getLocalizedText
    L5_2 = "log_not_allowed_marker"
    L4_2 = L4_2(L5_2)
    L5_2 = getLocalizedText
    L6_2 = "log_not_allowed_marker_description"
    L7_2 = A1_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = "error"
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = false
    return L2_2
  end
  L2_2 = isCloseToMarker
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L2_2 = print
    L3_2 = "^3"
    L4_2 = GetPlayerName
    L5_2 = A0_2
    L4_2 = L4_2(L5_2)
    L5_2 = "^7 tried to use marker ^5"
    L6_2 = A1_2
    L7_2 = "^7 but he wasn't close enough"
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
    L2_2(L3_2)
    L2_2 = false
    return L2_2
  end
  L2_2 = true
  return L2_2
end
canUseMarkerWithLog = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = GetPlayerPed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = vecFromTable
  L5_2 = JobsCreator
  L5_2 = L5_2.Markers
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.coords
  L4_2 = L4_2(L5_2)
  L5_2 = JobsCreator
  L5_2 = L5_2.Markers
  L5_2 = L5_2[A1_2]
  L5_2 = L5_2.scale
  L6_2 = L3_2 - L4_2
  L6_2 = #L6_2
  L7_2 = L5_2.x
  L7_2 = L7_2 + 2.0
  L6_2 = L6_2 < L7_2
  return L6_2
end
isCloseToMarker = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L2_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = L2_1
    L1_2 = L1_2[A0_2]
    return L1_2
  end
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.fetchScalar
  L2_2 = "SELECT job_name FROM job_grades WHERE id=@id"
  L3_2 = {}
  L3_2["@id"] = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L2_1
  L2_2[A0_2] = L1_2
  return L1_2
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = promise
  L1_2 = L1_2.new
  L1_2 = L1_2()
  L2_2 = MySQL
  L2_2 = L2_2.Async
  L2_2 = L2_2.fetchScalar
  L3_2 = "SELECT grade FROM job_grades WHERE id=@id"
  L4_2 = {}
  L4_2["@id"] = A0_2
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
L5_1 = RegisterServerCallback
L6_1 = Utils
L6_1 = L6_1.eventsPrefix
L7_1 = ":checkAllowedActions"
L6_1 = L6_1 .. L7_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  while true do
    L2_2 = Framework
    L2_2 = L2_2.isPlayerLoaded
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 1000
    L2_2(L3_2)
  end
  L2_2 = Framework
  L2_2 = L2_2.getPlayerJobName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = JobsCreator
  L3_2 = L3_2.Jobs
  L3_2 = L3_2[L2_2]
  if L3_2 then
    L3_2 = A1_2
    L4_2 = JobsCreator
    L4_2 = L4_2.Jobs
    L4_2 = L4_2[L2_2]
    L4_2 = L4_2.actions
    L3_2(L4_2)
  else
    L3_2 = A1_2
    L4_2 = {}
    L3_2(L4_2)
  end
end
L5_1(L6_1, L7_1)
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Framework
  L2_2 = L2_2.getFramework
  L2_2 = L2_2()
  if "ESX" == L2_2 then
    L2_2 = ESX
    L2_2 = L2_2.GetPlayerFromId
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = L2_2.getMoney
    L3_2 = L3_2()
    if A1_2 <= L3_2 then
      L3_2 = L2_2.removeMoney
      L4_2 = A1_2
      L3_2(L4_2)
      L3_2 = true
      return L3_2
    else
      L3_2 = L2_2.getAccount
      L4_2 = "bank"
      L3_2 = L3_2(L4_2)
      L4_2 = L3_2.money
      if A1_2 <= L4_2 then
        L4_2 = L2_2.removeAccountMoney
        L5_2 = "bank"
        L6_2 = A1_2
        L4_2(L5_2, L6_2)
        L4_2 = true
        return L4_2
      else
        L4_2 = false
        return L4_2
      end
    end
    L3_2 = false
    return L3_2
  else
    L2_2 = Framework
    L2_2 = L2_2.getFramework
    L2_2 = L2_2()
    if "QB-core" == L2_2 then
      L2_2 = Framework
      L2_2 = L2_2.getPlayerCharIdentifier
      L3_2 = A0_2
      L2_2 = L2_2(L3_2)
      L3_2 = Framework
      L3_2 = L3_2.getAccountMoneyFromIdentifier
      L4_2 = L2_2
      L5_2 = "cash"
      L3_2 = L3_2(L4_2, L5_2)
      if A1_2 <= L3_2 then
        L3_2 = Framework
        L3_2 = L3_2.removeAccountMoneyFromIdentifier
        L4_2 = L2_2
        L5_2 = "cash"
        L6_2 = A1_2
        L3_2(L4_2, L5_2, L6_2)
        L3_2 = true
        return L3_2
      else
        L3_2 = Framework
        L3_2 = L3_2.getAccountMoneyFromIdentifier
        L4_2 = L2_2
        L5_2 = "bank"
        L3_2 = L3_2(L4_2, L5_2)
        if A1_2 <= L3_2 then
          L3_2 = Framework
          L3_2 = L3_2.removeAccountMoneyFromIdentifier
          L4_2 = L2_2
          L5_2 = "bank"
          L6_2 = A1_2
          L3_2(L4_2, L5_2, L6_2)
          L3_2 = true
          return L3_2
        else
          L3_2 = false
          return L3_2
        end
      end
    end
  end
end
payInSomeWay = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = GetPlayerPed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = GetPlayerPed
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if L3_2 and L3_2 > 0 and L4_2 and L4_2 > 0 then
    L5_2 = GetEntityCoords
    L6_2 = L3_2
    L5_2 = L5_2(L6_2)
    L6_2 = GetEntityCoords
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    L7_2 = L5_2 - L6_2
    L7_2 = #L7_2
    L7_2 = A2_2 > L7_2
    return L7_2
  else
    L5_2 = false
    return L5_2
  end
end
arePlayersClose = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = TriggerClientEvent
    L3_2 = Utils
    L3_2 = L3_2.eventsPrefix
    L4_2 = ":notifyClient"
    L3_2 = L3_2 .. L4_2
    L4_2 = A0_2
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
notify = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerClientEvent
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":startTimedFreeze"
  L3_2 = L3_2 .. L4_2
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
timedFreezePlayer = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = 0
  L2_2 = GetPlayers
  L2_2 = L2_2()
  L3_2 = 1
  L4_2 = #L2_2
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = tonumber
    L8_2 = L2_2[L6_2]
    L7_2 = L7_2(L8_2)
    L8_2 = Framework
    L8_2 = L8_2.getPlayerJobName
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if L8_2 == A0_2 then
      L1_2 = L1_2 + 1
    end
  end
  return L1_2
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = Utils
  L2_2 = L2_2.isAllowed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = {}
  L3_2 = pairs
  L4_2 = JobsCreator
  L4_2 = L4_2.Jobs
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = {}
    L12_2 = L5_1
    L13_2 = L7_2
    L12_2 = L12_2(L13_2)
    L11_2.playersCount = L12_2
    L12_2 = L8_2.label
    L11_2.label = L12_2
    L11_2.name = L7_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L7_1 = RegisterServerCallback
L8_1 = Utils
L8_1 = L8_1.eventsPrefix
L9_1 = ":getAllJobsOnlinePlayers"
L8_1 = L8_1 .. L9_1
L9_1 = L6_1
L7_1(L8_1, L9_1)
function L7_1()
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2 = Framework
  L1_2 = L1_2.getFramework
  L1_2 = L1_2()
  if "ESX" == L1_2 then
    L1_2 = MySQL
    L1_2 = L1_2.Sync
    L1_2 = L1_2.fetchScalar
    L2_2 = [[
            SELECT JSON_OBJECTAGG(job, count) AS jobsByPlayersCount
            FROM (
                SELECT job, COUNT(*) AS count
                FROM users
                GROUP BY job
            ) AS job_counts;
        ]]
    L1_2 = L1_2(L2_2)
    L0_2 = L1_2
  else
    L1_2 = Framework
    L1_2 = L1_2.getFramework
    L1_2 = L1_2()
    if "QB-core" == L1_2 then
      L1_2 = MySQL
      L1_2 = L1_2.Sync
      L1_2 = L1_2.fetchScalar
      L2_2 = [[
			SELECT JSON_OBJECTAGG(job_name, count) AS jobsByPlayersCount
			FROM (
				SELECT JSON_UNQUOTE(JSON_EXTRACT(job, '$.name')) AS job_name, COUNT(*) AS count
				FROM players
				GROUP BY job_name
			) AS job_counts;
        ]]
      L1_2 = L1_2(L2_2)
      L0_2 = L1_2
    end
  end
  L1_2 = json
  L1_2 = L1_2.decode
  L2_2 = L0_2
  return L1_2(L2_2)
end
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = Utils
  L2_2 = L2_2.isAllowed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = L7_1
  L2_2 = L2_2()
  L3_2 = {}
  L4_2 = pairs
  L5_2 = JobsCreator
  L5_2 = L5_2.Jobs
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L3_2
    L12_2 = {}
    L13_2 = L2_2[L8_2]
    if not L13_2 then
      L13_2 = 0
    end
    L12_2.playersCount = L13_2
    L13_2 = L9_2.label
    L12_2.label = L13_2
    L12_2.name = L8_2
    L10_2(L11_2, L12_2)
  end
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L9_1 = RegisterServerCallback
L10_1 = Utils
L10_1 = L10_1.eventsPrefix
L11_1 = ":getAllJobsTotalPlayers"
L10_1 = L10_1 .. L11_1
L11_1 = L8_1
L9_1(L10_1, L11_1)
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L2_2 = Utils
  L2_2 = L2_2.isAllowed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = {}
  L3_2 = pairs
  L4_2 = JobsCreator
  L4_2 = L4_2.Jobs
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L2_2
    L11_2 = {}
    L12_2 = Framework
    L12_2 = L12_2.getSocietyAccountMoney
    L13_2 = L7_2
    L12_2 = L12_2(L13_2)
    L11_2.money = L12_2
    L12_2 = L8_2.label
    L11_2.label = L12_2
    L11_2.name = L7_2
    L9_2(L10_2, L11_2)
  end
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L10_1 = RegisterServerCallback
L11_1 = Utils
L11_1 = L11_1.eventsPrefix
L12_1 = ":getJobsSocietyMoney"
L11_1 = L11_1 .. L12_1
L12_1 = L9_1
L10_1(L11_1, L12_1)
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = promise
  L2_2 = L2_2.new
  L2_2 = L2_2()
  L3_2 = Framework
  L3_2 = L3_2.getFramework
  L3_2 = L3_2()
  if "ESX" == L3_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Async
    L3_2 = L3_2.fetchScalar
    L4_2 = "SELECT COUNT(*) FROM users WHERE job=@jobName AND job_grade=@rankGrade"
    L5_2 = {}
    L5_2["@jobName"] = A0_2
    L5_2["@rankGrade"] = A1_2
    function L6_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = L2_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = Framework
    L3_2 = L3_2.getFramework
    L3_2 = L3_2()
    if "QB-core" == L3_2 then
      L3_2 = MySQL
      L3_2 = L3_2.Async
      L3_2 = L3_2.fetchAll
      L4_2 = "SELECT job FROM players"
      L5_2 = {}
      function L6_2(A0_3)
        local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
        L1_3 = 0
        L2_3 = pairs
        L3_3 = A0_3
        L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
        for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
          L8_3 = json
          L8_3 = L8_3.decode
          L9_3 = L7_3.job
          L8_3 = L8_3(L9_3)
          L9_3 = L8_3.name
          L10_3 = A0_2
          if L9_3 == L10_3 then
            L9_3 = L8_3.grade
            L9_3 = L9_3.level
            L10_3 = A1_2
            if L9_3 == L10_3 then
              L1_3 = L1_3 + 1
            end
          end
        end
        L2_3 = L2_2
        L3_3 = L2_3
        L2_3 = L2_3.resolve
        L4_3 = L1_3
        L2_3(L3_3, L4_3)
      end
      L3_2(L4_2, L5_2, L6_2)
    end
  end
  return L2_2
end
function L11_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Utils
  L3_2 = L3_2.isAllowed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT grade, label FROM job_grades WHERE job_name = @jobName"
  L5_2 = {}
  L5_2["@jobName"] = A2_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L1_3 = {}
    L2_3 = pairs
    L3_3 = A0_3
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3)
    for L6_3, L7_3 in L2_3, L3_3, L4_3, L5_3 do
      L8_3 = L7_3.grade
      L9_3 = L7_3.label
      L10_3 = table
      L10_3 = L10_3.insert
      L11_3 = L1_3
      L12_3 = {}
      L13_3 = Citizen
      L13_3 = L13_3.Await
      L14_3 = L10_1
      L15_3 = A2_2
      L16_3 = L8_3
      L14_3, L15_3, L16_3 = L14_3(L15_3, L16_3)
      L13_3 = L13_3(L14_3, L15_3, L16_3)
      L12_3.playersCount = L13_3
      L12_3.label = L9_3
      L12_3.grade = L8_3
      L10_3(L11_3, L12_3)
    end
    L2_3 = A1_2
    L3_3 = L1_3
    L2_3(L3_3)
  end
  L3_2(L4_2, L5_2, L6_2)
end
L12_1 = RegisterServerCallback
L13_1 = Utils
L13_1 = L13_1.eventsPrefix
L14_1 = ":getRanksDistribution"
L13_1 = L13_1 .. L14_1
L14_1 = L11_1
L12_1(L13_1, L14_1)
L12_1 = JobsCreator
function L13_1()
  local L0_2, L1_2, L2_2
  L0_2 = Framework
  L0_2 = L0_2.getFramework
  L0_2 = L0_2()
  if "ESX" == L0_2 then
    L0_2 = TriggerEvent
    L1_2 = "esx:refreshJobs"
    L0_2(L1_2)
  else
    L0_2 = Framework
    L0_2 = L0_2.getFramework
    L0_2 = L0_2()
    if "QB-core" == L0_2 then
      L0_2 = JobsCreator
      L0_2 = L0_2.injectJobsInQBCoreTable
      L0_2()
    end
  end
  L0_2 = SetTimeout
  L1_2 = 1500
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = TriggerEvent
    L1_3 = Utils
    L1_3 = L1_3.eventsPrefix
    L2_3 = ":refreshJobs"
    L1_3 = L1_3 .. L2_3
    L0_3(L1_3)
    L0_3 = TriggerClientEvent
    L1_3 = Utils
    L1_3 = L1_3.eventsPrefix
    L2_3 = ":refreshJobs"
    L1_3 = L1_3 .. L2_3
    L2_3 = -1
    L0_3(L1_3, L2_3)
  end
  L0_2(L1_2, L2_2)
end
L12_1.refreshFrameworkJobs = L13_1
L12_1 = RegisterServerCallback
L13_1 = Utils
L13_1 = L13_1.eventsPrefix
L14_1 = ":createRank"
L13_1 = L13_1 .. L14_1
function L14_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L7_2 = Utils
  L7_2 = L7_2.isAllowed
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if L7_2 then
    L7_2 = JobsCreator
    L7_2 = L7_2.createRank
    L8_2 = A2_2
    L9_2 = A3_2
    L10_2 = A4_2
    L11_2 = A5_2
    L12_2 = A6_2
    L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
    L8_2 = A1_2
    L9_2 = L7_2
    L8_2(L9_2)
  end
end
L12_1(L13_1, L14_1)
function L12_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = promise
  L1_2 = L1_2.new
  L1_2 = L1_2()
  L2_2 = L3_1
  L3_2 = A0_2.rankId
  L2_2 = L2_2(L3_2)
  L3_2 = L4_1
  L4_2 = A0_2.rankId
  L3_2 = L3_2(L4_2)
  L4_2 = A0_2.rankGrade
  if L3_2 ~= L4_2 then
    L4_2 = JobsCreator
    L4_2 = L4_2.Jobs
    L4_2 = L4_2[L2_2]
    L4_2 = L4_2.ranks
    L5_2 = A0_2.rankGrade
    L4_2 = L4_2[L5_2]
    if L4_2 then
      L4_2 = {}
      L4_2.success = false
      L4_2.message = "This grade already exists"
      return L4_2
    end
  end
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.execute
  L5_2 = "UPDATE job_grades SET name=@rankName, grade=@rankGrade, label=@rankLabel, salary=@rankSalary WHERE id=@rankId"
  L6_2 = {}
  L7_2 = A0_2.rankId
  L6_2["@rankId"] = L7_2
  L7_2 = A0_2.rankGrade
  L6_2["@rankGrade"] = L7_2
  L7_2 = A0_2.rankLabel
  L6_2["@rankLabel"] = L7_2
  L7_2 = A0_2.rankSalary
  L6_2["@rankSalary"] = L7_2
  L7_2 = A0_2.rankName
  L6_2["@rankName"] = L7_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 > 0 then
      L1_3 = JobsCreator
      L1_3 = L1_3.Jobs
      L2_3 = L2_2
      L1_3 = L1_3[L2_3]
      L1_3 = L1_3.ranks
      L2_3 = A0_2.rankGrade
      L3_3 = {}
      L4_3 = A0_2.rankName
      L3_3.name = L4_3
      L4_3 = A0_2.rankLabel
      L3_3.label = L4_3
      L4_3 = A0_2.rankSalary
      L3_3.salary = L4_3
      L4_3 = A0_2.rankGrade
      L3_3.grade = L4_3
      L4_3 = A0_2.rankId
      L3_3.id = L4_3
      L1_3[L2_3] = L3_3
      L1_3 = L3_2
      L2_3 = A0_2.rankGrade
      if L1_3 ~= L2_3 then
        L1_3 = JobsCreator
        L1_3 = L1_3.Jobs
        L2_3 = L2_2
        L1_3 = L1_3[L2_3]
        L1_3 = L1_3.ranks
        L2_3 = L3_2
        L1_3[L2_3] = nil
      end
      L1_3 = JobsCreator
      L1_3 = L1_3.refreshFrameworkJobs
      L1_3()
      L1_3 = L1_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = {}
      L3_3.isSuccessful = true
      L3_3.message = "Successful"
      L1_3(L2_3, L3_3)
    else
      L1_3 = L1_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = {}
      L3_3.isSuccessful = false
      L3_3.message = "Couldn't update the rank (check server console)"
      L1_3(L2_3, L3_3)
    end
  end
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Citizen
  L4_2 = L4_2.Await
  L5_2 = L1_2
  return L4_2(L5_2)
end
L13_1 = RegisterServerCallback
L14_1 = Utils
L14_1 = L14_1.eventsPrefix
L15_1 = ":updateRank"
L14_1 = L14_1 .. L15_1
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = Utils
  L3_2 = L3_2.isAllowed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L12_1
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    L4_2 = A1_2
    L5_2 = L3_2
    L4_2(L5_2)
  end
end
L13_1(L14_1, L15_1)
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = promise
  L1_2 = L1_2.new
  L1_2 = L1_2()
  L2_2 = L3_1
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L4_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.execute
  L5_2 = "DELETE FROM `job_grades` WHERE id=@rankId"
  L6_2 = {}
  L6_2["@rankId"] = A0_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    if A0_3 > 0 then
      L2_3 = A0_2
      L1_3 = L2_1
      L1_3[L2_3] = nil
      L1_3 = JobsCreator
      L1_3 = L1_3.Jobs
      L2_3 = L2_2
      L1_3 = L1_3[L2_3]
      L1_3 = L1_3.ranks
      L2_3 = L3_2
      L1_3[L2_3] = nil
      L1_3 = JobsCreator
      L1_3 = L1_3.refreshFrameworkJobs
      L1_3()
      L1_3 = Framework
      L1_3 = L1_3.getFramework
      L1_3 = L1_3()
      if "ESX" == L1_3 then
        L1_3 = MySQL
        L1_3 = L1_3.Async
        L1_3 = L1_3.execute
        L2_3 = "UPDATE `users` SET job_grade=0 WHERE job=@jobName AND job_grade=@jobGrade"
        L3_3 = {}
        L4_3 = L2_2
        L3_3["@jobName"] = L4_3
        L4_3 = L3_2
        L3_3["@jobGrade"] = L4_3
        function L4_3(A0_4)
          local L1_4, L2_4, L3_4
          L1_4 = L1_2
          L2_4 = L1_4
          L1_4 = L1_4.resolve
          L3_4 = {}
          L3_4.isSuccessful = true
          L3_4.message = "Successful"
          L1_4(L2_4, L3_4)
        end
        L1_3(L2_3, L3_3, L4_3)
      else
        L1_3 = L1_2
        L2_3 = L1_3
        L1_3 = L1_3.resolve
        L3_3 = {}
        L3_3.isSuccessful = true
        L3_3.message = "Successful"
        L1_3(L2_3, L3_3)
      end
    else
      L1_3 = L1_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = {}
      L3_3.isSuccessful = false
      L4_3 = "Couldn't delete rank id: "
      L5_3 = A0_2
      L6_3 = " (check server console)"
      L4_3 = L4_3 .. L5_3 .. L6_3
      L3_3.message = L4_3
      L1_3(L2_3, L3_3)
    end
  end
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = Citizen
  L4_2 = L4_2.Await
  L5_2 = L1_2
  return L4_2(L5_2)
end
L14_1 = RegisterServerCallback
L15_1 = Utils
L15_1 = L15_1.eventsPrefix
L16_1 = ":deleteRank"
L15_1 = L15_1 .. L16_1
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = Utils
  L3_2 = L3_2.isAllowed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L13_1
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    L4_2 = A1_2
    L5_2 = L3_2
    L4_2(L5_2)
  end
end
L14_1(L15_1, L16_1)
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM job_grades WHERE job_name=@jobName"
  L3_2 = {}
  L3_2["@jobName"] = A0_2
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if A0_3 > 0 then
      L1_3 = pairs
      L2_3 = L2_1
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = A0_2
        if L7_3 == L6_3 then
          L7_3 = L2_1
          L7_3[L5_3] = nil
        end
      end
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
deleteGradesOfJob = L14_1
function L14_1(A0_2)
  local L1_2
  L1_2 = JobsCreator
  L1_2 = L1_2.Jobs
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    L1_2 = {}
    return L1_2
  end
  L1_2 = JobsCreator
  L1_2 = L1_2.Jobs
  L1_2 = L1_2[A0_2]
  L1_2 = L1_2.ranks
  return L1_2
end
L15_1 = RegisterServerCallback
L16_1 = Utils
L16_1 = L16_1.eventsPrefix
L17_1 = ":retrieveJobRanks"
L16_1 = L16_1 .. L17_1
function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A2_2 then
    L3_2 = L14_1
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    L4_2 = A1_2
    L5_2 = L3_2
    L4_2(L5_2)
  else
    L3_2 = A1_2
    L4_2 = false
    L3_2(L4_2)
  end
end
L15_1(L16_1, L17_1)
L15_1 = RegisterServerCallback
L16_1 = Utils
L16_1 = L16_1.eventsPrefix
L17_1 = ":getJobsData"
L16_1 = L16_1 .. L17_1
function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = Utils
  L3_2 = L3_2.isAllowed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  while true do
    L3_2 = hasFirstLoadFinished
    if L3_2 then
      break
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 200
    L3_2(L4_2)
  end
  L3_2 = A1_2
  L4_2 = JobsCreator
  L4_2 = L4_2.Jobs
  L3_2(L4_2)
end
L15_1(L16_1, L17_1)
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = pairs
  L1_2 = JobsCreator
  L1_2 = L1_2.Jobs
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = createSociety
    L7_2 = L4_2
    L8_2 = L5_2.label
    L6_2(L7_2, L8_2)
  end
end
registerSocieties = L15_1
function L15_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.fetchScalar
  L4_2 = "SELECT 1 FROM `addon_account` WHERE BINARY(name)=@societyName"
  L5_2 = {}
  L5_2["@societyName"] = A2_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      return
    end
    L1_3 = MySQL
    L1_3 = L1_3.Async
    L1_3 = L1_3.execute
    L2_3 = "INSERT INTO `addon_account`(name, label, shared) VALUES (@societyName, @jobLabel, 1) ON DUPLICATE KEY UPDATE name=@societyName"
    L3_3 = {}
    L4_3 = A2_2
    L3_3["@societyName"] = L4_3
    L4_3 = A1_2
    L3_3["@jobLabel"] = L4_3
    function L4_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      if A0_4 > 0 then
        L1_4 = "Created ^5%s^7 in ^8'addon_account'^7"
        L2_4 = print
        L3_4 = format
        L4_4 = L1_4
        L5_4 = A0_2
        L3_4, L4_4, L5_4 = L3_4(L4_4, L5_4)
        L2_4(L3_4, L4_4, L5_4)
        L2_4 = MySQL
        L2_4 = L2_4.Async
        L2_4 = L2_4.fetchScalar
        L3_4 = "SELECT 1 FROM addon_account_data WHERE account_name=@societyName"
        L4_4 = {}
        L5_4 = A2_2
        L4_4["@societyName"] = L5_4
        function L5_4(A0_5)
          local L1_5, L2_5, L3_5, L4_5
          if A0_5 then
            L1_5 = TriggerEvent
            L2_5 = "esx_addonaccount:refreshAccounts"
            L1_5(L2_5)
            return
          end
          L1_5 = MySQL
          L1_5 = L1_5.Async
          L1_5 = L1_5.execute
          L2_5 = "INSERT INTO `addon_account_data`(account_name, money, owner) VALUES (@societyName, 0, NULL) ON DUPLICATE KEY UPDATE account_name=@societyName"
          L3_5 = {}
          L4_5 = A2_2
          L3_5["@societyName"] = L4_5
          function L4_5(A0_6)
            local L1_6, L2_6, L3_6, L4_6, L5_6
            if A0_6 > 0 then
              L1_6 = "Created ^5%s^7 in ^8'addon_account_data'^7"
              L2_6 = print
              L3_6 = format
              L4_6 = L1_6
              L5_6 = A0_2
              L3_6, L4_6, L5_6 = L3_6(L4_6, L5_6)
              L2_6(L3_6, L4_6, L5_6)
            end
            L1_6 = TriggerEvent
            L2_6 = "esx_addonaccount:refreshAccounts"
            L1_6(L2_6)
          end
          L1_5(L2_5, L3_5, L4_5)
        end
        L2_4(L3_4, L4_4, L5_4)
      end
    end
    L1_3(L2_3, L3_3, L4_3)
  end
  L3_2(L4_2, L5_2, L6_2)
end
function L16_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.fetchScalar
  L4_2 = "SELECT 1 FROM datastore WHERE BINARY(name)=@societyName"
  L5_2 = {}
  L5_2["@societyName"] = A2_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      return
    end
    L1_3 = MySQL
    L1_3 = L1_3.Async
    L1_3 = L1_3.execute
    L2_3 = "INSERT INTO `datastore`(name, label, shared) VALUES (@societyName, @jobLabel, 1) ON DUPLICATE KEY UPDATE name=@societyName"
    L3_3 = {}
    L4_3 = A2_2
    L3_3["@societyName"] = L4_3
    L4_3 = A1_2
    L3_3["@jobLabel"] = L4_3
    function L4_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      if A0_4 > 0 then
        L1_4 = "Created ^5%s^7 in ^3'datastore'^7"
        L2_4 = print
        L3_4 = format
        L4_4 = L1_4
        L5_4 = A0_2
        L3_4, L4_4, L5_4 = L3_4(L4_4, L5_4)
        L2_4(L3_4, L4_4, L5_4)
        L2_4 = MySQL
        L2_4 = L2_4.Async
        L2_4 = L2_4.fetchScalar
        L3_4 = "SELECT 1 FROM datastore_data WHERE BINARY(name)=@societyName"
        L4_4 = {}
        L5_4 = A2_2
        L4_4["@societyName"] = L5_4
        function L5_4(A0_5)
          local L1_5, L2_5, L3_5, L4_5
          if A0_5 then
            return
          end
          L1_5 = MySQL
          L1_5 = L1_5.Async
          L1_5 = L1_5.execute
          L2_5 = "INSERT INTO `datastore_data`(name, owner, data) VALUES (@societyName, NULL, \"{}\") ON DUPLICATE KEY UPDATE name=@societyName"
          L3_5 = {}
          L4_5 = A2_2
          L3_5["@societyName"] = L4_5
          function L4_5(A0_6)
            local L1_6, L2_6, L3_6, L4_6, L5_6
            if A0_6 > 0 then
              L1_6 = "Created ^5%s^7 in ^3'datastore_data'^7"
              L2_6 = print
              L3_6 = format
              L4_6 = L1_6
              L5_6 = A0_2
              L3_6, L4_6, L5_6 = L3_6(L4_6, L5_6)
              L2_6(L3_6, L4_6, L5_6)
            end
          end
          L1_5(L2_5, L3_5, L4_5)
        end
        L2_4(L3_4, L4_4, L5_4)
      end
    end
    L1_3(L2_3, L3_3, L4_3)
  end
  L3_2(L4_2, L5_2, L6_2)
end
function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.fetchScalar
  L4_2 = "SELECT 1 FROM addon_inventory WHERE BINARY(name)=@societyName"
  L5_2 = {}
  L5_2["@societyName"] = A2_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 then
      return
    end
    L1_3 = MySQL
    L1_3 = L1_3.Async
    L1_3 = L1_3.execute
    L2_3 = "INSERT INTO `addon_inventory`(name, label, shared) VALUES (@societyName, @jobLabel, 1) ON DUPLICATE KEY UPDATE name=@societyName"
    L3_3 = {}
    L4_3 = A2_2
    L3_3["@societyName"] = L4_3
    L4_3 = A1_2
    L3_3["@jobLabel"] = L4_3
    function L4_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4
      if A0_4 > 0 then
        L1_4 = "Created ^5%s^7 in ^2'addon_inventory'^7"
        L2_4 = print
        L3_4 = format
        L4_4 = L1_4
        L5_4 = A0_2
        L3_4, L4_4, L5_4 = L3_4(L4_4, L5_4)
        L2_4(L3_4, L4_4, L5_4)
      end
    end
    L1_3(L2_3, L3_3, L4_3)
  end
  L3_2(L4_2, L5_2, L6_2)
end
function L18_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2
  L4_2 = Citizen
  L4_2 = L4_2.CreateThread
  function L5_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3
    L0_3 = Utils
    L0_3 = L0_3.doesExportExistAnywhere
    L1_3 = "GetSociety"
    L0_3 = L0_3(L1_3)
    if not L0_3 then
      return
    end
    L0_3 = Utils
    L0_3 = L0_3.callScriptExport
    L1_3 = "esx_society"
    L2_3 = "GetSociety"
    L3_3 = A2_2
    L0_3 = L0_3(L1_3, L2_3, L3_3)
    if not L0_3 then
      L0_3 = Utils
      L0_3 = L0_3.callScriptExport
      L1_3 = "esx_society"
      L2_3 = "GetSociety"
      L3_3 = A0_2
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      if not L0_3 then
        L0_3 = nil
      end
    end
    if L0_3 then
      return
    end
    L1_3 = A3_2
    if not L1_3 then
      L1_3 = 1
    end
    A3_2 = L1_3
    L1_3 = MySQL
    L1_3 = L1_3.Sync
    L1_3 = L1_3.fetchScalar
    L2_3 = "SELECT shared FROM addon_account WHERE name=@societyName"
    L3_3 = {}
    L4_3 = A2_2
    L3_3["@societyName"] = L4_3
    L1_3 = L1_3(L2_3, L3_3)
    if 1 ~= L1_3 then
      return
    end
    L2_3 = TriggerEvent
    L3_3 = EXTERNAL_EVENTS_NAMES
    L3_3 = L3_3["esx_society:registerSociety"]
    L4_3 = A0_2
    L5_3 = A1_2
    L6_3 = A2_2
    L7_3 = A2_2
    L8_3 = A2_2
    L9_3 = {}
    L9_3.type = "public"
    L2_3(L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3)
    L2_3 = Citizen
    L2_3 = L2_3.Wait
    L3_3 = 2000
    L2_3(L3_3)
    L2_3 = TriggerEvent
    L3_3 = EXTERNAL_EVENTS_NAMES
    L3_3 = L3_3["esx_society:getSociety"]
    L4_3 = A0_2
    function L5_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4
      if not A0_4 then
        return
      end
      L1_4 = TriggerEvent
      L2_4 = EXTERNAL_EVENTS_NAMES
      L2_4 = L2_4["esx_addonaccount:getSharedAccount"]
      L3_4 = A2_2
      function L4_4(A0_5)
        local L1_5, L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5, L9_5
        if A0_5 then
          return
        end
        L1_5 = MySQL
        L1_5 = L1_5.Sync
        L1_5 = L1_5.fetchAll
        L2_5 = "SELECT * FROM addon_account WHERE name=@societyName"
        L3_5 = {}
        L4_5 = A2_2
        L3_5["@societyName"] = L4_5
        L1_5 = L1_5(L2_5, L3_5)
        L2_5 = L1_5[1]
        if L2_5 then
          L2_5 = L1_5[1]
          L2_5 = L2_5.name
          L3_5 = A2_2
          if L2_5 == L3_5 then
            L2_5 = L1_5[1]
            L2_5 = L2_5.shared
          end
          if 0 == L2_5 then
            L2_5 = print
            L2_5()
            L2_5 = "^1 Found ^5%s^1 in database table 'addon_account' but couldn't register it^7"
            L3_5 = print
            L4_5 = format
            L5_5 = L2_5
            L6_5 = A0_2
            L4_5, L5_5, L6_5, L7_5, L8_5, L9_5 = L4_5(L5_5, L6_5)
            L3_5(L4_5, L5_5, L6_5, L7_5, L8_5, L9_5)
            L3_5 = "^1 Database values: name = %s, label = %s, shared = %d^7"
            L4_5 = print
            L5_5 = format
            L6_5 = L3_5
            L7_5 = L1_5[1]
            L7_5 = L7_5.name
            L8_5 = L1_5[1]
            L8_5 = L8_5.label
            L9_5 = L1_5[1]
            L9_5 = L9_5.shared
            L5_5, L6_5, L7_5, L8_5, L9_5 = L5_5(L6_5, L7_5, L8_5, L9_5)
            L4_5(L5_5, L6_5, L7_5, L8_5, L9_5)
          end
        else
          L2_5 = "^1 Couldn't find ^5%s^1 in database table 'addon_account'^7"
          L3_5 = print
          L4_5 = format
          L5_5 = L2_5
          L6_5 = A2_2
          L4_5, L5_5, L6_5, L7_5, L8_5, L9_5 = L4_5(L5_5, L6_5)
          L3_5(L4_5, L5_5, L6_5, L7_5, L8_5, L9_5)
        end
        L2_5 = A3_2
        if L2_5 < 3 then
          L2_5 = Citizen
          L2_5 = L2_5.Wait
          L3_5 = 2000
          L2_5(L3_5)
          L2_5 = L18_1
          L3_5 = A0_2
          L4_5 = A1_2
          L5_5 = A2_2
          L6_5 = A3_2
          L6_5 = L6_5 + 1
          L2_5(L3_5, L4_5, L5_5, L6_5)
        end
      end
      L1_4(L2_4, L3_4, L4_4)
      L1_4 = TriggerEvent
      L2_4 = EXTERNAL_EVENTS_NAMES
      L2_4 = L2_4["esx_datastore:getSharedDataStore"]
      L3_4 = A2_2
      function L4_4(A0_5)
        local L1_5, L2_5, L3_5, L4_5, L5_5, L6_5, L7_5, L8_5, L9_5
        if A0_5 then
          return
        end
        L1_5 = MySQL
        L1_5 = L1_5.Sync
        L1_5 = L1_5.fetchAll
        L2_5 = "SELECT * FROM datastore WHERE name=@societyName"
        L3_5 = {}
        L4_5 = A2_2
        L3_5["@societyName"] = L4_5
        L1_5 = L1_5(L2_5, L3_5)
        L2_5 = L1_5[1]
        if L2_5 then
          L2_5 = L1_5[1]
          L2_5 = L2_5.name
          L3_5 = A2_2
          if L2_5 == L3_5 then
            L2_5 = L1_5[1]
            L2_5 = L2_5.shared
          end
          if 0 == L2_5 then
            L2_5 = print
            L2_5()
            L2_5 = "^1 Found ^5%s^1 in database table 'datastore' but couldn't register it^7"
            L3_5 = print
            L4_5 = format
            L5_5 = L2_5
            L6_5 = A0_2
            L4_5, L5_5, L6_5, L7_5, L8_5, L9_5 = L4_5(L5_5, L6_5)
            L3_5(L4_5, L5_5, L6_5, L7_5, L8_5, L9_5)
            L3_5 = "^1 Database values: name = %s, label = %s, shared = %d^7"
            L4_5 = print
            L5_5 = format
            L6_5 = L3_5
            L7_5 = L1_5[1]
            L7_5 = L7_5.name
            L8_5 = L1_5[1]
            L8_5 = L8_5.label
            L9_5 = L1_5[1]
            L9_5 = L9_5.shared
            L5_5, L6_5, L7_5, L8_5, L9_5 = L5_5(L6_5, L7_5, L8_5, L9_5)
            L4_5(L5_5, L6_5, L7_5, L8_5, L9_5)
          end
        else
          L2_5 = "^1 Couldn't find ^5%s^1 in database table 'datastore'^7"
          L3_5 = print
          L4_5 = format
          L5_5 = L2_5
          L6_5 = A2_2
          L4_5, L5_5, L6_5, L7_5, L8_5, L9_5 = L4_5(L5_5, L6_5)
          L3_5(L4_5, L5_5, L6_5, L7_5, L8_5, L9_5)
        end
        L2_5 = A3_2
        if L2_5 < 3 then
          L2_5 = Citizen
          L2_5 = L2_5.Wait
          L3_5 = 2000
          L2_5(L3_5)
          L2_5 = L18_1
          L3_5 = A0_2
          L4_5 = A1_2
          L5_5 = A2_2
          L6_5 = A3_2
          L6_5 = L6_5 + 1
          L2_5(L3_5, L4_5, L5_5, L6_5)
        end
      end
      L1_4(L2_4, L3_4, L4_4)
    end
    L2_3(L3_3, L4_3, L5_3)
  end
  L4_2(L5_2)
end
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Framework
  L2_2 = L2_2.getFramework
  L2_2 = L2_2()
  if "ESX" ~= L2_2 then
    return
  end
  L2_2 = "society_"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L3_2 = L15_1
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L17_1
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L16_1
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = L18_1
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
createSociety = L19_1
L19_1 = JobsCreator
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = 0
  while true do
    L2_2 = JobsCreator
    L2_2 = L2_2.Jobs
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2.ranks
    L2_2 = L2_2[L1_2]
    if L2_2 then
      break
    end
    L1_2 = L1_2 + 1
    if L1_2 > 10 then
      L2_2 = print
      L3_2 = "Couldn't find the lowest grade of "
      L4_2 = A0_2
      L3_2 = L3_2 .. L4_2
      L2_2(L3_2)
      L2_2 = false
      return L2_2
    end
  end
  return L1_2
end
L19_1.findLowestGrade = L20_1
L19_1 = JobsCreator
function L20_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = JobsCreator
  L1_2 = L1_2.Jobs
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return A0_2
  end
  L1_2 = ""
  L2_2 = 2
  repeat
    L3_2 = A0_2
    L4_2 = "_"
    L5_2 = tostring
    L6_2 = L2_2
    L5_2 = L5_2(L6_2)
    L3_2 = L3_2 .. L4_2 .. L5_2
    L1_2 = L3_2
    L2_2 = L2_2 + 1
    L3_2 = JobsCreator
    L3_2 = L3_2.Jobs
    L3_2 = L3_2[L1_2]
  until not L3_2
  return L1_2
end
L19_1.fixJobNameWhenNeeded = L20_1
L19_1 = JobsCreator
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = json
  L2_2 = L2_2.encode
  L3_2 = {}
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.execute
  L4_2 = "INSERT INTO jobs(name, label, options) VALUES (@jobName, @jobLabel, @options)"
  L5_2 = {}
  L5_2["@jobName"] = A0_2
  L5_2["@jobLabel"] = A1_2
  L5_2["@options"] = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 or 0 == L3_2 then
    L4_2 = {}
    L4_2.isSuccessful = false
    L4_2.message = "Couldn't create the job (check server console)"
    return L4_2
  end
  L4_2 = createSociety
  L5_2 = A0_2
  L6_2 = A1_2
  L4_2(L5_2, L6_2)
  L4_2 = JobsCreator
  L4_2 = L4_2.Jobs
  L5_2 = {}
  L5_2.name = A0_2
  L5_2.label = A1_2
  L6_2 = {}
  L5_2.actions = L6_2
  L6_2 = {}
  L5_2.ranks = L6_2
  L4_2[A0_2] = L5_2
  L4_2 = JobsCreator
  L4_2 = L4_2.refreshFrameworkJobs
  L4_2()
  L4_2 = JobsCreator
  L4_2 = L4_2.preloadMarkersForJobName
  L5_2 = A0_2
  L4_2(L5_2)
  L4_2 = {}
  L4_2.isSuccessful = true
  L4_2.message = "Successful"
  return L4_2
end
L19_1.createJob = L20_1
L19_1 = RegisterServerCallback
L20_1 = Utils
L20_1 = L20_1.eventsPrefix
L21_1 = ":createNewJob"
L20_1 = L20_1 .. L21_1
function L21_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = Utils
  L4_2 = L4_2.isAllowed
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = JobsCreator
    L4_2 = L4_2.createJob
    L5_2 = A2_2
    L6_2 = A3_2
    L4_2 = L4_2(L5_2, L6_2)
    L5_2 = A1_2
    L6_2 = L4_2
    L5_2(L6_2)
  end
end
L19_1(L20_1, L21_1)
L19_1 = JobsCreator
function L20_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2
  L5_2 = JobsCreator
  L5_2 = L5_2.Jobs
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.ranks
  L5_2 = L5_2[A3_2]
  if L5_2 then
    L5_2 = {}
    L5_2.isSuccessful = false
    L5_2.message = "Rank grade already exists"
    return L5_2
  end
  L5_2 = [[
        INSERT INTO job_grades(job_name, name, label, grade, salary, skin_male, skin_female) 
        VALUES (@jobName, @rankName, @rankLabel, @rankGrade, @rankSalary, "{}", "{}");
    ]]
  L6_2 = Framework
  L6_2 = L6_2.getFramework
  L6_2 = L6_2()
  if "QB-core" == L6_2 then
    L5_2 = [[
            INSERT INTO job_grades(job_name, name, label, grade, salary) 
            VALUES (@jobName, @rankName, @rankLabel, @rankGrade, @rankSalary);
        ]]
  end
  L6_2 = MySQL
  L6_2 = L6_2.Sync
  L6_2 = L6_2.insert
  L7_2 = L5_2
  L8_2 = {}
  L8_2["@jobName"] = A0_2
  L8_2["@rankName"] = A1_2
  L8_2["@rankLabel"] = A2_2
  L8_2["@rankGrade"] = A3_2
  L8_2["@rankSalary"] = A4_2
  L6_2 = L6_2(L7_2, L8_2)
  if not L6_2 or 0 == L6_2 then
    L7_2 = {}
    L7_2.isSuccessful = false
    L7_2.message = "Couldn't create rank (check server console)"
    return L7_2
  end
  L7_2 = L2_1
  L7_2[L6_2] = A0_2
  L7_2 = JobsCreator
  L7_2 = L7_2.Jobs
  L7_2 = L7_2[A0_2]
  L7_2 = L7_2.ranks
  L8_2 = {}
  L8_2.grade = A3_2
  L8_2.name = A1_2
  L8_2.label = A2_2
  L8_2.salary = A4_2
  L8_2.id = L6_2
  L7_2[A3_2] = L8_2
  L7_2 = JobsCreator
  L7_2 = L7_2.refreshFrameworkJobs
  L7_2()
  L7_2 = JobsCreator
  L7_2 = L7_2.preloadMarkersForJobName
  L8_2 = A0_2
  L7_2(L8_2)
  L7_2 = {}
  L7_2.isSuccessful = true
  L7_2.message = "Successful"
  return L7_2
end
L19_1.createRank = L20_1
function L19_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = MySQL
  L2_2 = L2_2.Async
  L2_2 = L2_2.execute
  L3_2 = "UPDATE job_grades SET job_name=@newJobName WHERE job_name=@oldJobName"
  L4_2 = {}
  L4_2["@oldJobName"] = A0_2
  L4_2["@newJobName"] = A1_2
  L2_2(L3_2, L4_2)
end
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = MySQL
  L2_2 = L2_2.Async
  L2_2 = L2_2.execute
  L3_2 = "UPDATE jobs_data SET job_name=@newJobName WHERE job_name=@oldJobName"
  L4_2 = {}
  L4_2["@oldJobName"] = A0_2
  L4_2["@newJobName"] = A1_2
  L2_2(L3_2, L4_2)
end
function L21_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Framework
  L2_2 = L2_2.getFramework
  L2_2 = L2_2()
  if "ESX" == L2_2 then
    L2_2 = MySQL
    L2_2 = L2_2.Async
    L2_2 = L2_2.execute
    L3_2 = "UPDATE users SET job=@newJobName WHERE job=@oldJobName"
    L4_2 = {}
    L4_2["@oldJobName"] = A0_2
    L4_2["@newJobName"] = A1_2
    L2_2(L3_2, L4_2)
  end
end
function L22_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = "society_"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L3_2 = "society_"
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.execute
  L5_2 = "UPDATE addon_account SET name=@newSocietyName WHERE name=@oldSocietyName"
  L6_2 = {}
  L6_2["@oldSocietyName"] = L2_2
  L6_2["@newSocietyName"] = L3_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 > 0 then
      L1_3 = MySQL
      L1_3 = L1_3.Async
      L1_3 = L1_3.execute
      L2_3 = "UPDATE addon_account_data SET account_name=@newSocietyName WHERE account_name=@oldSocietyName"
      L3_3 = {}
      L4_3 = L2_2
      L3_3["@oldSocietyName"] = L4_3
      L4_3 = L3_2
      L3_3["@newSocietyName"] = L4_3
      L1_3(L2_3, L3_3)
    end
  end
  L4_2(L5_2, L6_2, L7_2)
end
function L23_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = "society_"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L3_2 = "society_"
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.execute
  L5_2 = "UPDATE addon_inventory SET name=@newSocietyName WHERE name=@oldSocietyName"
  L6_2 = {}
  L6_2["@oldSocietyName"] = L2_2
  L6_2["@newSocietyName"] = L3_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 > 0 then
      L1_3 = MySQL
      L1_3 = L1_3.Async
      L1_3 = L1_3.execute
      L2_3 = "UPDATE addon_inventory_items SET inventory_name=@newSocietyName WHERE inventory_name=@oldSocietyName"
      L3_3 = {}
      L4_3 = L2_2
      L3_3["@oldSocietyName"] = L4_3
      L4_3 = L3_2
      L3_3["@newSocietyName"] = L4_3
      L1_3(L2_3, L3_3)
    end
  end
  L4_2(L5_2, L6_2, L7_2)
end
function L24_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = "society_"
  L3_2 = A0_2
  L2_2 = L2_2 .. L3_2
  L3_2 = "society_"
  L4_2 = A1_2
  L3_2 = L3_2 .. L4_2
  L4_2 = MySQL
  L4_2 = L4_2.Async
  L4_2 = L4_2.execute
  L5_2 = "UPDATE datastore SET name=@newSocietyName WHERE name=@oldSocietyName"
  L6_2 = {}
  L6_2["@oldSocietyName"] = L2_2
  L6_2["@newSocietyName"] = L3_2
  function L7_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3
    if A0_3 > 0 then
      L1_3 = MySQL
      L1_3 = L1_3.Async
      L1_3 = L1_3.execute
      L2_3 = "UPDATE datastore_data SET name=@newSocietyName WHERE name=@oldSocietyName"
      L3_3 = {}
      L4_3 = L2_2
      L3_3["@oldSocietyName"] = L4_3
      L4_3 = L3_2
      L3_3["@newSocietyName"] = L4_3
      L1_3(L2_3, L3_3)
    end
  end
  L4_2(L5_2, L6_2, L7_2)
end
function L25_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L19_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = L20_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = L21_1
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = Framework
  L2_2 = L2_2.getFramework
  L2_2 = L2_2()
  if "ESX" == L2_2 then
    L2_2 = L22_1
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = L23_1
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
    L2_2 = L24_1
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L26_1 = JobsCreator
function L27_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  if not (A0_2 and A1_2) or not A2_2 then
    L4_2 = {}
    L4_2.isSuccessful = false
    L4_2.message = "Couldn't update the job, argument missing"
    return L4_2
  end
  L4_2 = json
  L4_2 = L4_2.encode
  L5_2 = A3_2
  L4_2 = L4_2(L5_2)
  L5_2 = pairs
  L6_2 = GetPlayers
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2 = L6_2()
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = tonumber
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    L12_2 = Framework
    L12_2 = L12_2.getPlayerJobName
    L13_2 = L11_2
    L12_2 = L12_2(L13_2)
    if L12_2 == A0_2 then
      L13_2 = TriggerClientEvent
      L14_2 = Utils
      L14_2 = L14_2.eventsPrefix
      L15_2 = ":checkAllowedActions"
      L14_2 = L14_2 .. L15_2
      L15_2 = L11_2
      L13_2(L14_2, L15_2)
    end
  end
  L5_2 = MySQL
  L5_2 = L5_2.Sync
  L5_2 = L5_2.execute
  L6_2 = [[
            UPDATE `jobs` 
            SET `label`=@newJobLabel,
            `name`=@newJobName,
            `options`=@optionsJson

            WHERE `name`=@oldJobName
        ]]
  L7_2 = {}
  L7_2["@newJobName"] = A1_2
  L7_2["@newJobLabel"] = A2_2
  L7_2["@optionsJson"] = L4_2
  L7_2["@oldJobName"] = A0_2
  L5_2 = L5_2(L6_2, L7_2)
  if 0 == L5_2 then
    L6_2 = {}
    L6_2.isSuccessful = false
    L6_2.message = "Couldn't update the job (check server console)"
    return L6_2
  end
  L6_2 = JobsCreator
  L6_2 = L6_2.Jobs
  L7_2 = JobsCreator
  L7_2 = L7_2.Jobs
  L7_2 = L7_2[A0_2]
  L6_2[A1_2] = L7_2
  L6_2 = JobsCreator
  L6_2 = L6_2.Jobs
  L6_2 = L6_2[A1_2]
  L6_2.actions = A3_2
  L6_2 = JobsCreator
  L6_2 = L6_2.Jobs
  L6_2 = L6_2[A1_2]
  L6_2.name = A1_2
  L6_2 = JobsCreator
  L6_2 = L6_2.Jobs
  L6_2 = L6_2[A1_2]
  L6_2.label = A2_2
  if A0_2 ~= A1_2 then
    L6_2 = L25_1
    L7_2 = A0_2
    L8_2 = A1_2
    L6_2(L7_2, L8_2)
    L6_2 = JobsCreator
    L6_2 = L6_2.Jobs
    L6_2[A0_2] = nil
  end
  L6_2 = JobsCreator
  L6_2 = L6_2.refreshFrameworkJobs
  L6_2()
  L6_2 = {}
  L6_2.isSuccessful = true
  L6_2.message = "Successful"
  return L6_2
end
L26_1.updateJob = L27_1
L26_1 = RegisterServerCallback
L27_1 = Utils
L27_1 = L27_1.eventsPrefix
L28_1 = ":updateJob"
L27_1 = L27_1 .. L28_1
function L28_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2
  L6_2 = Utils
  L6_2 = L6_2.isAllowed
  L7_2 = A0_2
  L6_2 = L6_2(L7_2)
  if not L6_2 then
    return
  end
  L6_2 = JobsCreator
  L6_2 = L6_2.updateJob
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A4_2
  L10_2 = A5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
  L7_2 = A1_2
  L8_2 = L6_2
  L7_2(L8_2)
end
L26_1(L27_1, L28_1)
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Framework
  L1_2 = L1_2.getFramework
  L1_2 = L1_2()
  if "ESX" == L1_2 then
    L1_2 = MySQL
    L1_2 = L1_2.Async
    L1_2 = L1_2.execute
    L2_2 = "UPDATE users SET job=@unemployedJob, job_grade=@unemployedGrade WHERE job=@jobName"
    L3_2 = {}
    L3_2["@jobName"] = A0_2
    L4_2 = config
    L4_2 = L4_2.unemployedJob
    L3_2["@unemployedJob"] = L4_2
    L4_2 = config
    L4_2 = L4_2.unemployedGrade
    L3_2["@unemployedGrade"] = L4_2
    L4_2 = nil
    L1_2(L2_2, L3_2, L4_2)
  end
end
removeJobFromPlayers = L26_1
function L26_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = promise
  L1_2 = L1_2.new
  L1_2 = L1_2()
  L2_2 = MySQL
  L2_2 = L2_2.Async
  L2_2 = L2_2.execute
  L3_2 = "DELETE FROM jobs WHERE name=@jobName"
  L4_2 = {}
  L4_2["@jobName"] = A0_2
  function L5_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 > 0 then
      L1_3 = JobsCreator
      L1_3 = L1_3.Jobs
      L2_3 = A0_2
      L1_3[L2_3] = nil
      L1_3 = removeJobFromPlayers
      L2_3 = A0_2
      L1_3(L2_3)
      L1_3 = deleteGradesOfJob
      L2_3 = A0_2
      L1_3(L2_3)
      L1_3 = deleteJobMarkers
      L2_3 = A0_2
      L1_3(L2_3)
      L1_3 = JobsCreator
      L1_3 = L1_3.refreshFrameworkJobs
      L1_3()
      L1_3 = L1_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = {}
      L3_3.isSuccessful = true
      L3_3.message = "Successful"
      L1_3(L2_3, L3_3)
    else
      L1_3 = L1_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = {}
      L3_3.isSuccessful = false
      L3_3.message = "Couldn't delete this job"
      L1_3(L2_3, L3_3)
    end
  end
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = Citizen
  L2_2 = L2_2.Await
  L3_2 = L1_2
  return L2_2(L3_2)
end
L27_1 = RegisterServerCallback
L28_1 = Utils
L28_1 = L28_1.eventsPrefix
L29_1 = ":deleteJob"
L28_1 = L28_1 .. L29_1
function L29_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = Utils
  L3_2 = L3_2.isAllowed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L26_1
    L4_2 = A2_2
    L3_2 = L3_2(L4_2)
    L4_2 = A1_2
    L5_2 = L3_2
    L4_2(L5_2)
  end
end
L27_1(L28_1, L29_1)
L27_1 = RegisterServerCallback
L28_1 = Utils
L28_1 = L28_1.eventsPrefix
L29_1 = ":getJobInfo"
L28_1 = L28_1 .. L29_1
function L29_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = Framework
  L2_2 = L2_2.getPlayerJobName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Framework
  L3_2 = L3_2.getJobLabel
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
end
L27_1(L28_1, L29_1)
L27_1 = JobsCreator
function L28_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L5_2 = stripCoords
  L6_2 = A3_2
  L5_2 = L5_2(L6_2)
  L6_2 = "minimumGrade"
  L7_2 = MySQL
  L7_2 = L7_2.Sync
  L7_2 = L7_2.insert
  L8_2 = "INSERT INTO jobs_data(job_name, type, coords, min_grade, label, grades_type) VALUES (@jobName, @type, @coords, @minGrade, @label, \"minimumGrade\");"
  L9_2 = {}
  L9_2["@jobName"] = A0_2
  L9_2["@type"] = A2_2
  L10_2 = json
  L10_2 = L10_2.encode
  L11_2 = L5_2
  L10_2 = L10_2(L11_2)
  L9_2["@coords"] = L10_2
  L9_2["@gradesType"] = L6_2
  L9_2["@minGrade"] = A4_2
  L9_2["@label"] = A1_2
  L7_2 = L7_2(L8_2, L9_2)
  if not L7_2 or 0 == L7_2 then
    L8_2 = {}
    L8_2.isSuccessful = false
    L8_2.message = "Couldn't create the marker (check server console)"
    return L8_2
  end
  L8_2 = L0_1
  L9_2 = L0_1
  L9_2 = L9_2[A0_2]
  if not L9_2 then
    L9_2 = {}
  end
  L8_2[A0_2] = L9_2
  L8_2 = L0_1
  L8_2 = L8_2[A0_2]
  L8_2[L7_2] = true
  L8_2 = JobsCreator
  L8_2 = L8_2.Markers
  L9_2 = {}
  L9_2.id = L7_2
  L9_2.jobName = A0_2
  L9_2.label = A1_2
  L9_2.type = A2_2
  L9_2.coords = L5_2
  L9_2.gradesType = L6_2
  L9_2.minGrade = A4_2
  L10_2 = {}
  L9_2.data = L10_2
  L10_2 = {}
  L10_2.r = 255
  L10_2.g = 255
  L10_2.b = 0
  L10_2.alpha = 50
  L9_2.color = L10_2
  L10_2 = {}
  L10_2.x = 1.5
  L10_2.y = 1.5
  L10_2.z = 0.5
  L9_2.scale = L10_2
  L10_2 = {}
  L9_2.blip = L10_2
  L9_2.markerType = 1
  L8_2[L7_2] = L9_2
  L8_2 = makeAllJobPlayersRefreshMarkers
  L9_2 = A0_2
  L8_2(L9_2)
  L8_2 = {}
  L8_2.isSuccessful = true
  L8_2.message = "Successful"
  L8_2.markerId = L7_2
  return L8_2
end
L27_1.createNewMarker = L28_1
L27_1 = RegisterServerCallback
L28_1 = Utils
L28_1 = L28_1.eventsPrefix
L29_1 = ":createMarker"
L28_1 = L28_1 .. L29_1
function L29_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L7_2 = Utils
  L7_2 = L7_2.isAllowed
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  if not L7_2 then
    return
  end
  L7_2 = JobsCreator
  L7_2 = L7_2.createNewMarker
  L8_2 = A2_2
  L9_2 = A3_2
  L10_2 = A4_2
  L11_2 = A5_2
  L12_2 = A6_2
  L7_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L8_2 = A1_2
  L9_2 = L7_2
  L8_2(L9_2)
end
L27_1(L28_1, L29_1)
L27_1 = JobsCreator
function L28_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = {}
  L2_2 = L0_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = pairs
    L3_2 = L0_1
    L3_2 = L3_2[A0_2]
    L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
    for L6_2 in L2_2, L3_2, L4_2, L5_2 do
      L7_2 = JobsCreator
      L7_2 = L7_2.Markers
      L7_2 = L7_2[L6_2]
      L1_2[L6_2] = L7_2
    end
  end
  return L1_2
end
L27_1.getMarkersFromJobName = L28_1
L27_1 = RegisterServerCallback
L28_1 = Utils
L28_1 = L28_1.eventsPrefix
L29_1 = ":getMarkersFromJobName"
L28_1 = L28_1 .. L29_1
function L29_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = Utils
  L3_2 = L3_2.isAllowed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  while true do
    L3_2 = hasFirstLoadFinished
    if L3_2 then
      break
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 200
    L3_2(L4_2)
  end
  L3_2 = JobsCreator
  L3_2 = L3_2.getMarkersFromJobName
  L4_2 = A2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L27_1(L28_1, L29_1)
function L27_1()
  local L0_2, L1_2
  L0_2 = JobsCreator
  L0_2 = L0_2.getMarkersFromJobName
  L1_2 = "public_marker"
  return L0_2(L1_2)
end
getPublicMarkers = L27_1
function L27_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = promise
  L0_2 = L0_2.new
  L0_2 = L0_2()
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.fetchAll
  L2_2 = "SELECT * FROM jobs_data"
  L3_2 = {}
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L1_3 = pairs
    L2_3 = A0_3
    L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
    for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
      L7_3 = L6_3.id
      L8_3 = L6_3.job_name
      L9_3 = JobsCreator
      L9_3 = L9_3.Markers
      L10_3 = {}
      L10_3.id = L7_3
      L11_3 = L6_3.label
      L10_3.label = L11_3
      L11_3 = json
      L11_3 = L11_3.decode
      L12_3 = L6_3.coords
      L11_3 = L11_3(L12_3)
      L10_3.coords = L11_3
      L11_3 = L6_3.grades_type
      L10_3.gradesType = L11_3
      L11_3 = json
      L11_3 = L11_3.decode
      L12_3 = L6_3.specific_grades
      L11_3 = L11_3(L12_3)
      L10_3.specificGrades = L11_3
      L11_3 = L6_3.min_grade
      if not L11_3 then
        L11_3 = 0
      end
      L10_3.minGrade = L11_3
      L11_3 = {}
      L12_3 = L6_3.blip_id
      L11_3.spriteId = L12_3
      L12_3 = L6_3.blip_color
      L11_3.color = L12_3
      L12_3 = L6_3.blip_scale
      L11_3.scale = L12_3
      L10_3.blip = L11_3
      L11_3 = L6_3.type
      L10_3.type = L11_3
      L10_3.jobName = L8_3
      L11_3 = json
      L11_3 = L11_3.decode
      L12_3 = L6_3.data
      L11_3 = L11_3(L12_3)
      L10_3.data = L11_3
      L11_3 = L6_3.marker_type
      L10_3.markerType = L11_3
      L11_3 = {}
      L12_3 = L6_3.marker_scale_x
      L11_3.x = L12_3
      L12_3 = L6_3.marker_scale_y
      L11_3.y = L12_3
      L12_3 = L6_3.marker_scale_z
      L11_3.z = L12_3
      L10_3.scale = L11_3
      L11_3 = {}
      L12_3 = L6_3.marker_color_red
      L11_3.r = L12_3
      L12_3 = L6_3.marker_color_green
      L11_3.g = L12_3
      L12_3 = L6_3.marker_color_blue
      L11_3.b = L12_3
      L12_3 = L6_3.marker_color_alpha
      L11_3.alpha = L12_3
      L10_3.color = L11_3
      L11_3 = {}
      L12_3 = L6_3.ped
      L11_3.model = L12_3
      L12_3 = L6_3.ped_heading
      L11_3.heading = L12_3
      L10_3.ped = L11_3
      L11_3 = {}
      L12_3 = L6_3.object
      L11_3.model = L12_3
      L12_3 = L6_3.object_heading
      L11_3.heading = L12_3
      L12_3 = L6_3.object_pitch
      L11_3.pitch = L12_3
      L12_3 = L6_3.object_roll
      L11_3.roll = L12_3
      L12_3 = L6_3.object_yaw
      L11_3.yaw = L12_3
      L10_3.object = L11_3
      L9_3[L7_3] = L10_3
      L9_3 = L0_1
      L10_3 = L0_1
      L10_3 = L10_3[L8_3]
      if not L10_3 then
        L10_3 = {}
      end
      L9_3[L8_3] = L10_3
      L9_3 = L0_1
      L9_3 = L9_3[L8_3]
      L9_3[L7_3] = true
    end
    L1_3 = L0_2
    L2_3 = L1_3
    L1_3 = L1_3.resolve
    L1_3(L2_3)
  end
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = Citizen
  L1_2 = L1_2.Await
  L2_2 = L0_2
  return L1_2(L2_2)
end
getAllMarkers = L27_1
function L27_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = false
    L10_2 = L8_2.gradesType
    if "minimumGrade" == L10_2 then
      L10_2 = L8_2.jobName
      if L10_2 == A0_2 then
        L10_2 = L8_2.minGrade
        if A1_2 >= L10_2 then
          L9_2 = true
      end
    end
    else
      L10_2 = L8_2.gradesType
      if "specificGrades" == L10_2 then
        L10_2 = L8_2.jobName
        if L10_2 == A0_2 then
          L10_2 = L8_2.specificGrades
          L11_2 = tostring
          L12_2 = A1_2
          L11_2 = L11_2(L12_2)
          L10_2 = L10_2[L11_2]
          if L10_2 then
            L9_2 = true
        end
      end
      else
        L10_2 = L8_2.jobName
        if "public_marker" == L10_2 then
          L9_2 = true
        end
      end
    end
    if L9_2 then
      L2_2[L7_2] = L8_2
    end
  end
  return L2_2
end
function L28_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  L3_2 = L1_1
  L3_2 = L3_2[A0_2]
  if not L3_2 then
    L3_2 = {}
  end
  L2_2[A0_2] = L3_2
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  L3_2 = L27_1
  L4_2 = A0_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  L2_2[A1_2] = L3_2
end
L29_1 = JobsCreator
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = L14_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = pairs
  L3_2 = L1_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L28_1
    L9_2 = A0_2
    L10_2 = L6_2
    L8_2(L9_2, L10_2)
  end
end
L29_1.preloadMarkersForJobName = L30_1
function L29_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = JobsCreator
  L2_2 = L2_2.Jobs
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L0_2
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
  end
  return L0_2
end
function L30_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = pairs
  L1_2 = L29_1
  L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2 = L1_2()
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = JobsCreator
    L6_2 = L6_2.preloadMarkersForJobName
    L7_2 = L5_2
    L6_2(L7_2)
  end
end
preloadMarkersForAllJobs = L30_1
function L30_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  if "public_marker" == A0_2 then
    L1_2 = preloadMarkersForAllJobs
    L1_2()
    L1_2 = TriggerClientEvent
    L2_2 = Utils
    L2_2 = L2_2.eventsPrefix
    L3_2 = ":refreshMarkers"
    L2_2 = L2_2 .. L3_2
    L3_2 = -1
    L1_2(L2_2, L3_2)
  else
    L1_2 = JobsCreator
    L1_2 = L1_2.preloadMarkersForJobName
    L2_2 = A0_2
    L1_2(L2_2)
    L1_2 = pairs
    L2_2 = GetPlayers
    L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2 = L2_2()
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = tonumber
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      L8_2 = Framework
      L8_2 = L8_2.getPlayerJobName
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      if A0_2 == L8_2 then
        L9_2 = TriggerClientEvent
        L10_2 = Utils
        L10_2 = L10_2.eventsPrefix
        L11_2 = ":refreshMarkers"
        L10_2 = L10_2 .. L11_2
        L11_2 = L7_2
        L9_2(L10_2, L11_2)
      end
    end
  end
  L1_2 = TriggerEvent
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":refreshMarkers"
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
end
makeAllJobPlayersRefreshMarkers = L30_1
function L30_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = JobsCreator
  L2_2 = L2_2.Markers
  L2_2 = L2_2[A0_2]
  L2_2 = L2_2.jobName
  if L2_2 then
    L3_2 = MySQL
    L3_2 = L3_2.Async
    L3_2 = L3_2.execute
    L4_2 = "DELETE FROM jobs_data WHERE id=@markerId"
    L5_2 = {}
    L5_2["@markerId"] = A0_2
    function L6_2(A0_3)
      local L1_3, L2_3, L3_3
      if A0_3 > 0 then
        L2_3 = L2_2
        L1_3 = L0_1
        L1_3 = L1_3[L2_3]
        L2_3 = A0_2
        L1_3[L2_3] = nil
        L1_3 = JobsCreator
        L1_3 = L1_3.Markers
        L2_3 = A0_2
        L1_3[L2_3] = nil
        L1_3 = makeAllJobPlayersRefreshMarkers
        L2_3 = L2_2
        L1_3(L2_3)
        L1_3 = {}
        L1_3.isSuccessful = true
        L1_3.message = "Successful"
        L2_3 = A1_2
        L3_3 = L1_3
        L2_3(L3_3)
      else
        L1_3 = {}
        L1_3.isSuccessful = false
        L1_3.message = "Couldn't delete the marker (check server console)"
        L2_3 = A1_2
        L3_3 = L1_3
        L2_3(L3_3)
      end
    end
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = {}
    L3_2.isSuccessful = false
    L3_2.message = "Couldn't delete the marker (no job name in marker id data)"
    L4_2 = A1_2
    L5_2 = L3_2
    L4_2(L5_2)
  end
end
L31_1 = RegisterServerCallback
L32_1 = Utils
L32_1 = L32_1.eventsPrefix
L33_1 = ":deleteMarker"
L32_1 = L32_1 .. L33_1
function L33_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = Utils
  L3_2 = L3_2.isAllowed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = L30_1
    L4_2 = A2_2
    L5_2 = A1_2
    L3_2(L4_2, L5_2)
  end
end
L31_1(L32_1, L33_1)
L31_1 = JobsCreator
function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = stripCoords
  L3_2 = A1_2.coords
  L2_2 = L2_2(L3_2)
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.execute
  L4_2 = [[
            UPDATE jobs_data SET 
            coords=@coords,

            grades_type=@gradesType,
            specific_grades=@specificGrades,
            min_grade=@minGrade,

            label=@label,

            blip_id=@blipSpriteId,
            blip_color=@blipColor,
            blip_scale=@blipScale,

            marker_type=@markerType,

            marker_scale_x=@scaleX,
            marker_scale_y=@scaleY,
            marker_scale_z=@scaleZ,

            marker_color_red=@red,
            marker_color_green=@green,
            marker_color_blue=@blue,

            marker_color_alpha=@alpha,

            ped=@ped,
            ped_heading=@ped_heading,

            object=@objectModel,
            object_heading=@objectHeading

            WHERE id=@markerId
        ]]
  L5_2 = {}
  L5_2["@markerId"] = A0_2
  L6_2 = json
  L6_2 = L6_2.encode
  L7_2 = L2_2
  L6_2 = L6_2(L7_2)
  L5_2["@coords"] = L6_2
  L6_2 = A1_2.gradesType
  L5_2["@gradesType"] = L6_2
  L6_2 = A1_2.specificGrades
  if L6_2 then
    L6_2 = json
    L6_2 = L6_2.encode
    L7_2 = A1_2.specificGrades
    L6_2 = L6_2(L7_2)
  end
  L5_2["@specificGrades"] = L6_2
  L6_2 = A1_2.minGrade
  L5_2["@minGrade"] = L6_2
  L6_2 = A1_2.label
  L5_2["@label"] = L6_2
  L6_2 = A1_2.blip
  L6_2 = L6_2.spriteId
  L5_2["@blipSpriteId"] = L6_2
  L6_2 = A1_2.blip
  L6_2 = L6_2.color
  L5_2["@blipColor"] = L6_2
  L6_2 = A1_2.blip
  L6_2 = L6_2.scale
  L5_2["@blipScale"] = L6_2
  L6_2 = A1_2.markerType
  L5_2["@markerType"] = L6_2
  L6_2 = A1_2.scale
  L6_2 = L6_2.x
  L5_2["@scaleX"] = L6_2
  L6_2 = A1_2.scale
  L6_2 = L6_2.y
  L5_2["@scaleY"] = L6_2
  L6_2 = A1_2.scale
  L6_2 = L6_2.z
  L5_2["@scaleZ"] = L6_2
  L6_2 = A1_2.color
  L6_2 = L6_2.r
  L5_2["@red"] = L6_2
  L6_2 = A1_2.color
  L6_2 = L6_2.g
  L5_2["@green"] = L6_2
  L6_2 = A1_2.color
  L6_2 = L6_2.b
  L5_2["@blue"] = L6_2
  L6_2 = A1_2.color
  L6_2 = L6_2.alpha
  L5_2["@alpha"] = L6_2
  L6_2 = A1_2.ped
  L6_2 = L6_2.model
  L5_2["@ped"] = L6_2
  L6_2 = A1_2.ped
  L6_2 = L6_2.heading
  L5_2["@ped_heading"] = L6_2
  L6_2 = A1_2.object
  L6_2 = L6_2.model
  L5_2["@objectModel"] = L6_2
  L6_2 = A1_2.object
  L6_2 = L6_2.heading
  L5_2["@objectHeading"] = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  if 0 == L3_2 then
    L4_2 = {}
    L4_2.isSuccessful = false
    L4_2.message = "Couldn't update the marker (check server console)"
    return L4_2
  end
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L4_2 = L4_2[A0_2]
  L4_2 = L4_2.data
  L5_2 = JobsCreator
  L5_2 = L5_2.Markers
  L5_2 = L5_2[A0_2]
  L5_2 = L5_2.type
  L6_2 = JobsCreator
  L6_2 = L6_2.Markers
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.jobName
  L7_2 = JobsCreator
  L7_2 = L7_2.Markers
  L8_2 = {}
  L8_2.id = A0_2
  L9_2 = A1_2.label
  L8_2.label = L9_2
  L8_2.coords = L2_2
  L9_2 = A1_2.gradesType
  L8_2.gradesType = L9_2
  L9_2 = A1_2.specificGrades
  L8_2.specificGrades = L9_2
  L9_2 = A1_2.minGrade
  L8_2.minGrade = L9_2
  L9_2 = A1_2.blip
  L8_2.blip = L9_2
  L9_2 = A1_2.color
  L8_2.color = L9_2
  L9_2 = A1_2.scale
  L8_2.scale = L9_2
  L9_2 = A1_2.markerType
  L8_2.markerType = L9_2
  L9_2 = A1_2.ped
  L8_2.ped = L9_2
  L9_2 = A1_2.object
  L8_2.object = L9_2
  L8_2.data = L4_2
  L8_2.type = L5_2
  L8_2.jobName = L6_2
  L7_2[A0_2] = L8_2
  L7_2 = makeAllJobPlayersRefreshMarkers
  L8_2 = JobsCreator
  L8_2 = L8_2.Markers
  L8_2 = L8_2[A0_2]
  L8_2 = L8_2.jobName
  L7_2(L8_2)
  L7_2 = {}
  L7_2.isSuccessful = true
  L7_2.message = "Successful"
  return L7_2
end
L31_1.updateMarker = L32_1
L31_1 = RegisterServerCallback
L32_1 = Utils
L32_1 = L32_1.eventsPrefix
L33_1 = ":updateMarker"
L32_1 = L32_1 .. L33_1
function L33_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2
  L4_2 = Utils
  L4_2 = L4_2.isAllowed
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    return
  end
  L4_2 = JobsCreator
  L4_2 = L4_2.updateMarker
  L5_2 = A2_2
  L6_2 = A3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L6_2 = L4_2
  L5_2(L6_2)
end
L31_1(L32_1, L33_1)
function L31_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.execute
  L4_2 = "UPDATE jobs_data SET data=@data WHERE id=@markerId"
  L5_2 = {}
  L5_2["@markerId"] = A0_2
  L6_2 = json
  L6_2 = L6_2.encode
  L7_2 = A1_2
  L6_2 = L6_2(L7_2)
  L5_2["@data"] = L6_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3
    if A0_3 > 0 then
      L1_3 = JobsCreator
      L1_3 = L1_3.Markers
      L2_3 = A0_2
      L1_3 = L1_3[L2_3]
      L2_3 = A1_2
      L1_3.data = L2_3
      L1_3 = makeAllJobPlayersRefreshMarkers
      L2_3 = JobsCreator
      L2_3 = L2_3.Markers
      L3_3 = A0_2
      L2_3 = L2_3[L3_3]
      L2_3 = L2_3.jobName
      L1_3(L2_3)
      L1_3 = {}
      L1_3.isSuccessful = true
      L1_3.message = "Successful"
      L2_3 = A2_2
      L3_3 = L1_3
      L2_3(L3_3)
    else
      L1_3 = {}
      L1_3.isSuccessful = false
      L1_3.message = "Couldn't update marker data (check server console)"
      L2_3 = A2_2
      L3_3 = L1_3
      L2_3(L3_3)
    end
  end
  L3_2(L4_2, L5_2, L6_2)
end
updateMarkerData = L31_1
L31_1 = RegisterServerCallback
L32_1 = Utils
L32_1 = L32_1.eventsPrefix
L33_1 = ":updateMarkerData"
L32_1 = L32_1 .. L33_1
function L33_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2
  L4_2 = Utils
  L4_2 = L4_2.isAllowed
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = updateMarkerData
    L5_2 = A2_2
    L6_2 = A3_2
    L7_2 = A1_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L31_1(L32_1, L33_1)
function L31_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = MySQL
  L1_2 = L1_2.Async
  L1_2 = L1_2.execute
  L2_2 = "DELETE FROM jobs_data WHERE job_name=@jobName"
  L3_2 = {}
  L3_2["@jobName"] = A0_2
  function L4_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3
    if A0_3 > 0 then
      L1_3 = pairs
      L3_3 = A0_2
      L2_3 = L0_1
      L2_3 = L2_3[L3_3]
      L1_3, L2_3, L3_3, L4_3 = L1_3(L2_3)
      for L5_3, L6_3 in L1_3, L2_3, L3_3, L4_3 do
        L7_3 = JobsCreator
        L7_3 = L7_3.Markers
        L7_3[L5_3] = nil
      end
      L2_3 = A0_2
      L1_3 = L0_1
      L3_3 = {}
      L1_3[L2_3] = L3_3
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
deleteJobMarkers = L31_1
function L31_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = A1_2
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L4_2 = L4_2[A2_2]
  L4_2 = L4_2.label
  L3_2(L4_2)
end
L32_1 = RegisterServerCallback
L33_1 = Utils
L33_1 = L33_1.eventsPrefix
L34_1 = ":getMarkerLabel"
L33_1 = L33_1 .. L34_1
L34_1 = L31_1
L32_1(L33_1, L34_1)
function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A1_2 then
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = 1
    L4_2 = #A1_2
    L2_2 = L2_2(L3_2, L4_2)
    L2_2 = A1_2[L2_2]
    if L2_2 then
      L3_2 = TriggerClientEvent
      L4_2 = Utils
      L4_2 = L4_2.eventsPrefix
      L5_2 = ":playAnimation"
      L4_2 = L4_2 .. L5_2
      L5_2 = A0_2
      L6_2 = L2_2
      L3_2(L4_2, L5_2, L6_2)
    end
  end
end
playAnimation = L32_1
function L32_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = Utils
  L2_2 = L2_2.isAllowed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = {}
    L3_2 = pairs
    L4_2 = Framework
    L4_2 = L4_2.getAllAccounts
    L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2()
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L2_2[L7_2] = L7_2
    end
    L3_2 = A1_2
    L4_2 = L2_2
    L3_2(L4_2)
  end
end
L33_1 = RegisterServerCallback
L34_1 = Utils
L34_1 = L34_1.eventsPrefix
L35_1 = ":getAllAccounts"
L34_1 = L34_1 .. L35_1
L35_1 = L32_1
L33_1(L34_1, L35_1)
L33_1 = RegisterServerCallback
L34_1 = Utils
L34_1 = L34_1.eventsPrefix
L35_1 = ":getAllJobGrades"
L34_1 = L34_1 .. L35_1
function L35_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Utils
  L3_2 = L3_2.isAllowed
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = A1_2
    L4_2 = false
    L3_2(L4_2)
    return
  end
  L3_2 = MySQL
  L3_2 = L3_2.Async
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT * FROM job_grades WHERE job_name = @job_name"
  L5_2 = {}
  L5_2["@job_name"] = A2_2
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L3_2(L4_2, L5_2, L6_2)
end
L33_1(L34_1, L35_1)
function L33_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = L1_1
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L2_2 = L1_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if not L2_2 then
      L2_2 = print
      L3_2 = "^1Can't find markers for grade "
      L4_2 = tostring
      L5_2 = A1_2
      L4_2 = L4_2(L5_2)
      L5_2 = " of job "
      L6_2 = A0_2
      L7_2 = "^7"
      L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
      L2_2(L3_2)
    end
    L2_2 = L1_1
    L2_2 = L2_2[A0_2]
    L2_2 = L2_2[A1_2]
    if not L2_2 then
      L2_2 = {}
    end
    return L2_2
  else
    L2_2 = print
    L3_2 = "^1Can't find markers for the job "
    L4_2 = A0_2
    L5_2 = " and grade "
    L6_2 = tostring
    L7_2 = A1_2
    L6_2 = L6_2(L7_2)
    L7_2 = "^7"
    L3_2 = L3_2 .. L4_2 .. L5_2 .. L6_2 .. L7_2
    L2_2(L3_2)
  end
  L2_2 = {}
  return L2_2
end
L34_1 = RegisterServerCallback
L35_1 = Utils
L35_1 = L35_1.eventsPrefix
L36_1 = ":getMarkers"
L35_1 = L35_1 .. L36_1
function L36_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  while true do
    L2_2 = Framework
    L2_2 = L2_2.isPlayerLoaded
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      L2_2 = hasFirstLoadFinished
      if L2_2 then
        break
      end
    end
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 1000
    L2_2(L3_2)
  end
  L2_2 = Framework
  L2_2 = L2_2.getPlayerJobName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Framework
  L3_2 = L3_2.getPlayerJobGrade
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L33_1
  L5_2 = L2_2
  L6_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = A1_2
  L6_2 = L4_2
  L5_2(L6_2)
end
L34_1(L35_1, L36_1)
L34_1 = RegisterNetEvent
L35_1 = Utils
L35_1 = L35_1.eventsPrefix
L36_1 = ":teleportToMarker"
L35_1 = L35_1 .. L36_1
function L36_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = Utils
  L2_2 = L2_2.isAllowed
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = JobsCreator
  L2_2 = L2_2.Markers
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = L2_2.coords
    if L3_2 then
      goto lbl_18
    end
  end
  do return end
  ::lbl_18::
  L3_2 = vecFromTable
  L4_2 = L2_2.coords
  L3_2 = L3_2(L4_2)
  L4_2 = SetEntityCoords
  L5_2 = GetPlayerPed
  L6_2 = L1_2
  L5_2 = L5_2(L6_2)
  L6_2 = L3_2.x
  L7_2 = L3_2.y
  L8_2 = L3_2.z
  L8_2 = L8_2 + 0.5
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L34_1(L35_1, L36_1)
