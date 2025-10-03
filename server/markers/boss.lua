local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1
L0_1 = exports
L1_1 = "getJobAccountMoney"
L2_1 = Framework
L2_1 = L2_1.getSocietyAccountMoney
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "removeSocietyMoney"
L2_1 = Framework
L2_1 = L2_1.removeMoneyFromSocietyAccount
L0_1(L1_1, L2_1)
L0_1 = exports
L1_1 = "addSocietyMoney"
L2_1 = Framework
L2_1 = L2_1.giveMoneyToSocietyAccount
L0_1(L1_1, L2_1)
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = source
  L3_2 = canUseMarkerWithLog
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L3_2 = Framework
  L3_2 = L3_2.getPlayerJobName
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = Framework
  L4_2 = L4_2.getSocietyAccountMoney
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    if A1_2 > 0 and A1_2 <= L4_2 then
      L5_2 = exports
      L6_2 = GetCurrentResourceName
      L6_2 = L6_2()
      L5_2 = L5_2[L6_2]
      L6_2 = L5_2
      L5_2 = L5_2.removeSocietyMoney
      L7_2 = L3_2
      L8_2 = A1_2
      L5_2 = L5_2(L6_2, L7_2, L8_2)
      if L5_2 then
        L6_2 = Framework
        L6_2 = L6_2.giveCashToPlayer
        L7_2 = L2_2
        L8_2 = A1_2
        L6_2(L7_2, L8_2)
        L6_2 = notify
        L7_2 = L2_2
        L8_2 = getLocalizedText
        L9_2 = "boss:withdrew_money"
        L10_2 = Framework
        L10_2 = L10_2.groupDigits
        L11_2 = A1_2
        L10_2, L11_2, L12_2 = L10_2(L11_2)
        L8_2, L9_2, L10_2, L11_2, L12_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
        L6_2 = Utils
        L6_2 = L6_2.log
        L7_2 = L2_2
        L8_2 = getLocalizedText
        L9_2 = "log_withdrew_money"
        L8_2 = L8_2(L9_2)
        L9_2 = getLocalizedText
        L10_2 = "log_withdrew_money_description"
        L11_2 = A1_2
        L12_2 = L3_2
        L9_2 = L9_2(L10_2, L11_2, L12_2)
        L10_2 = "success"
        L11_2 = "boss"
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
      else
        L6_2 = print
        L7_2 = "Couldn't remove money from job name: "
        L8_2 = L3_2
        L7_2 = L7_2 .. L8_2
        L6_2(L7_2)
      end
    else
      L5_2 = notify
      L6_2 = L2_2
      L7_2 = getLocalizedText
      L8_2 = "boss:invalid_amount"
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2)
      L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
    end
  else
    L5_2 = print
    L6_2 = "Couldn't find esx_addonaccount for job: "
    L7_2 = L3_2
    L6_2 = L6_2 .. L7_2
    L5_2(L6_2)
  end
end
L1_1 = RegisterServerEvent
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":withdrawSocietyMoney"
L2_1 = L2_1 .. L3_1
L3_1 = L0_1
L1_1(L2_1, L3_1)
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = source
  L3_2 = canUseMarkerWithLog
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L3_2 = Framework
  L3_2 = L3_2.getPlayerJobName
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = "money"
  L5_2 = Framework
  L5_2 = L5_2.getFramework
  L5_2 = L5_2()
  if "QB-core" == L5_2 then
    L4_2 = "cash"
  end
  L5_2 = Framework
  L5_2 = L5_2.getPlayerCharIdentifier
  L6_2 = L2_2
  L5_2 = L5_2(L6_2)
  L6_2 = Framework
  L6_2 = L6_2.getAccountMoneyFromIdentifier
  L7_2 = L5_2
  L8_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2)
  if A1_2 > 0 and A1_2 <= L6_2 then
    L7_2 = exports
    L8_2 = GetCurrentResourceName
    L8_2 = L8_2()
    L7_2 = L7_2[L8_2]
    L8_2 = L7_2
    L7_2 = L7_2.addSocietyMoney
    L9_2 = L3_2
    L10_2 = A1_2
    L7_2 = L7_2(L8_2, L9_2, L10_2)
    if not L7_2 then
      L8_2 = print
      L9_2 = "Couldn't add money to job name: "
      L10_2 = L3_2
      L9_2 = L9_2 .. L10_2
      L8_2(L9_2)
      return
    end
    L8_2 = Framework
    L8_2 = L8_2.removeAccountMoneyFromIdentifier
    L9_2 = L5_2
    L10_2 = L4_2
    L11_2 = A1_2
    L8_2(L9_2, L10_2, L11_2)
    L8_2 = notify
    L9_2 = L2_2
    L10_2 = getLocalizedText
    L11_2 = "boss:deposited_money"
    L12_2 = Framework
    L12_2 = L12_2.groupDigits
    L13_2 = A1_2
    L12_2, L13_2, L14_2 = L12_2(L13_2)
    L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    L8_2 = Utils
    L8_2 = L8_2.log
    L9_2 = L2_2
    L10_2 = getLocalizedText
    L11_2 = "log_deposited_money"
    L10_2 = L10_2(L11_2)
    L11_2 = getLocalizedText
    L12_2 = "log_deposited_money_description"
    L13_2 = A1_2
    L14_2 = L3_2
    L11_2 = L11_2(L12_2, L13_2, L14_2)
    L12_2 = "success"
    L13_2 = "boss"
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  else
    L7_2 = notify
    L8_2 = L2_2
    L9_2 = getLocalizedText
    L10_2 = "boss:invalid_amount"
    L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L9_2(L10_2)
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
end
L2_1 = RegisterServerEvent
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":depositSocietyMoney"
L3_1 = L3_1 .. L4_1
L4_1 = L1_1
L2_1(L3_1, L4_1)
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = canUseMarkerWithLog
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L3_2 = Framework
  L3_2 = L3_2.getPlayerJobName
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
  L6_2 = L4_2.canWithdraw
  L5_2.withdraw = L6_2
  L6_2 = L4_2.canDeposit
  L5_2.deposit = L6_2
  L6_2 = L4_2.canWashMoney
  L5_2.wash = L6_2
  L6_2 = L4_2.canEmployees
  L5_2.employees = L6_2
  L6_2 = L4_2.canGrades
  L5_2.grades = L6_2
  L6_2 = Framework
  L6_2 = L6_2.getSocietyAccountMoney
  L7_2 = L3_2
  L6_2 = L6_2(L7_2)
  L7_2 = A1_2
  L8_2 = L5_2
  L9_2 = L6_2
  L7_2(L8_2, L9_2)
end
L3_1 = RegisterServerCallback
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":getBossData"
L4_1 = L4_1 .. L5_1
L5_1 = L2_1
L3_1(L4_1, L5_1)
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = canUseMarkerWithLog
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L3_2 = Framework
  L3_2 = L3_2.getPlayerJobName
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = JobsCreator
  L4_2 = L4_2.Markers
  L4_2 = L4_2[A2_2]
  L4_2 = L4_2.data
  L4_2 = L4_2.maxSalary
  L5_2 = MySQL
  L5_2 = L5_2.Async
  L5_2 = L5_2.fetchAll
  L6_2 = "SELECT id, grade, label, salary FROM job_grades WHERE job_name=@jobName"
  L7_2 = {}
  L7_2["@jobName"] = L3_2
  function L8_2(A0_3)
    local L1_3, L2_3, L3_3
    L1_3 = A1_2
    L2_3 = A0_3
    L3_3 = L4_2
    L1_3(L2_3, L3_3)
  end
  L5_2(L6_2, L7_2, L8_2)
end
L4_1 = RegisterServerCallback
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":boss:getJobGrades"
L5_1 = L5_1 .. L6_1
L6_1 = L3_1
L4_1(L5_1, L6_1)
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L4_2 = source
  L5_2 = canUseMarkerWithLog
  L6_2 = L4_2
  L7_2 = A0_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    return
  end
  L5_2 = Framework
  L5_2 = L5_2.getPlayerJobName
  L6_2 = L4_2
  L5_2 = L5_2(L6_2)
  L6_2 = JobsCreator
  L6_2 = L6_2.Markers
  L6_2 = L6_2[A0_2]
  L6_2 = L6_2.data
  L6_2 = L6_2.maxSalary
  if L6_2 and A3_2 > L6_2 then
    A3_2 = L6_2
  end
  L7_2 = MySQL
  L7_2 = L7_2.Sync
  L7_2 = L7_2.execute
  L8_2 = "UPDATE job_grades SET salary=@quantity WHERE id=@gradeId AND job_name=@jobName AND grade=@grade"
  L9_2 = {}
  L9_2["@gradeId"] = A1_2
  L9_2["@quantity"] = A3_2
  L9_2["@jobName"] = L5_2
  L9_2["@grade"] = A2_2
  L7_2 = L7_2(L8_2, L9_2)
  if 0 == L7_2 then
    L8_2 = notify
    L9_2 = L4_2
    L10_2 = getLocalizedText
    L11_2 = "boss:grade_salary_not_updated"
    L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L10_2(L11_2)
    L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
    return
  end
  L8_2 = notify
  L9_2 = L4_2
  L10_2 = getLocalizedText
  L11_2 = "boss:grade_salary_updated"
  L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L10_2(L11_2)
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  L8_2 = Utils
  L8_2 = L8_2.log
  L9_2 = L4_2
  L10_2 = getLocalizedText
  L11_2 = "log_updated_salary"
  L10_2 = L10_2(L11_2)
  L11_2 = getLocalizedText
  L12_2 = "log_updated_salary_description"
  L13_2 = A2_2
  L14_2 = A3_2
  L11_2 = L11_2(L12_2, L13_2, L14_2)
  L12_2 = "success"
  L13_2 = "boss"
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = pairs
  L9_2 = GetPlayers
  L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2 = L9_2()
  L8_2, L9_2, L10_2, L11_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  for L12_2, L13_2 in L8_2, L9_2, L10_2, L11_2 do
    L14_2 = tonumber
    L15_2 = L13_2
    L14_2 = L14_2(L15_2)
    L15_2 = Framework
    L15_2 = L15_2.getPlayerJobName
    L16_2 = L14_2
    L15_2 = L15_2(L16_2)
    L16_2 = Framework
    L16_2 = L16_2.getPlayerJobGrade
    L17_2 = L14_2
    L16_2 = L16_2(L17_2)
    if L5_2 == L15_2 and L16_2 == A2_2 then
      L17_2 = Framework
      L17_2 = L17_2.setJobToPlayer
      L18_2 = L14_2
      L19_2 = L5_2
      L20_2 = A2_2
      L17_2(L18_2, L19_2, L20_2)
    end
  end
end
L5_1 = RegisterNetEvent
L6_1 = Utils
L6_1 = L6_1.eventsPrefix
L7_1 = ":updateGradeSalary"
L6_1 = L6_1 .. L7_1
L7_1 = L4_1
L5_1(L6_1, L7_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = MySQL
  L1_2 = L1_2.Sync
  L1_2 = L1_2.fetchAll
  L2_2 = "SELECT grade, label FROM job_grades WHERE job_name=@jobName"
  L3_2 = {}
  L3_2["@jobName"] = A0_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = {}
  L3_2 = pairs
  L4_2 = L1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.grade
    L10_2 = L8_2.label
    L2_2[L9_2] = L10_2
  end
  return L2_2
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = {}
  if A0_2 then
    L3_2 = #A0_2
    if 0 ~= L3_2 then
      goto lbl_9
    end
  end
  do return L2_2 end
  ::lbl_9::
  L3_2 = config
  L3_2 = L3_2.resetEmployeeWorkTimeEveryNDays
  L4_2 = {}
  L5_2 = {}
  L5_2["@jobName"] = A1_2
  L6_2 = ipairs
  L7_2 = A0_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = "@id"
    L13_2 = L10_2
    L12_2 = L12_2 .. L13_2
    L13_2 = table
    L13_2 = L13_2.insert
    L14_2 = L4_2
    L15_2 = L12_2
    L13_2(L14_2, L15_2)
    L13_2 = L11_2.identifier
    L5_2[L12_2] = L13_2
  end
  L6_2 = #L4_2
  if 0 == L6_2 then
    return L2_2
  end
  L6_2 = ""
  if 0 ~= L3_2 then
    L6_2 = " AND date >= (CURDATE() - INTERVAL @days DAY) "
    L5_2["@days"] = L3_2
  end
  L7_2 = string
  L7_2 = L7_2.format
  L8_2 = [[
        SELECT char_identifier, COALESCE(SUM(total_minutes), 0) as totalMinutes
        FROM jobs_employee_hours
        WHERE job_name = @jobName
          AND char_identifier IN (%s)
          %s
        GROUP BY char_identifier
    ]]
  L9_2 = table
  L9_2 = L9_2.concat
  L10_2 = L4_2
  L11_2 = ","
  L9_2 = L9_2(L10_2, L11_2)
  L10_2 = L6_2
  L7_2 = L7_2(L8_2, L9_2, L10_2)
  L8_2 = MySQL
  L8_2 = L8_2.Sync
  L8_2 = L8_2.fetchAll
  L9_2 = L7_2
  L10_2 = L5_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = ipairs
  L10_2 = L8_2
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    L15_2 = L14_2.char_identifier
    L16_2 = L14_2.totalMinutes
    if not L16_2 then
      L16_2 = 0
    end
    L2_2[L15_2] = L16_2
  end
  L9_2 = ipairs
  L10_2 = A0_2
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
    L15_2 = L14_2.identifier
    L15_2 = L2_2[L15_2]
    if nil == L15_2 then
      L15_2 = L14_2.identifier
      L2_2[L15_2] = 0
    end
  end
  return L2_2
end
L7_1 = RegisterServerCallback
L8_1 = Utils
L8_1 = L8_1.eventsPrefix
L9_1 = ":boss:getAllEmployeesWorkTime"
L8_1 = L8_1 .. L9_1
function L9_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = canUseMarkerWithLog
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L3_2 = JobsCreator
  L3_2 = L3_2.Markers
  L3_2 = L3_2[A2_2]
  L3_2 = L3_2.jobName
  L4_2 = L5_1
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = Framework
  L6_2 = L6_2.getFramework
  L6_2 = L6_2()
  if "ESX" == L6_2 then
    L6_2 = MySQL
    L6_2 = L6_2.Sync
    L6_2 = L6_2.fetchAll
    L7_2 = "SELECT identifier, firstname, lastname, job_grade FROM users WHERE (job=@jobName OR job=@offJobName)"
    L8_2 = {}
    L9_2 = JobsCreator
    L9_2 = L9_2.getOnDutyName
    L10_2 = L3_2
    L9_2 = L9_2(L10_2)
    L8_2["@jobName"] = L9_2
    L9_2 = JobsCreator
    L9_2 = L9_2.getOffDutyName
    L10_2 = L3_2
    L9_2 = L9_2(L10_2)
    L8_2["@offJobName"] = L9_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L6_2
  else
    L6_2 = Framework
    L6_2 = L6_2.getFramework
    L6_2 = L6_2()
    if "QB-core" == L6_2 then
      L6_2 = MySQL
      L6_2 = L6_2.Sync
      L6_2 = L6_2.fetchAll
      L7_2 = "SELECT license, charinfo, job FROM players"
      L6_2 = L6_2(L7_2)
      L7_2 = pairs
      L8_2 = L6_2
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L13_2 = json
        L13_2 = L13_2.decode
        L14_2 = L12_2.job
        L13_2 = L13_2(L14_2)
        L12_2.job = L13_2
        L13_2 = L12_2.job
        L13_2 = L13_2.name
        if L13_2 == L3_2 then
          L13_2 = json
          L13_2 = L13_2.decode
          L14_2 = L12_2.charinfo
          L13_2 = L13_2(L14_2)
          L12_2.charinfo = L13_2
          L13_2 = table
          L13_2 = L13_2.insert
          L14_2 = L5_2
          L15_2 = {}
          L16_2 = L12_2.license
          L15_2.identifier = L16_2
          L16_2 = L12_2.charinfo
          L16_2 = L16_2.firstname
          L15_2.firstname = L16_2
          L16_2 = L12_2.charinfo
          L16_2 = L16_2.lastname
          L15_2.lastname = L16_2
          L16_2 = L12_2.job
          L16_2 = L16_2.grade
          L16_2 = L16_2.level
          L15_2.job_grade = L16_2
          L13_2(L14_2, L15_2)
        end
      end
    end
  end
  L6_2 = L6_1
  L7_2 = L5_2
  L8_2 = L3_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = A1_2
  L8_2 = L5_2
  L9_2 = L4_2
  L10_2 = L6_2
  L7_2(L8_2, L9_2, L10_2)
end
L7_1(L8_1, L9_1)
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L3_2 = canUseMarkerWithLog
  L4_2 = A0_2
  L5_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L3_2 = JobsCreator
  L3_2 = L3_2.Markers
  L3_2 = L3_2[A2_2]
  L3_2 = L3_2.jobName
  L4_2 = L5_1
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = {}
  L6_2 = Framework
  L6_2 = L6_2.getFramework
  L6_2 = L6_2()
  if "ESX" == L6_2 then
    L6_2 = MySQL
    L6_2 = L6_2.Sync
    L6_2 = L6_2.fetchAll
    L7_2 = "SELECT identifier, firstname, lastname, job_grade FROM users WHERE (job=@jobName OR job=@offJobName)"
    L8_2 = {}
    L9_2 = JobsCreator
    L9_2 = L9_2.getOnDutyName
    L10_2 = L3_2
    L9_2 = L9_2(L10_2)
    L8_2["@jobName"] = L9_2
    L9_2 = JobsCreator
    L9_2 = L9_2.getOffDutyName
    L10_2 = L3_2
    L9_2 = L9_2(L10_2)
    L8_2["@offJobName"] = L9_2
    L6_2 = L6_2(L7_2, L8_2)
    L5_2 = L6_2
  else
    L6_2 = Framework
    L6_2 = L6_2.getFramework
    L6_2 = L6_2()
    if "QB-core" == L6_2 then
      L6_2 = MySQL
      L6_2 = L6_2.Sync
      L6_2 = L6_2.fetchAll
      L7_2 = "SELECT license, charinfo, job FROM players"
      L6_2 = L6_2(L7_2)
      L7_2 = pairs
      L8_2 = L6_2
      L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
      for L11_2, L12_2 in L7_2, L8_2, L9_2, L10_2 do
        L13_2 = json
        L13_2 = L13_2.decode
        L14_2 = L12_2.job
        L13_2 = L13_2(L14_2)
        L12_2.job = L13_2
        L13_2 = L12_2.job
        L13_2 = L13_2.name
        if L13_2 == L3_2 then
          L13_2 = json
          L13_2 = L13_2.decode
          L14_2 = L12_2.charinfo
          L13_2 = L13_2(L14_2)
          L12_2.charinfo = L13_2
          L13_2 = table
          L13_2 = L13_2.insert
          L14_2 = L5_2
          L15_2 = {}
          L16_2 = L12_2.license
          L15_2.identifier = L16_2
          L16_2 = L12_2.charinfo
          L16_2 = L16_2.firstname
          L15_2.firstname = L16_2
          L16_2 = L12_2.charinfo
          L16_2 = L16_2.lastname
          L15_2.lastname = L16_2
          L16_2 = L12_2.job
          L16_2 = L16_2.grade
          L16_2 = L16_2.level
          L15_2.job_grade = L16_2
          L13_2(L14_2, L15_2)
        end
      end
    end
  end
  L6_2 = pairs
  L7_2 = L5_2
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = Framework
    L12_2 = L12_2.getIdentifierPlayerId
    L13_2 = L11_2.identifier
    L12_2 = L12_2(L13_2)
    if L12_2 then
      L13_2 = exports
      L14_2 = GetCurrentResourceName
      L14_2 = L14_2()
      L13_2 = L13_2[L14_2]
      L14_2 = L13_2
      L13_2 = L13_2.isPlayerOnDuty
      L15_2 = L12_2
      L13_2 = L13_2(L14_2, L15_2)
      L11_2.isOnDuty = L13_2
      L11_2.isOnline = true
    else
      L11_2.isOnDuty = false
      L11_2.isOnline = false
    end
  end
  L6_2 = config
  L6_2 = L6_2.modules
  L6_2 = L6_2.boss
  if "default" ~= L6_2 then
    L6_2 = Utils
    L6_2 = L6_2.callModuleFunc
    L7_2 = "boss"
    L8_2 = "modifyEmployeesList"
    L9_2 = L5_2
    L10_2 = L3_2
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    if L6_2 then
      L5_2 = L6_2
    end
  end
  L6_2 = A1_2
  L7_2 = L5_2
  L8_2 = L4_2
  L6_2(L7_2, L8_2)
end
L8_1 = RegisterServerCallback
L9_1 = Utils
L9_1 = L9_1.eventsPrefix
L10_1 = ":boss:getEmployees"
L9_1 = L9_1 .. L10_1
L10_1 = L7_1
L8_1(L9_1, L10_1)
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = canUseMarkerWithLog
  L6_2 = A0_2
  L7_2 = A2_2
  L5_2 = L5_2(L6_2, L7_2)
  if not L5_2 then
    return
  end
  L5_2 = JobsCreator
  L5_2 = L5_2.Markers
  L5_2 = L5_2[A2_2]
  L5_2 = L5_2.jobName
  L6_2 = A4_2 or L6_2
  if not A4_2 then
    L6_2 = 7
  end
  L7_2 = ""
  L8_2 = {}
  L8_2["@jobName"] = L5_2
  L8_2["@identifier"] = A3_2
  if 0 ~= L6_2 then
    L7_2 = " AND date >= (CURDATE() - INTERVAL @days DAY) "
    L8_2["@days"] = L6_2
  end
  L9_2 = "SELECT COALESCE(SUM(total_minutes), 0) FROM jobs_employee_hours WHERE job_name=@jobName AND char_identifier=@identifier"
  L10_2 = L7_2
  L9_2 = L9_2 .. L10_2
  L10_2 = MySQL
  L10_2 = L10_2.Sync
  L10_2 = L10_2.fetchScalar
  L11_2 = L9_2
  L12_2 = L8_2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = A1_2
  L12_2 = L10_2 or L12_2
  if not L10_2 then
    L12_2 = 0
  end
  L11_2(L12_2)
end
L9_1 = RegisterServerCallback
L10_1 = Utils
L10_1 = L10_1.eventsPrefix
L11_1 = ":boss:getEmployeeWorkTime"
L10_1 = L10_1 .. L11_1
L11_1 = L8_1
L9_1(L10_1, L11_1)
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = source
  L3_2 = canUseMarkerWithLog
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L3_2 = Framework
  L3_2 = L3_2.getPlayerJobName
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = config
  L4_2 = L4_2.modules
  L4_2 = L4_2.boss
  if "default" ~= L4_2 then
    L4_2 = Utils
    L4_2 = L4_2.callModuleFunc
    L5_2 = "boss"
    L6_2 = "fireEmployee"
    L7_2 = L2_2
    L8_2 = A1_2
    L9_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    if nil ~= L4_2 then
      return
    end
  end
  L4_2 = Framework
  L4_2 = L4_2.getIdentifierPlayerId
  L5_2 = A1_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L5_2 = Framework
    L5_2 = L5_2.setJobToPlayer
    L6_2 = L4_2
    L7_2 = config
    L7_2 = L7_2.unemployedJob
    L8_2 = config
    L8_2 = L8_2.unemployedGrade
    L5_2(L6_2, L7_2, L8_2)
  else
    L5_2 = Framework
    L5_2 = L5_2.getFramework
    L5_2 = L5_2()
    if "ESX" == L5_2 then
      L5_2 = MySQL
      L5_2 = L5_2.Async
      L5_2 = L5_2.execute
      L6_2 = "UPDATE users SET job=@unemployedJob, job_grade=@unemployedGrade WHERE identifier=@identifier AND (job=@currentJobName OR job=@offJobName)"
      L7_2 = {}
      L8_2 = config
      L8_2 = L8_2.unemployedJob
      L7_2["@unemployedJob"] = L8_2
      L8_2 = config
      L8_2 = L8_2.unemployedGrade
      L7_2["@unemployedGrade"] = L8_2
      L7_2["@identifier"] = A1_2
      L7_2["@currentJobName"] = L3_2
      L8_2 = JobsCreator
      L8_2 = L8_2.getOffDutyName
      L9_2 = L3_2
      L8_2 = L8_2(L9_2)
      L7_2["@offJobName"] = L8_2
      L5_2(L6_2, L7_2)
    else
      L5_2 = Framework
      L5_2 = L5_2.getFramework
      L5_2 = L5_2()
      if "QB-core" == L5_2 then
        L5_2 = {}
        L6_2 = config
        L6_2 = L6_2.unemployedJob
        L5_2.name = L6_2
        L6_2 = {}
        L7_2 = JobsCreator
        L7_2 = L7_2.Jobs
        L8_2 = config
        L8_2 = L8_2.unemployedJob
        L7_2 = L7_2[L8_2]
        L7_2 = L7_2.ranks
        L8_2 = config
        L8_2 = L8_2.unemployedGrade
        L7_2 = L7_2[L8_2]
        L7_2 = L7_2.label
        L6_2.name = L7_2
        L7_2 = config
        L7_2 = L7_2.unemployedGrade
        L6_2.level = L7_2
        L5_2.grade = L6_2
        L6_2 = JobsCreator
        L6_2 = L6_2.Jobs
        L7_2 = config
        L7_2 = L7_2.unemployedJob
        L6_2 = L6_2[L7_2]
        L6_2 = L6_2.ranks
        L7_2 = config
        L7_2 = L7_2.unemployedGrade
        L6_2 = L6_2[L7_2]
        L6_2 = L6_2.salary
        L5_2.payment = L6_2
        L6_2 = JobsCreator
        L6_2 = L6_2.Jobs
        L7_2 = config
        L7_2 = L7_2.unemployedJob
        L6_2 = L6_2[L7_2]
        L6_2 = L6_2.label
        L5_2.label = L6_2
        L5_2.onduty = false
        L5_2.isboss = false
        L6_2 = MySQL
        L6_2 = L6_2.Async
        L6_2 = L6_2.execute
        L7_2 = "UPDATE players SET job=@jobData WHERE license=@license"
        L8_2 = {}
        L8_2["@license"] = A1_2
        L9_2 = json
        L9_2 = L9_2.encode
        L10_2 = L5_2
        L9_2 = L9_2(L10_2)
        L8_2["@jobData"] = L9_2
        L6_2(L7_2, L8_2)
      end
    end
  end
  L5_2 = TriggerEvent
  L6_2 = Utils
  L6_2 = L6_2.eventsPrefix
  L7_2 = ":boss:employeeFired"
  L6_2 = L6_2 .. L7_2
  L7_2 = A1_2
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = notify
  L6_2 = L2_2
  L7_2 = getLocalizedText
  L8_2 = "boss:employee_fired"
  L7_2, L8_2, L9_2, L10_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L5_2 = Utils
  L5_2 = L5_2.log
  L6_2 = L2_2
  L7_2 = getLocalizedText
  L8_2 = "log_fired_employee"
  L7_2 = L7_2(L8_2)
  L8_2 = getLocalizedText
  L9_2 = "log_fired_employee_description"
  L10_2 = A1_2
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = "success"
  L10_2 = "boss"
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L10_1 = RegisterNetEvent
L11_1 = Utils
L11_1 = L11_1.eventsPrefix
L12_1 = ":boss:fireEmployee"
L11_1 = L11_1 .. L12_1
L12_1 = L9_1
L10_1(L11_1, L12_1)
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L3_2 = {}
  L4_2 = pairs
  L5_2 = A2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = Framework
    L10_2 = L10_2.getPlayerCharacterName
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L3_2
    L13_2 = {}
    L13_2.label = L10_2
    L13_2.serverId = L9_2
    L11_2(L12_2, L13_2)
  end
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L11_1 = RegisterServerCallback
L12_1 = Utils
L12_1 = L12_1.eventsPrefix
L13_1 = ":boss:getClosePlayersNames"
L12_1 = L12_1 .. L13_1
L13_1 = L10_1
L11_1(L12_1, L13_1)
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = source
  L3_2 = canUseMarkerWithLog
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L3_2 = Framework
  L3_2 = L3_2.getPlayerJobName
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = config
  L4_2 = L4_2.modules
  L4_2 = L4_2.boss
  if "default" ~= L4_2 then
    L4_2 = Utils
    L4_2 = L4_2.callModuleFunc
    L5_2 = "boss"
    L6_2 = "recruitPlayer"
    L7_2 = L2_2
    L8_2 = A1_2
    L9_2 = L3_2
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
    if nil ~= L4_2 then
      return
    end
  end
  L4_2 = JobsCreator
  L4_2 = L4_2.findLowestGrade
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = Framework
  L5_2 = L5_2.setJobToPlayer
  L6_2 = A1_2
  L7_2 = L3_2
  L8_2 = L4_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = notify
  L6_2 = A1_2
  L7_2 = getLocalizedText
  L8_2 = "boss:you_got_hired"
  L9_2 = JobsCreator
  L9_2 = L9_2.Jobs
  L9_2 = L9_2[L3_2]
  L9_2 = L9_2.label
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2, L9_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = notify
  L6_2 = L2_2
  L7_2 = getLocalizedText
  L8_2 = "boss:you_hired"
  L9_2 = Framework
  L9_2 = L9_2.getPlayerCharacterName
  L10_2 = A1_2
  L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
  L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L5_2 = Framework
  L5_2 = L5_2.getFramework
  L5_2 = L5_2()
  if "ESX" == L5_2 then
    L5_2 = ESX
    L5_2 = L5_2.GetPlayerFromId
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    L6_2 = ESX
    L6_2 = L6_2.SavePlayer
    if L6_2 then
      L6_2 = ESX
      L6_2 = L6_2.SavePlayer
      L7_2 = L5_2
      L6_2(L7_2)
    end
  else
    L5_2 = Framework
    L5_2 = L5_2.getFramework
    L5_2 = L5_2()
    if "QB-core" == L5_2 then
      L5_2 = QBCore
      L5_2 = L5_2.Player
      L5_2 = L5_2.Save
      L6_2 = A1_2
      L5_2(L6_2)
    end
  end
  L5_2 = TriggerEvent
  L6_2 = Utils
  L6_2 = L6_2.eventsPrefix
  L7_2 = ":boss:playerHired"
  L6_2 = L6_2 .. L7_2
  L7_2 = A1_2
  L8_2 = L3_2
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = Utils
  L5_2 = L5_2.log
  L6_2 = L2_2
  L7_2 = getLocalizedText
  L8_2 = "log_recruited_employee"
  L7_2 = L7_2(L8_2)
  L8_2 = getLocalizedText
  L9_2 = "log_recruited_employee_description"
  L10_2 = GetPlayerName
  L11_2 = A1_2
  L10_2 = L10_2(L11_2)
  L11_2 = Framework
  L11_2 = L11_2.getIdentifier
  L12_2 = A1_2
  L11_2, L12_2 = L11_2(L12_2)
  L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2)
  L9_2 = "success"
  L10_2 = "boss"
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L12_1 = RegisterNetEvent
L13_1 = Utils
L13_1 = L13_1.eventsPrefix
L14_1 = ":boss:recruitPlayer"
L13_1 = L13_1 .. L14_1
L14_1 = L11_1
L12_1(L13_1, L14_1)
function L12_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = source
  L4_2 = canUseMarkerWithLog
  L5_2 = L3_2
  L6_2 = A0_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 then
    return
  end
  L4_2 = Framework
  L4_2 = L4_2.getPlayerJobName
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = config
  L5_2 = L5_2.modules
  L5_2 = L5_2.boss
  if "default" ~= L5_2 then
    L5_2 = Utils
    L5_2 = L5_2.callModuleFunc
    L6_2 = "boss"
    L7_2 = "changeGradeToEmployee"
    L8_2 = L3_2
    L9_2 = A1_2
    L10_2 = A2_2
    L11_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
    if nil ~= L5_2 then
      return
    end
  end
  L5_2 = Framework
  L5_2 = L5_2.getFramework
  L5_2 = L5_2()
  if "ESX" == L5_2 then
    L5_2 = ESX
    L5_2 = L5_2.GetPlayerFromIdentifier
    L6_2 = A1_2
    L5_2 = L5_2(L6_2)
    if L5_2 then
      L6_2 = L5_2.setJob
      L7_2 = L4_2
      L8_2 = A2_2
      L6_2(L7_2, L8_2)
      L6_2 = ESX
      L6_2 = L6_2.GetPlayerFromId
      L7_2 = L5_2.source
      L6_2 = L6_2(L7_2)
      L7_2 = ESX
      L7_2 = L7_2.SavePlayer
      if L7_2 then
        L7_2 = ESX
        L7_2 = L7_2.SavePlayer
        L8_2 = L6_2
        L7_2(L8_2)
      end
      L7_2 = notify
      L8_2 = L5_2.source
      L9_2 = getLocalizedText
      L10_2 = "boss:your_grade_changed_to"
      L11_2 = L6_2.job
      L11_2 = L11_2.grade_label
      L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
      L7_2(L8_2, L9_2, L10_2, L11_2)
    else
      L6_2 = MySQL
      L6_2 = L6_2.Async
      L6_2 = L6_2.execute
      L7_2 = "UPDATE users SET job_grade=@jobGrade WHERE identifier=@identifier AND (job=@currentJobName OR job=@offJobName)"
      L8_2 = {}
      L8_2["@jobGrade"] = A2_2
      L8_2["@identifier"] = A1_2
      L8_2["@currentJobName"] = L4_2
      L9_2 = JobsCreator
      L9_2 = L9_2.getOffDutyName
      L10_2 = L4_2
      L9_2 = L9_2(L10_2)
      L8_2["@offJobName"] = L9_2
      L6_2(L7_2, L8_2)
    end
  else
    L5_2 = Framework
    L5_2 = L5_2.getFramework
    L5_2 = L5_2()
    if "QB-core" == L5_2 then
      L5_2 = QBCore
      L5_2 = L5_2.Functions
      L5_2 = L5_2.GetSource
      L6_2 = A1_2
      L5_2 = L5_2(L6_2)
      if L5_2 and L5_2 > 0 then
        L6_2 = QBCore
        L6_2 = L6_2.Functions
        L6_2 = L6_2.GetPlayer
        L7_2 = L5_2
        L6_2 = L6_2(L7_2)
        L7_2 = L6_2.Functions
        L7_2 = L7_2.SetJob
        L8_2 = L4_2
        L9_2 = A2_2
        L7_2(L8_2, L9_2)
        L7_2 = notify
        L8_2 = L6_2.source
        L9_2 = getLocalizedText
        L10_2 = "boss:your_grade_changed_to"
        L11_2 = L6_2.PlayerData
        L11_2 = L11_2.job
        L11_2 = L11_2.grade
        L11_2 = L11_2.name
        L9_2, L10_2, L11_2 = L9_2(L10_2, L11_2)
        L7_2(L8_2, L9_2, L10_2, L11_2)
        L7_2 = QBCore
        L7_2 = L7_2.Player
        L7_2 = L7_2.Save
        L8_2 = L5_2
        L7_2(L8_2)
      else
        L6_2 = MySQL
        L6_2 = L6_2.Async
        L6_2 = L6_2.fetchScalar
        L7_2 = "SELECT job FROM players WHERE license=@license"
        L8_2 = {}
        L8_2["@license"] = A1_2
        function L9_2(A0_3)
          local L1_3, L2_3, L3_3, L4_3, L5_3
          L1_3 = json
          L1_3 = L1_3.decode
          L2_3 = A0_3
          L1_3 = L1_3(L2_3)
          A0_3 = L1_3
          L1_3 = L4_2
          A0_3.name = L1_3
          L1_3 = A0_3.grade
          L2_3 = A2_2
          L1_3.level = L2_3
          L1_3 = MySQL
          L1_3 = L1_3.Async
          L1_3 = L1_3.execute
          L2_3 = "UPDATE players SET job=@job WHERE license=@license"
          L3_3 = {}
          L4_3 = json
          L4_3 = L4_3.encode
          L5_3 = A0_3
          L4_3 = L4_3(L5_3)
          L3_3["@job"] = L4_3
          L4_3 = A1_2
          L3_3["@license"] = L4_3
          L1_3(L2_3, L3_3)
        end
        L6_2(L7_2, L8_2, L9_2)
      end
    end
  end
  L5_2 = notify
  L6_2 = L3_2
  L7_2 = getLocalizedText
  L8_2 = "boss:changed_grade_successfully"
  L7_2, L8_2, L9_2, L10_2, L11_2 = L7_2(L8_2)
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  L5_2 = Utils
  L5_2 = L5_2.log
  L6_2 = L3_2
  L7_2 = getLocalizedText
  L8_2 = "log_changed_grade_employee"
  L7_2 = L7_2(L8_2)
  L8_2 = getLocalizedText
  L9_2 = "log_changed_grade_employee_description"
  L10_2 = A1_2
  L11_2 = A2_2
  L8_2 = L8_2(L9_2, L10_2, L11_2)
  L9_2 = "success"
  L10_2 = "boss"
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
L13_1 = RegisterNetEvent
L14_1 = Utils
L14_1 = L14_1.eventsPrefix
L15_1 = ":boss:changeGradeToEmployee"
L14_1 = L14_1 .. L15_1
L15_1 = L12_1
L13_1(L14_1, L15_1)
function L13_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = source
  L3_2 = canUseMarkerWithLog
  L4_2 = L2_2
  L5_2 = A0_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    return
  end
  L3_2 = Framework
  L3_2 = L3_2.getBlackMoneyValue
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if A1_2 <= L3_2 then
    L3_2 = JobsCreator
    L3_2 = L3_2.Markers
    L3_2 = L3_2[A0_2]
    L3_2 = L3_2.data
    L4_2 = L3_2.washMoneyReturnPercentage
    if not L4_2 then
      L4_2 = 100
    end
    L5_2 = L3_2.washMoneyGoesToSocietyAccount
    L6_2 = math
    L6_2 = L6_2.floor
    L7_2 = A1_2 * L4_2
    L7_2 = L7_2 / 100
    L6_2 = L6_2(L7_2)
    L7_2 = false
    if L5_2 then
      L8_2 = Framework
      L8_2 = L8_2.getPlayerJobName
      L9_2 = L2_2
      L8_2 = L8_2(L9_2)
      L9_2 = Framework
      L9_2 = L9_2.giveMoneyToSocietyAccount
      L10_2 = L8_2
      L11_2 = L6_2
      L9_2 = L9_2(L10_2, L11_2)
      L7_2 = L9_2
    else
      L8_2 = Framework
      L8_2 = L8_2.giveCashToPlayer
      L9_2 = L2_2
      L10_2 = L6_2
      L8_2(L9_2, L10_2)
      L7_2 = true
    end
    if L7_2 then
      L8_2 = Framework
      L8_2 = L8_2.removeBlackMoneyValue
      L9_2 = L2_2
      L10_2 = A1_2
      L8_2(L9_2, L10_2)
      L8_2 = notify
      L9_2 = L2_2
      L10_2 = getLocalizedText
      L11_2 = "boss:you_washed_money"
      L12_2 = Framework
      L12_2 = L12_2.groupDigits
      L13_2 = A1_2
      L12_2 = L12_2(L13_2)
      L13_2 = Framework
      L13_2 = L13_2.groupDigits
      L14_2 = L6_2
      L13_2, L14_2 = L13_2(L14_2)
      L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2, L12_2, L13_2, L14_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L8_2 = Utils
      L8_2 = L8_2.log
      L9_2 = L2_2
      L10_2 = getLocalizedText
      L11_2 = "log_washed_money"
      L10_2 = L10_2(L11_2)
      L11_2 = getLocalizedText
      L12_2 = "log_washed_money_description"
      L13_2 = Framework
      L13_2 = L13_2.groupDigits
      L14_2 = A1_2
      L13_2, L14_2 = L13_2(L14_2)
      L11_2 = L11_2(L12_2, L13_2, L14_2)
      L12_2 = "success"
      L13_2 = "boss"
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
    else
      L8_2 = notify
      L9_2 = L2_2
      L10_2 = getLocalizedText
      L11_2 = "boss:couldnt_wash_money"
      L10_2, L11_2, L12_2, L13_2, L14_2 = L10_2(L11_2)
      L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    end
  else
    L3_2 = notify
    L4_2 = L2_2
    L5_2 = getLocalizedText
    L6_2 = "boss:not_enough_dirty_money"
    L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = L5_2(L6_2)
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
end
L14_1 = RegisterNetEvent
L15_1 = Utils
L15_1 = L15_1.eventsPrefix
L16_1 = ":washMoney"
L15_1 = L15_1 .. L16_1
L16_1 = L13_1
L14_1(L15_1, L16_1)
