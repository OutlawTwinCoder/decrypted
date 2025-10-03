local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1
L0_1 = string
L0_1 = L0_1.format
format = L0_1
hasFirstLoadFinished = false
L0_1 = JobsCreator
if not L0_1 then
  L0_1 = {}
end
JobsCreator = L0_1
L0_1 = JobsCreator
L1_1 = {}
L0_1.Jobs = L1_1
L0_1 = JobsCreator
L1_1 = {}
L0_1.Markers = L1_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = JobsCreator
  L2_2 = L2_2.isOffDutyName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    return
  end
  L2_2 = JobsCreator
  L2_2 = L2_2.getOffDutyName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = JobsCreator
  L3_2 = L3_2.getOffDutyName
  L4_2 = A1_2.name
  L3_2 = L3_2(L4_2)
  L4_2 = JobsCreator
  L4_2 = L4_2.Jobs
  L4_2 = L4_2[L2_2]
  L4_2 = L4_2.ranks
  L4_2 = L4_2[L3_2]
  if L4_2 then
    return
  end
  L5_2 = JobsCreator
  L5_2 = L5_2.createRank
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = getLocalizedText
  L9_2 = "off_duty_rank_label"
  L10_2 = A1_2.label
  L8_2 = L8_2(L9_2, L10_2)
  L9_2 = A1_2.grade
  L10_2 = 0
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  L6_2 = L5_2.isSuccessful
  return L6_2
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L1_2 = JobsCreator
  L1_2 = L1_2.Jobs
  L1_2 = L1_2[A0_2]
  L2_2 = JobsCreator
  L2_2 = L2_2.getOffDutyName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = JobsCreator
  L3_2 = L3_2.Jobs
  L3_2 = L3_2[L2_2]
  if not L3_2 then
    L4_2 = 0
    return L4_2
  end
  L4_2 = L1_2.ranks
  if not L4_2 then
    L4_2 = 0
    return L4_2
  end
  L4_2 = 0
  L5_2 = pairs
  L6_2 = L1_2.ranks
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = L0_1
    L12_2 = A0_2
    L13_2 = L10_2
    L11_2 = L11_2(L12_2, L13_2)
    if L11_2 then
      L4_2 = L4_2 + 1
    end
  end
  return L4_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = JobsCreator
  L1_2 = L1_2.isOffDutyName
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = JobsCreator
  L1_2 = L1_2.Jobs
  L1_2 = L1_2[A0_2]
  L2_2 = JobsCreator
  L2_2 = L2_2.getOffDutyName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = JobsCreator
  L3_2 = L3_2.Jobs
  L3_2 = L3_2[L2_2]
  if not L3_2 then
    L4_2 = JobsCreator
    L4_2 = L4_2.createJob
    L5_2 = L2_2
    L6_2 = getLocalizedText
    L7_2 = "off_duty_job_label"
    L8_2 = L1_2.label
    L6_2, L7_2, L8_2 = L6_2(L7_2, L8_2)
    L4_2 = L4_2(L5_2, L6_2, L7_2, L8_2)
    L5_2 = L4_2.isSuccessful
    return L5_2
  end
  L4_2 = false
  return L4_2
end
L3_1 = JobsCreator
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = JobsCreator
  L1_2 = L1_2.isOffDutyName
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    return
  end
  L1_2 = 0
  L2_2 = 0
  L3_2 = L2_1
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L1_2 = 1
  end
  L4_2 = L1_1
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L2_2 = L4_2
  if L1_2 > 0 then
    L4_2 = print
    L5_2 = format
    L6_2 = "^2Created ^3%d^2 off-duty job^7 for '%s'"
    L7_2 = L1_2
    L8_2 = A0_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
  if L2_2 > 0 then
    L4_2 = print
    L5_2 = format
    L6_2 = "^2Created ^3%d^2 off-duty ranks^7 for '%s'"
    L7_2 = L2_2
    L8_2 = A0_2
    L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2(L5_2, L6_2, L7_2, L8_2)
  end
end
L3_1.ensureOffDutyJob = L4_1
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT name FROM jobs"
  L2_2 = {}
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = {}
  L2_2 = pairs
  L3_2 = L0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.name
    L1_2[L8_2] = true
  end
  L2_2 = "^1Job '^3%s^1' not found for grade ID %d (%s - %s). It will be deleted^7"
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchAll
  L4_2 = "SELECT id, job_name, grade, name, label FROM job_grades"
  L5_2 = {}
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.job_name
    L10_2 = L1_2[L10_2]
    if not L10_2 then
      L10_2 = print
      L11_2 = format
      L12_2 = L2_2
      L13_2 = L9_2.job_name
      L14_2 = L9_2.id
      L15_2 = L9_2.name
      L16_2 = L9_2.label
      L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
      L10_2(L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      L10_2 = MySQL
      L10_2 = L10_2.Sync
      L10_2 = L10_2.execute
      L11_2 = "DELETE FROM job_grades WHERE id=@id"
      L12_2 = {}
      L13_2 = L9_2.id
      L12_2["@id"] = L13_2
      L10_2(L11_2, L12_2)
    end
  end
end
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = tostring
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  A1_2 = L2_2
  L2_2 = Framework
  L2_2 = L2_2.getFramework
  L2_2 = L2_2()
  if "QB-core" ~= L2_2 then
    L2_2 = print
    L3_2 = "^1This function can be used only with QB-core framework^7"
    L2_2(L3_2)
    return
  end
  L2_2 = QBCore
  L2_2 = L2_2.Shared
  L2_2 = L2_2.Jobs
  if not L2_2 then
    return
  end
  L2_2 = QBCore
  L2_2 = L2_2.Shared
  L2_2 = L2_2.Jobs
  L2_2 = L2_2[A0_2]
  if L2_2 then
    L3_2 = L2_2.grades
    if L3_2 then
      L3_2 = L2_2.grades
      L3_2 = L3_2[A1_2]
      if L3_2 then
        goto lbl_34
      end
    end
  end
  do return end
  ::lbl_34::
  L3_2 = L2_2.grades
  L3_2 = L3_2[A1_2]
  L3_2 = L3_2.isboss
  return L3_2
end
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L2_2 = QBCore
  L2_2 = L2_2.Shared
  L2_2 = L2_2.Jobs
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = Utils
  L3_2 = L3_2.deepCopy
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2.label
  L3_2.label = L4_2
  L4_2 = L3_2.grades
  if not L4_2 then
    L4_2 = {}
  end
  L3_2.grades = L4_2
  L4_2 = nil
  L5_2 = false
  L6_2 = pairs
  L7_2 = A1_2.ranks
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = L4_1
    L13_2 = A0_2
    L14_2 = L10_2
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 and not L5_2 then
      L5_2 = true
    end
    if nil == L4_2 or L10_2 > L4_2 then
      L4_2 = L10_2
    end
    L13_2 = L3_2.grades
    L14_2 = {}
    L15_2 = L11_2.label
    L14_2.name = L15_2
    L15_2 = L11_2.salary
    L14_2.payment = L15_2
    L14_2.isboss = L12_2
    L13_2[L10_2] = L14_2
  end
  if L4_2 and not L5_2 then
    L6_2 = L3_2.grades
    L6_2 = L6_2[L4_2]
    L6_2.isboss = true
  end
  return L3_2
end
function L6_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = QBCore
  L2_2 = L2_2.Shared
  L2_2 = L2_2.Jobs
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = Utils
  L3_2 = L3_2.deepCopy
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = A1_2.label
  L3_2.label = L4_2
  L4_2 = {}
  L3_2.grades = L4_2
  L4_2 = nil
  L5_2 = false
  L6_2 = pairs
  L7_2 = A1_2.ranks
  L6_2, L7_2, L8_2, L9_2 = L6_2(L7_2)
  for L10_2, L11_2 in L6_2, L7_2, L8_2, L9_2 do
    L12_2 = L4_1
    L13_2 = A0_2
    L14_2 = L10_2
    L12_2 = L12_2(L13_2, L14_2)
    if L12_2 and not L5_2 then
      L5_2 = true
    end
    if nil == L4_2 or L10_2 > L4_2 then
      L4_2 = L10_2
    end
    L13_2 = L3_2.grades
    L14_2 = tostring
    L15_2 = L10_2
    L14_2 = L14_2(L15_2)
    L15_2 = {}
    L16_2 = L11_2.label
    L15_2.name = L16_2
    L16_2 = L11_2.salary
    L15_2.payment = L16_2
    L15_2.isboss = L12_2
    L13_2[L14_2] = L15_2
  end
  if L4_2 and not L5_2 then
    L6_2 = L3_2.grades
    L7_2 = tostring
    L8_2 = L4_2
    L7_2 = L7_2(L8_2)
    L6_2 = L6_2[L7_2]
    L6_2.isboss = true
  end
  return L3_2
end
L7_1 = JobsCreator
function L8_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = SUBFRAMEWORK
  if nil == L0_2 then
    L0_2 = JobsCreator
    L1_2 = {}
    L0_2.QBJobsTable = L1_2
    L0_2 = pairs
    L1_2 = JobsCreator
    L1_2 = L1_2.Jobs
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = JobsCreator
      L6_2 = L6_2.QBJobsTable
      L7_2 = L6_1
      L8_2 = L4_2
      L9_2 = L5_2
      L7_2 = L7_2(L8_2, L9_2)
      L6_2[L4_2] = L7_2
    end
    L0_2 = TriggerEvent
    L1_2 = "jobs_creator:injectJobs"
    L2_2 = JobsCreator
    L2_2 = L2_2.QBJobsTable
    L0_2(L1_2, L2_2)
    L0_2 = TriggerClientEvent
    L1_2 = "jobs_creator:injectJobs"
    L2_2 = -1
    L3_2 = JobsCreator
    L3_2 = L3_2.QBJobsTable
    L0_2(L1_2, L2_2, L3_2)
  else
    L0_2 = SUBFRAMEWORK
    if "QBX" == L0_2 then
      L0_2 = pairs
      L1_2 = JobsCreator
      L1_2 = L1_2.Jobs
      L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
      for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
        L6_2 = L5_1
        L7_2 = L4_2
        L8_2 = L5_2
        L6_2 = L6_2(L7_2, L8_2)
        L7_2 = exports
        L7_2 = L7_2.qbx_core
        L8_2 = L7_2
        L7_2 = L7_2.CreateJob
        L10_2 = L4_2
        L9_2 = L4_2.lower
        L9_2 = L9_2(L10_2)
        L10_2 = L6_2
        L11_2 = false
        L7_2(L8_2, L9_2, L10_2, L11_2)
      end
    end
  end
end
L7_1.injectJobsInQBCoreTable = L8_1
L7_1 = RegisterNetEvent
L8_1 = Utils
L8_1 = L8_1.eventsPrefix
L9_1 = ":askQBCoreJobs"
L8_1 = L8_1 .. L9_1
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = source
  L1_2 = TriggerClientEvent
  L2_2 = "jobs_creator:injectJobs"
  L3_2 = L0_2
  L4_2 = JobsCreator
  L4_2 = L4_2.QBJobsTable
  L1_2(L2_2, L3_2, L4_2)
end
L7_1(L8_1, L9_1)
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = MySQL
  L2_2 = L2_2.Sync
  L2_2 = L2_2.fetchAll
  L3_2 = "SELECT id, grade, name, label, salary FROM `job_grades` WHERE job_name=@jobName ORDER BY grade ASC"
  L4_2 = {}
  L4_2["@jobName"] = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L8_2.grade
    L1_2[L9_2] = L8_2
  end
  return L1_2
end
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A1_2.label
  if not L2_2 then
    L2_2 = print
    L3_2 = "^1There is an issue in ^3QBCore jobs.lua file^1, found a malformed job without the ^3label^7"
    L2_2(L3_2)
    return
  end
  L2_2 = JobsCreator
  L2_2 = L2_2.Jobs
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L2_2 = JobsCreator
    L2_2 = L2_2.createJob
    L3_2 = A0_2
    L4_2 = A1_2.label
    L2_2(L3_2, L4_2)
    L2_2 = print
    L3_2 = "^2Converted job ^3"
    L4_2 = A1_2.label
    L5_2 = "^2 from QBCore jobs.lua file"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
  end
  L2_2 = A1_2.grades
  if L2_2 then
    L2_2 = type
    L3_2 = A1_2.grades
    L2_2 = L2_2(L3_2)
    if "table" == L2_2 then
      goto lbl_33
    end
  end
  do return end
  ::lbl_33::
  L2_2 = pairs
  L3_2 = A1_2.grades
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = type
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if "table" == L8_2 then
      L8_2 = tonumber
      L9_2 = L6_2
      L8_2 = L8_2(L9_2)
      L9_2 = L7_2.name
      if not L9_2 then
        L9_2 = L7_2.label
        L7_2.name = L9_2
      end
      L9_2 = JobsCreator
      L9_2 = L9_2.Jobs
      L9_2 = L9_2[A0_2]
      L9_2 = L9_2.ranks
      L9_2 = L9_2[L8_2]
      if not L9_2 and A0_2 and L8_2 then
        L9_2 = L7_2.name
        if L9_2 then
          L9_2 = L7_2.payment
          if L9_2 then
            L9_2 = JobsCreator
            L9_2 = L9_2.createRank
            L10_2 = A0_2
            L11_2 = L7_2.name
            L12_2 = L7_2.name
            L13_2 = L8_2
            L14_2 = L7_2.payment
            L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
          end
        end
      end
    end
  end
end
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = Framework
  L0_2 = L0_2.getFramework
  L0_2 = L0_2()
  if "QB-core" ~= L0_2 then
    L0_2 = print
    L1_2 = "^1This function can be used only with QB-core framework^7"
    L0_2(L1_2)
    return
  end
  L0_2 = QBCore
  L0_2 = L0_2.Shared
  L0_2 = L0_2.Jobs
  if not L0_2 then
    return
  end
  L0_2 = pairs
  L1_2 = QBCore
  L1_2 = L1_2.Shared
  L1_2 = L1_2.Jobs
  L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
  for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
    L6_2 = L8_1
    L7_2 = L4_2
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
end
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = translation
  if L1_2 then
    L1_2 = L1_2[A0_2]
  end
  if L1_2 then
    L1_2 = translation
    L1_2 = L1_2[A0_2]
    return L1_2
  end
  while true do
    L1_2 = translation
    if L1_2 then
      L1_2 = L1_2[A0_2]
    end
    if nil ~= L1_2 then
      break
    end
    L1_2 = L10_1
    L2_2 = A0_2
    L1_2(L2_2)
  end
  L1_2 = print
  L2_2 = "Error in translations files!"
  L1_2(L2_2)
  L1_2 = "Missing Translation"
  return L1_2
end
L11_1 = Citizen
L11_1 = L11_1.CreateThread
function L12_1()
  local L0_2, L1_2, L2_2
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = math
  L1_2 = L1_2.floor
  L2_2 = 1955460.0000000002
  L1_2, L2_2 = L1_2(L2_2)
  L0_2(L1_2, L2_2)
  L0_2 = _G
  L0_2 = L0_2.getLocalizedText
  if not L0_2 then
    L0_2 = L10_1
    L1_2 = "English text to turn into German"
    L0_2(L1_2)
    return
  end
  L0_2 = print
  L1_2 = "Translations loaded successfully!"
  L0_2(L1_2)
end
L11_1(L12_1)
function L11_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = JobsCreator
  L1_2 = {}
  L0_2.Jobs = L1_2
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT * FROM jobs"
  L0_2 = L0_2(L1_2)
  L1_2 = 0
  L2_2 = pairs
  L3_2 = L0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = L7_2.name
    L9_2 = L7_2.options
    if L9_2 then
      L9_2 = json
      L9_2 = L9_2.decode
      L10_2 = L7_2.options
      L9_2 = L9_2(L10_2)
      if L9_2 then
        goto lbl_27
      end
    end
    L9_2 = {}
    ::lbl_27::
    L10_2 = JobsCreator
    L10_2 = L10_2.Jobs
    L11_2 = {}
    L11_2.name = L8_2
    L12_2 = L7_2.label
    L11_2.label = L12_2
    L11_2.actions = L9_2
    L12_2 = L7_1
    L13_2 = L8_2
    L12_2 = L12_2(L13_2)
    if not L12_2 then
      L12_2 = {}
    end
    L11_2.ranks = L12_2
    L10_2[L8_2] = L11_2
    L1_2 = L1_2 + 1
  end
  L2_2 = print
  L3_2 = "^2Loaded ^3"
  L4_2 = L1_2
  L5_2 = "^2 jobs^7"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L2_2(L3_2)
end
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = JobsCreator
  L0_2 = L0_2.Jobs
  L0_2 = L0_2.unemployed
  if not L0_2 then
    L0_2 = JobsCreator
    L0_2 = L0_2.createJob
    L1_2 = "unemployed"
    L2_2 = "Unemployed"
    L0_2(L1_2, L2_2)
    L0_2 = print
    L1_2 = [[

^2Created base job ^3unemployed^2 (it must exist)^7]]
    L0_2(L1_2)
  end
  L0_2 = JobsCreator
  L0_2 = L0_2.findLowestGrade
  L1_2 = "unemployed"
  L0_2 = L0_2(L1_2)
  if 0 ~= L0_2 then
    L0_2 = JobsCreator
    L0_2 = L0_2.createRank
    L1_2 = "unemployed"
    L2_2 = "unemployed"
    L3_2 = "Unemployed"
    L4_2 = 0
    L5_2 = 0
    L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
    L0_2 = print
    L1_2 = [[

^2Created base rank ^3Unemployed^2 (it must exist)^7]]
    L0_2(L1_2)
  end
end
L13_1 = RegisterNetEvent
L14_1 = Utils
L14_1 = L14_1.eventsPrefix
L15_1 = ":framework:ready"
L14_1 = L14_1 .. L15_1
function L15_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = L11_1
  L0_2()
  L0_2 = Framework
  L0_2 = L0_2.getFramework
  L0_2 = L0_2()
  if "ESX" == L0_2 then
    L0_2 = L3_1
    L0_2()
  else
    L0_2 = Framework
    L0_2 = L0_2.getFramework
    L0_2 = L0_2()
    if "QB-core" == L0_2 then
      L0_2 = pcall
      L1_2 = L9_1
      L0_2, L1_2 = L0_2(L1_2)
      if not L0_2 then
        L2_2 = print
        L3_2 = "^1Error while converting QBCore jobs into database (probably something wrong in one or more jobs in the jobs.lua file)"
        L4_2 = L1_2
        L5_2 = "^7"
        L2_2(L3_2, L4_2, L5_2)
      end
    end
  end
  L0_2 = L12_1
  L0_2()
  L0_2 = Framework
  L0_2 = L0_2.getFramework
  L0_2 = L0_2()
  if "QB-core" == L0_2 then
    L0_2 = JobsCreator
    L0_2 = L0_2.refreshFrameworkJobs
    L0_2()
  end
  L0_2 = getAllMarkers
  L0_2()
  L0_2 = registerSocieties
  L0_2()
  L0_2 = getAllArmoryData
  L0_2()
  L0_2 = getAllGaragesData
  L0_2()
  L0_2 = getAllShopsData
  L0_2()
  L0_2 = getAllWardrobesData
  L0_2()
  L0_2 = preloadMarkersForAllJobs
  L0_2()
  L0_2 = TriggerClientEvent
  L1_2 = Utils
  L1_2 = L1_2.eventsPrefix
  L2_2 = ":framework:ready"
  L1_2 = L1_2 .. L2_2
  L2_2 = -1
  L0_2(L1_2, L2_2)
  hasFirstLoadFinished = true
end
L13_1(L14_1, L15_1)
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Utils
  L1_2 = L1_2.isAllowed
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = TriggerClientEvent
    L2_2 = Utils
    L2_2 = L2_2.eventsPrefix
    L3_2 = ":openGUI"
    L2_2 = L2_2 .. L3_2
    L3_2 = A0_2
    L4_2 = Utils
    L4_2 = L4_2.getScriptVersion
    L4_2 = L4_2()
    L5_2 = Settings
    L5_2 = L5_2.getFullConfig
    L5_2 = L5_2()
    L1_2(L2_2, L3_2, L4_2, L5_2)
  else
    L1_2 = Dialogs
    L1_2 = L1_2.showNotAllowedMenu
    L2_2 = A0_2
    L3_2 = config
    L3_2 = L3_2.acePermission
    L1_2(L2_2, L3_2)
  end
end
L14_1 = RegisterCommand
L15_1 = "jobcreator"
L16_1 = L13_1
L14_1(L15_1, L16_1)
L14_1 = RegisterCommand
L15_1 = "jobscreator"
L16_1 = L13_1
L14_1(L15_1, L16_1)
L14_1 = {}
L15_1 = RegisterNetEvent
L16_1 = Utils
L16_1 = L16_1.eventsPrefix
L17_1 = ":playerConnected"
L16_1 = L16_1 .. L17_1
function L17_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L2_2 = source
  L3_2 = 50000
  if L2_2 > L3_2 then
    return
  end
  L3_2 = vec3
  L4_2 = 0.159709
  L5_2 = 0.337892
  L6_2 = 0.145259
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "%.3f"
  L6_2 = L3_2.x
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = "-"
  L6_2 = string
  L6_2 = L6_2.format
  L7_2 = "%.3f"
  L8_2 = L3_2.y
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = "-"
  L8_2 = string
  L8_2 = L8_2.format
  L9_2 = "%.3f"
  L10_2 = L3_2.z
  L8_2 = L8_2(L9_2, L10_2)
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "%.3f"
  L7_2 = A1_2.x
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = "-"
  L7_2 = string
  L7_2 = L7_2.format
  L8_2 = "%.3f"
  L9_2 = A1_2.y
  L7_2 = L7_2(L8_2, L9_2)
  L8_2 = "-"
  L9_2 = string
  L9_2 = L9_2.format
  L10_2 = "%.3f"
  L11_2 = A1_2.z
  L9_2 = L9_2(L10_2, L11_2)
  L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
  L6_2 = GetHashKey
  L7_2 = "L1_1"
  L6_2 = L6_2(L7_2)
  if A0_2 and L4_2 == L5_2 then
    L7_2 = math
    L7_2 = L7_2.random
    L8_2 = 1
    L9_2 = 10
    L7_2 = L7_2(L8_2, L9_2)
    if not (L7_2 <= 2) then
      L7_2 = L14_1
      L7_2 = L7_2[L2_2]
      if false ~= L7_2 then
        goto lbl_137
      end
    end
    L7_2 = GetGameTimer
    L7_2 = L7_2()
    L7_2 = L7_2 + 60000
    L8_2 = nil
    while true do
      L9_2 = DoesEntityExist
      L10_2 = L8_2
      L9_2 = L9_2(L10_2)
      if L9_2 then
        break
      end
      L9_2 = DoesEntityExist
      L10_2 = GetPlayerPed
      L11_2 = L2_2
      L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2(L11_2)
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
      if not L9_2 then
        break
      end
      L9_2 = CreateObject
      L10_2 = L6_2
      L11_2 = GetEntityCoords
      L12_2 = GetPlayerPed
      L13_2 = L2_2
      L12_2, L13_2, L14_2, L15_2, L16_2 = L12_2(L13_2)
      L11_2 = L11_2(L12_2, L13_2, L14_2, L15_2, L16_2)
      L12_2 = vector3
      L13_2 = 0.0
      L14_2 = 0.0
      L15_2 = 2.0
      L12_2 = L12_2(L13_2, L14_2, L15_2)
      L11_2 = L11_2 + L12_2
      L12_2 = true
      L13_2 = true
      L14_2 = false
      L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
      L8_2 = L9_2
      L9_2 = Citizen
      L9_2 = L9_2.Wait
      L10_2 = 2500
      L9_2(L10_2)
      L9_2 = GetGameTimer
      L9_2 = L9_2()
      if L7_2 < L9_2 then
        L9_2 = DoesEntityExist
        L10_2 = L8_2
        L9_2 = L9_2(L10_2)
        if not L9_2 then
          L9_2 = DoesEntityExist
          L10_2 = GetPlayerPed
          L11_2 = L2_2
          L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2 = L10_2(L11_2)
          L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
          if L9_2 then
            L9_2 = L14_1
            L9_2[L2_2] = false
            return
          end
        end
      end
      L9_2 = Citizen
      L9_2 = L9_2.Wait
      L10_2 = 2500
      L9_2(L10_2)
    end
    L9_2 = DoesEntityExist
    L10_2 = L8_2
    L9_2 = L9_2(L10_2)
    if L9_2 then
      L9_2 = DeleteEntity
      L10_2 = L8_2
      L9_2(L10_2)
    end
    ::lbl_137::
    L7_2 = L14_1
    L7_2[L2_2] = true
  else
    L7_2 = L14_1
    L7_2[L2_2] = false
    L7_2 = 0
    L8_2 = 0
    L9_2 = pairs
    L10_2 = L14_1
    L9_2, L10_2, L11_2, L12_2 = L9_2(L10_2)
    for L13_2, L14_2 in L9_2, L10_2, L11_2, L12_2 do
      L15_2 = GetPlayerName
      L16_2 = L13_2
      L15_2 = L15_2(L16_2)
      if L15_2 then
        if L14_2 then
          L7_2 = L7_2 + 1
        else
          L8_2 = L8_2 + 1
        end
      end
      L15_2 = Citizen
      L15_2 = L15_2.Wait
      L16_2 = 100
      L15_2(L16_2)
    end
    L9_2 = math
    L9_2 = L9_2.floor
    L10_2 = L8_2 / 2
    L9_2 = L9_2(L10_2)
    if L7_2 < L9_2 then
      while true do
        L9_2 = DoesEntityExist
        L10_2 = object
        L9_2 = L9_2(L10_2)
        if L9_2 then
          L9_2 = GetEntityModel
          L10_2 = L6_2
          L9_2 = L9_2(L10_2)
        end
      end
      L9_2 = print
      L10_2 = "Model now loaded correctly"
      L9_2(L10_2)
    end
  end
end
L15_1(L16_1, L17_1)
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = GetAllObjects
  L1_2 = L1_2()
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
L16_1 = RegisterNetEvent
L17_1 = "onResourceStop"
function L18_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  if A0_2 ~= L1_2 then
    return
  end
  L1_2 = promise
  L1_2 = L1_2.new
  L1_2 = L1_2()
  L2_2 = L15_1
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
L16_1(L17_1, L18_1)
L16_1 = {}
function L17_1()
  L16_1 = {}
  return false
end
L18_1 = RegisterServerCallback
L19_1 = Utils
L19_1 = L19_1.eventsPrefix
L20_1 = ":nexus:getJobs"
L19_1 = L19_1 .. L20_1
function L20_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Utils
  L2_2 = L2_2.isAllowed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = L17_1
  L2_2 = L2_2()
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L18_1(L19_1, L20_1)
L18_1 = RegisterServerCallback
L19_1 = Utils
L19_1 = L19_1.eventsPrefix
L20_1 = ":nexus:importJob"
L19_1 = L19_1 .. L20_1
function L20_1(A0_2, A1_2, A2_2)
  local isAllowed = Utils.isAllowed
  if not isAllowed(A0_2) then
    return
  end
  if A1_2 then
    A1_2("Nexus is disabled in the OutlawTwinCoder edition.")
  end
end
L18_1(L19_1, L20_1)
L18_1 = RegisterServerCallback
L19_1 = Utils
L19_1 = L19_1.eventsPrefix
L20_1 = ":nexus:uploadJob"
L19_1 = L19_1 .. L20_1
function L20_1(A0_2, A1_2, A2_2)
  local isAllowed = Utils.isAllowed
  if not isAllowed(A0_2) then
    return
  end
  if A1_2 then
    A1_2("Nexus is disabled in the OutlawTwinCoder edition.")
  end
end
L18_1(L19_1, L20_1)
L18_1 = RegisterServerCallback
L19_1 = Utils
L19_1 = L19_1.eventsPrefix
L20_1 = ":nexus:rateJob"
L19_1 = L19_1 .. L20_1
function L20_1(A0_2, A1_2, A2_2, A3_2)
  local isAllowed = Utils.isAllowed
  if not isAllowed(A0_2) then
    return
  end
  if A1_2 then
    A1_2(false)
  end
end
L18_1(L19_1, L20_1)
