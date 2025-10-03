local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = "skillcheck"
L1_1 = false
L2_1 = nil
L3_1 = RegisterNUICallback
L4_1 = "nuiReady"
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "loadDialog"
  L2_2 = L0_1
  L1_2.dialogName = L2_2
  L0_2(L1_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "skillCheckFinish"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.success
  if L2_2 then
    L3_2 = PlaySoundFrontend
    L4_2 = -1
    L5_2 = "Hack_Success"
    L6_2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
    L7_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = PlaySoundFrontend
    L4_2 = -1
    L5_2 = "Hack_Fail"
    L6_2 = "DLC_sum20_Business_Battle_AC_Sounds"
    L7_2 = true
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
  L3_2 = SetNuiFocus
  L4_2 = false
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = L2_1
  if L3_2 then
    L3_2 = L2_1
    L4_2 = L3_2
    L3_2 = L3_2.resolve
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  end
end
L3_1(L4_1, L5_1)
L3_1 = {}
L4_1 = {}
L4_1.speed = 1
L4_1.positiveBars = 6
L3_1[1] = L4_1
L4_1 = {}
L4_1.speed = 3
L4_1.positiveBars = 4
L3_1[2] = L4_1
L4_1 = {}
L4_1.speed = 5
L4_1.positiveBars = 5
L3_1[3] = L4_1
L4_1 = Dialogs
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = L1_1
  if L3_2 then
    L3_2 = false
    return L3_2
  end
  if A0_2 > 3 then
    A0_2 = 3
  end
  if A0_2 < 1 then
    A0_2 = 1
  end
  if not A1_2 then
    L3_2 = L3_1
    L3_2 = L3_2[A0_2]
    A1_2 = L3_2.speed
  end
  if not A2_2 then
    L3_2 = L3_1
    L3_2 = L3_2[A0_2]
    A2_2 = L3_2.positiveBars
  end
  L3_2 = true
  L1_1 = L3_2
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "skillcheck"
  L4_2.speed = A1_2
  L4_2.positiveBars = A2_2
  L3_2(L4_2)
  L3_2 = SetNuiFocus
  L4_2 = true
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = SetNuiFocusKeepInput
  L4_2 = true
  L3_2(L4_2)
  L3_2 = promise
  L3_2 = L3_2.new
  L3_2 = L3_2()
  L2_1 = L3_2
  L3_2 = Citizen
  L3_2 = L3_2.Await
  L4_2 = L2_1
  L3_2 = L3_2(L4_2)
  L4_2 = false
  L1_1 = L4_2
  return L3_2
end
L4_1.skillcheck = L5_1
L4_1 = exports
L5_1 = "skillcheck"
L6_1 = Dialogs
L6_1 = L6_1.skillcheck
L4_1(L5_1, L6_1)
L4_1 = Dialogs
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = L1_1
  if not L0_2 then
    return
  end
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "cancelSkillcheck"
  L0_2(L1_2)
  L0_2 = SetNuiFocus
  L1_2 = false
  L2_2 = false
  L0_2(L1_2, L2_2)
  L0_2 = false
  L1_1 = L0_2
  L0_2 = L2_1
  if L0_2 then
    L0_2 = L2_1
    L1_2 = L0_2
    L0_2 = L0_2.resolve
    L2_2 = false
    L0_2(L1_2, L2_2)
  end
end
L4_1.cancelSkillcheck = L5_1
L4_1 = exports
L5_1 = "cancelSkillcheck"
L6_1 = Dialogs
L6_1 = L6_1.cancelSkillcheck
L4_1(L5_1, L6_1)
