local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2.index
  L3_2 = A1_2.index
  L2_2 = L2_2 < L3_2
  return L2_2
end
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerCallback
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":boss:getJobGrades"
  L2_2 = L2_2 .. L3_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3
    L2_3 = {}
    L3_3 = pairs
    L4_3 = A0_3
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
    for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
      L9_3 = table
      L9_3 = L9_3.insert
      L10_3 = L2_3
      L11_3 = {}
      L12_3 = getLocalizedText
      L13_3 = "boss:rank_salary"
      L14_3 = L8_3.label
      L15_3 = Framework
      L15_3 = L15_3.groupDigits
      L16_3 = L8_3.salary
      L15_3, L16_3 = L15_3(L16_3)
      L12_3 = L12_3(L13_3, L14_3, L15_3, L16_3)
      L11_3.label = L12_3
      L12_3 = L8_3.id
      L11_3.gradeId = L12_3
      L12_3 = L8_3.grade
      L11_3.grade = L12_3
      L9_3(L10_3, L11_3)
    end
    L3_3 = Utils
    L3_3 = L3_3.openInteractionMenu
    L4_3 = "boss_menu_grades"
    L5_3 = getLocalizedText
    L6_3 = "boss_menu"
    L5_3 = L5_3(L6_3)
    L6_3 = L2_3
    function L7_3(A0_4, A1_4, A2_4)
      local L3_4, L4_4, L5_4, L6_4, L7_4, L8_4, L9_4, L10_4, L11_4
      L3_4 = A2_4.gradeId
      L4_4 = A2_4.grade
      if not L3_4 then
        return
      end
      L5_4 = Utils
      L5_4 = L5_4.askQuantity
      L6_4 = getLocalizedText
      L7_4 = "boss:new_salary"
      L6_4 = L6_4(L7_4)
      L7_4 = 1
      L8_4 = A1_3
      L5_4 = L5_4(L6_4, L7_4, L8_4)
      if not L5_4 then
        return
      end
      L6_4 = TriggerServerEvent
      L7_4 = Utils
      L7_4 = L7_4.eventsPrefix
      L8_4 = ":updateGradeSalary"
      L7_4 = L7_4 .. L8_4
      L8_4 = A0_2
      L9_4 = L3_4
      L10_4 = L4_4
      L11_4 = L5_4
      L6_4(L7_4, L8_4, L9_4, L10_4, L11_4)
      L6_4 = Utils
      L6_4 = L6_4.hideInteractionMenu
      L6_4()
    end
    function L8_3(A0_4)
      local L1_4
      L1_4 = Utils
      L1_4 = L1_4.hideInteractionMenu
      L1_4()
    end
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
  end
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = getLocalizedText
  L5_2 = "boss:cancel"
  L4_2 = L4_2(L5_2)
  L3_2.label = L4_2
  L3_2.value = "no"
  L4_2 = {}
  L5_2 = getLocalizedText
  L6_2 = "boss:fire"
  L5_2 = L5_2(L6_2)
  L4_2.label = L5_2
  L4_2.value = "yes"
  L2_2[1] = L3_2
  L2_2[2] = L4_2
  L3_2 = Utils
  L3_2 = L3_2.openInteractionMenu
  L4_2 = "boss_menu_employee_fire"
  L5_2 = getLocalizedText
  L6_2 = "boss_menu"
  L5_2 = L5_2(L6_2)
  L6_2 = L2_2
  function L7_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3
    L3_3 = A2_3.value
    if "yes" == L3_3 then
      L4_3 = TriggerServerEvent
      L5_3 = Utils
      L5_3 = L5_3.eventsPrefix
      L6_3 = ":boss:fireEmployee"
      L5_3 = L5_3 .. L6_3
      L6_3 = A0_2
      L7_3 = A1_2
      L4_3(L5_3, L6_3, L7_3)
    end
    L4_3 = openBoss
    L5_3 = A0_2
    L4_3(L5_3)
  end
  function L8_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
end
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L2_2 = Framework
  L2_2 = L2_2.getPlayerJob
  L2_2 = L2_2()
  L3_2 = TriggerServerPromise
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":retrieveJobRanks"
  L4_2 = L4_2 .. L5_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = {}
  L5_2 = pairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = table
    L11_2 = L11_2.insert
    L12_2 = L4_2
    L13_2 = {}
    L14_2 = getLocalizedText
    L15_2 = "boss:grade"
    L16_2 = L10_2.grade
    L17_2 = L10_2.label
    L18_2 = Framework
    L18_2 = L18_2.groupDigits
    L19_2 = L10_2.salary
    L18_2, L19_2 = L18_2(L19_2)
    L14_2 = L14_2(L15_2, L16_2, L17_2, L18_2, L19_2)
    L13_2.label = L14_2
    L14_2 = L10_2.grade
    L13_2.grade = L14_2
    L11_2(L12_2, L13_2)
  end
  L5_2 = Utils
  L5_2 = L5_2.openInteractionMenu
  L6_2 = "boss_menu_employee_change_grade"
  L7_2 = getLocalizedText
  L8_2 = "boss_menu"
  L7_2 = L7_2(L8_2)
  L8_2 = L4_2
  function L9_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L3_3 = A2_3.grade
    if not L3_3 then
      return
    end
    L4_3 = TriggerServerEvent
    L5_3 = Utils
    L5_3 = L5_3.eventsPrefix
    L6_3 = ":boss:changeGradeToEmployee"
    L5_3 = L5_3 .. L6_3
    L6_3 = A0_2
    L7_3 = A1_2
    L8_3 = L3_3
    L4_3(L5_3, L6_3, L7_3, L8_3)
  end
  function L10_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if not A1_2 then
    L2_2 = config
    A1_2 = L2_2.resetEmployeeWorkTimeEveryNDays
  end
  if not A0_2 then
    L2_2 = getLocalizedText
    L3_2 = "boss:work_time"
    L4_2 = 0
    L5_2 = 0
    return L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = math
  L2_2 = L2_2.floor
  L3_2 = A0_2 / 60
  L2_2 = L2_2(L3_2)
  L3_2 = math
  L3_2 = L3_2.floor
  L4_2 = A0_2 % 60
  L3_2 = L3_2(L4_2)
  L4_2 = getLocalizedText
  L5_2 = "boss:work_time"
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = A1_2
  return L4_2(L5_2, L6_2, L7_2, L8_2)
end
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  if not A2_2 then
    A2_2 = 7
  end
  L3_2 = TriggerServerPromise
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":boss:getEmployeeWorkTime"
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = {}
  L5_2 = {}
  L6_2 = L4_1
  L7_2 = L3_2
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  L5_2.label = L6_2
  L5_2.value = "work_time"
  L6_2 = {}
  L7_2 = getLocalizedText
  L8_2 = "boss:change_grade"
  L7_2 = L7_2(L8_2)
  L6_2.label = L7_2
  L6_2.value = "change_grade"
  L7_2 = {}
  L8_2 = getLocalizedText
  L9_2 = "boss:fire"
  L8_2 = L8_2(L9_2)
  L7_2.label = L8_2
  L7_2.value = "fire"
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L5_2 = Utils
  L5_2 = L5_2.openInteractionMenu
  L6_2 = "boss_menu_employee_management"
  L7_2 = getLocalizedText
  L8_2 = "boss_menu"
  L7_2 = L7_2(L8_2)
  L8_2 = L4_2
  function L9_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L3_3 = A2_3.value
    if "change_grade" == L3_3 then
      L4_3 = L3_1
      L5_3 = A0_2
      L6_3 = A1_2
      L4_3(L5_3, L6_3)
    elseif "fire" == L3_3 then
      L4_3 = L2_1
      L5_3 = A0_2
      L6_3 = A1_2
      L4_3(L5_3, L6_3)
    elseif "work_time" == L3_3 then
      L4_3 = Utils
      L4_3 = L4_3.askQuantity
      L5_3 = getLocalizedText
      L6_3 = "boss:work_time_days_input_title"
      L5_3 = L5_3(L6_3)
      L6_3 = 0
      L7_3 = 14
      L4_3 = L4_3(L5_3, L6_3, L7_3)
      if not L4_3 then
        return
      end
      L5_3 = manageEmployee
      L6_3 = A0_2
      L7_3 = A1_2
      L8_3 = L4_3
      L5_3(L6_3, L7_3, L8_3)
    end
  end
  function L10_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
end
manageEmployee = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = TriggerServerCallback
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":boss:getEmployees"
  L2_2 = L2_2 .. L3_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3
    L2_3 = {}
    L3_3 = pairs
    L4_3 = A0_3
    L3_3, L4_3, L5_3, L6_3 = L3_3(L4_3)
    for L7_3, L8_3 in L3_3, L4_3, L5_3, L6_3 do
      L9_3 = getLocalizedText
      L10_3 = "boss:employee"
      L11_3 = L8_3.firstname
      L12_3 = L8_3.lastname
      L13_3 = L8_3.job_grade
      L13_3 = A1_3[L13_3]
      L9_3 = L9_3(L10_3, L11_3, L12_3, L13_3)
      L10_3 = nil
      L11_3 = L8_3.isOnline
      if not L11_3 then
        L11_3 = getLocalizedText
        L12_3 = "boss:offline_suffix"
        L11_3 = L11_3(L12_3)
        L10_3 = L11_3
      else
        L11_3 = L8_3.isOnDuty
        if L11_3 then
          L11_3 = getLocalizedText
          L12_3 = "boss:on_duty_suffix"
          L11_3 = L11_3(L12_3)
          L10_3 = L11_3
        else
          L11_3 = getLocalizedText
          L12_3 = "boss:off_duty_suffix"
          L11_3 = L11_3(L12_3)
          L10_3 = L11_3
        end
      end
      L11_3 = table
      L11_3 = L11_3.insert
      L12_3 = L2_3
      L13_3 = {}
      L14_3 = L9_3
      L15_3 = L10_3
      L14_3 = L14_3 .. L15_3
      L13_3.label = L14_3
      L14_3 = L8_3.identifier
      L13_3.value = L14_3
      L11_3(L12_3, L13_3)
    end
    L3_3 = #L2_3
    if 0 == L3_3 then
      L3_3 = table
      L3_3 = L3_3.insert
      L4_3 = L2_3
      L5_3 = {}
      L6_3 = getLocalizedText
      L7_3 = "boss:no_employees"
      L6_3 = L6_3(L7_3)
      L5_3.label = L6_3
      L3_3(L4_3, L5_3)
    end
    L3_3 = Utils
    L3_3 = L3_3.openInteractionMenu
    L4_3 = "boss_menu_employees_management"
    L5_3 = getLocalizedText
    L6_3 = "boss_menu"
    L5_3 = L5_3(L6_3)
    L6_3 = L2_3
    function L7_3(A0_4, A1_4, A2_4)
      local L3_4, L4_4, L5_4, L6_4
      L3_4 = A2_4.value
      if not L3_4 then
        return
      end
      L4_4 = manageEmployee
      L5_4 = A0_2
      L6_4 = L3_4
      L4_4(L5_4, L6_4)
    end
    function L8_3(A0_4)
      local L1_4
      L1_4 = Utils
      L1_4 = L1_4.hideInteractionMenu
      L1_4()
    end
    L3_3(L4_3, L5_3, L6_3, L7_3, L8_3)
  end
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = Framework
  L3_2 = L3_2.getClosePlayers
  L4_2 = 10.0
  L5_2 = true
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = TriggerServerCallback
  L5_2 = Utils
  L5_2 = L5_2.eventsPrefix
  L6_2 = ":boss:getClosePlayersNames"
  L5_2 = L5_2 .. L6_2
  function L6_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3
    L1_3 = #A0_3
    if 0 == L1_3 then
      L1_3 = table
      L1_3 = L1_3.insert
      L2_3 = A0_3
      L3_3 = {}
      L4_3 = getLocalizedText
      L5_3 = "boss:nobody_close"
      L4_3 = L4_3(L5_3)
      L3_3.label = L4_3
      L1_3(L2_3, L3_3)
    end
    L1_3 = Utils
    L1_3 = L1_3.openInteractionMenu
    L2_3 = "boss_menu_employees_recruit"
    L3_3 = getLocalizedText
    L4_3 = "boss_menu"
    L3_3 = L3_3(L4_3)
    L4_3 = A0_3
    function L5_3(A0_4, A1_4, A2_4)
      local L3_4, L4_4, L5_4, L6_4, L7_4
      L3_4 = A2_4.serverId
      if not L3_4 then
        return
      end
      L4_4 = TriggerServerEvent
      L5_4 = Utils
      L5_4 = L5_4.eventsPrefix
      L6_4 = ":boss:recruitPlayer"
      L5_4 = L5_4 .. L6_4
      L6_4 = A0_2
      L7_4 = L3_4
      L4_4(L5_4, L6_4, L7_4)
    end
    function L6_3(A0_4)
      local L1_4
      L1_4 = Utils
      L1_4 = L1_4.hideInteractionMenu
      L1_4()
    end
    L1_3(L2_3, L3_3, L4_3, L5_3, L6_3)
  end
  L7_2 = L3_2
  L4_2(L5_2, L6_2, L7_2)
end
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = {}
  L2_2 = {}
  L3_2 = getLocalizedText
  L4_2 = "boss:employees_list"
  L3_2 = L3_2(L4_2)
  L2_2.label = L3_2
  L2_2.value = "employees"
  L3_2 = {}
  L4_2 = getLocalizedText
  L5_2 = "boss:recruit"
  L4_2 = L4_2(L5_2)
  L3_2.label = L4_2
  L3_2.value = "recruit"
  L1_2[1] = L2_2
  L1_2[2] = L3_2
  L2_2 = Utils
  L2_2 = L2_2.openInteractionMenu
  L3_2 = "boss_menu_employees"
  L4_2 = getLocalizedText
  L5_2 = "boss_menu"
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2
  function L6_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3
    L3_3 = A2_3.value
    if "employees" == L3_3 then
      L4_3 = L5_1
      L5_3 = A0_2
      L4_3(L5_3)
    elseif "recruit" == L3_3 then
      L4_3 = L6_1
      L5_3 = A0_2
      L4_3(L5_3)
    end
  end
  function L7_2(A0_3)
    local L1_3
    L1_3 = Utils
    L1_3 = L1_3.hideInteractionMenu
    L1_3()
  end
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Utils
  L1_2 = L1_2.hideInteractionMenu
  L1_2()
  L1_2 = TriggerServerCallback
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":getBossData"
  L2_2 = L2_2 .. L3_2
  function L3_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3
    L2_3 = {}
    L3_3 = {}
    L4_3 = getLocalizedText
    L5_3 = "boss:withdraw"
    L4_3 = L4_3(L5_3)
    L3_3.label = L4_3
    L3_3.value = "withdraw"
    L3_3.index = 1
    L2_3.withdraw = L3_3
    L3_3 = {}
    L4_3 = getLocalizedText
    L5_3 = "boss:deposit"
    L4_3 = L4_3(L5_3)
    L3_3.label = L4_3
    L3_3.value = "deposit"
    L3_3.index = 2
    L2_3.deposit = L3_3
    L3_3 = {}
    L4_3 = getLocalizedText
    L5_3 = "boss:wash_money"
    L4_3 = L4_3(L5_3)
    L3_3.label = L4_3
    L3_3.value = "wash"
    L3_3.index = 5
    L2_3.wash = L3_3
    L3_3 = {}
    L4_3 = getLocalizedText
    L5_3 = "boss:grades"
    L4_3 = L4_3(L5_3)
    L3_3.label = L4_3
    L3_3.value = "grades"
    L3_3.index = 3
    L2_3.grades = L3_3
    L3_3 = {}
    L4_3 = getLocalizedText
    L5_3 = "boss:employees"
    L4_3 = L4_3(L5_3)
    L3_3.label = L4_3
    L3_3.value = "employees"
    L3_3.index = 4
    L2_3.employees = L3_3
    L3_3 = {}
    L4_3 = pairs
    L5_3 = A0_3
    L4_3, L5_3, L6_3, L7_3 = L4_3(L5_3)
    for L8_3, L9_3 in L4_3, L5_3, L6_3, L7_3 do
      if L9_3 then
        L10_3 = table
        L10_3 = L10_3.insert
        L11_3 = L3_3
        L12_3 = L2_3[L8_3]
        L10_3(L11_3, L12_3)
      end
    end
    L4_3 = table
    L4_3 = L4_3.sort
    L5_3 = L3_3
    L6_3 = L0_1
    L4_3(L5_3, L6_3)
    if A1_3 then
      L4_3 = table
      L4_3 = L4_3.insert
      L5_3 = L3_3
      L6_3 = 1
      L7_3 = {}
      L8_3 = getLocalizedText
      L9_3 = "boss:society_money"
      L10_3 = Framework
      L10_3 = L10_3.groupDigits
      L11_3 = A1_3
      L10_3, L11_3, L12_3 = L10_3(L11_3)
      L8_3 = L8_3(L9_3, L10_3, L11_3, L12_3)
      L7_3.label = L8_3
      L4_3(L5_3, L6_3, L7_3)
    end
    L4_3 = Utils
    L4_3 = L4_3.openInteractionMenu
    L5_3 = "boss_menu"
    L6_3 = getLocalizedText
    L7_3 = "boss_menu"
    L6_3 = L6_3(L7_3)
    L7_3 = L3_3
    function L8_3(A0_4, A1_4, A2_4)
      local L3_4, L4_4, L5_4, L6_4, L7_4, L8_4
      L3_4 = A2_4.value
      if "withdraw" == L3_4 then
        L4_4 = Utils
        L4_4 = L4_4.askQuantity
        L5_4 = getLocalizedText
        L6_4 = "boss:withdraw_amount"
        L5_4 = L5_4(L6_4)
        L6_4 = 1
        L7_4 = nil
        L4_4 = L4_4(L5_4, L6_4, L7_4)
        if not L4_4 then
          return
        end
        L5_4 = TriggerServerEvent
        L6_4 = Utils
        L6_4 = L6_4.eventsPrefix
        L7_4 = ":withdrawSocietyMoney"
        L6_4 = L6_4 .. L7_4
        L7_4 = A0_2
        L8_4 = L4_4
        L5_4(L6_4, L7_4, L8_4)
        L5_4 = openBoss
        L6_4 = A0_2
        L5_4(L6_4)
      elseif "deposit" == L3_4 then
        L4_4 = Utils
        L4_4 = L4_4.askQuantity
        L5_4 = getLocalizedText
        L6_4 = "boss:deposit_amount"
        L5_4 = L5_4(L6_4)
        L6_4 = 1
        L7_4 = nil
        L4_4 = L4_4(L5_4, L6_4, L7_4)
        if not L4_4 then
          return
        end
        L5_4 = TriggerServerEvent
        L6_4 = Utils
        L6_4 = L6_4.eventsPrefix
        L7_4 = ":depositSocietyMoney"
        L6_4 = L6_4 .. L7_4
        L7_4 = A0_2
        L8_4 = L4_4
        L5_4(L6_4, L7_4, L8_4)
        L5_4 = openBoss
        L6_4 = A0_2
        L5_4(L6_4)
      elseif "grades" == L3_4 then
        L4_4 = L1_1
        L5_4 = A0_2
        L4_4(L5_4)
      elseif "employees" == L3_4 then
        L4_4 = L7_1
        L5_4 = A0_2
        L4_4(L5_4)
      elseif "wash" == L3_4 then
        L4_4 = Utils
        L4_4 = L4_4.askQuantity
        L5_4 = getLocalizedText
        L6_4 = "boss:how_much_to_wash"
        L5_4 = L5_4(L6_4)
        L6_4 = 1
        L7_4 = nil
        L4_4 = L4_4(L5_4, L6_4, L7_4)
        if not L4_4 then
          return
        end
        L5_4 = TriggerServerEvent
        L6_4 = Utils
        L6_4 = L6_4.eventsPrefix
        L7_4 = ":washMoney"
        L6_4 = L6_4 .. L7_4
        L7_4 = A0_2
        L8_4 = L4_4
        L5_4(L6_4, L7_4, L8_4)
      end
    end
    function L9_3(A0_4)
      local L1_4
      L1_4 = Utils
      L1_4 = L1_4.hideInteractionMenu
      L1_4()
    end
    L4_3(L5_3, L6_3, L7_3, L8_3, L9_3)
  end
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
end
openBoss = L8_1
