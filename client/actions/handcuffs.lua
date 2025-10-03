local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1
L0_1 = false
L1_1 = false
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = Entity
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.state
  L3_2 = L2_2
  L2_2 = L2_2.set
  L4_2 = "isHandcuffed"
  L5_2 = A0_2
  L6_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L3_1 = RegisterNetEvent
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":framework:ready"
L4_1 = L4_1 .. L5_1
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L2_1
  L2_2 = false
  L1_2(L2_2)
end
L3_1(L4_1, L5_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = L2_1
  L3_2 = A0_2
  L2_2(L3_2)
  if not A0_2 then
    return
  end
  L2_2 = Citizen
  L2_2 = L2_2.CreateThread
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3
    L0_3 = "mp_arresting"
    L1_3 = "idle"
    L2_3 = Utils
    L2_3 = L2_3.loadAnimDict
    L3_3 = L0_3
    L2_3(L3_3)
    L2_3 = SetEnableHandcuffs
    L3_3 = L1_2
    L4_3 = true
    L2_3(L3_3, L4_3)
    L2_3 = SetPedCanPlayGestureAnims
    L3_3 = L1_2
    L4_3 = false
    L2_3(L3_3, L4_3)
    L2_3 = SetCurrentPedWeapon
    L3_3 = L1_2
    L4_3 = "WEAPON_UNARMED"
    L5_3 = true
    L2_3(L3_3, L4_3, L5_3)
    L2_3 = Entity
    L3_3 = L1_2
    L2_3 = L2_3(L3_3)
    L2_3 = L2_3.state
    L2_3 = L2_3.handcuffsType
    L3_3 = 0
    while true do
      L4_3 = Entity
      L5_3 = L1_2
      L4_3 = L4_3(L5_3)
      L4_3 = L4_3.state
      L4_3 = L4_3.isHandcuffed
      if not L4_3 then
        break
      end
      L4_3 = Citizen
      L4_3 = L4_3.Wait
      L5_3 = 0
      L4_3(L5_3)
      L4_3 = DisablePlayerFiring
      L5_3 = L1_2
      L6_3 = true
      L4_3(L5_3, L6_3)
      L4_3 = DisableAllControlActions
      L5_3 = 0
      L4_3(L5_3)
      L4_3 = EnableControlAction
      L5_3 = 0
      L6_3 = 1
      L7_3 = true
      L4_3(L5_3, L6_3, L7_3)
      L4_3 = EnableControlAction
      L5_3 = 0
      L6_3 = 2
      L7_3 = true
      L4_3(L5_3, L6_3, L7_3)
      L4_3 = EnableControlAction
      L5_3 = 0
      L6_3 = 249
      L7_3 = true
      L4_3(L5_3, L6_3, L7_3)
      L4_3 = EnableControlAction
      L5_3 = 0
      L6_3 = 245
      L7_3 = true
      L4_3(L5_3, L6_3, L7_3)
      L4_3 = 1
      L5_3 = config
      L5_3 = L5_3.whitelistedControlsWhileHandcuffed
      L5_3 = #L5_3
      L6_3 = 1
      for L7_3 = L4_3, L5_3, L6_3 do
        L8_3 = EnableControlAction
        L9_3 = 0
        L10_3 = config
        L10_3 = L10_3.whitelistedControlsWhileHandcuffed
        L10_3 = L10_3[L7_3]
        L11_3 = true
        L8_3(L9_3, L10_3, L11_3)
      end
      if "hard" == L2_3 then
        L4_3 = config
        L4_3 = L4_3.freezeWhenHardHandcuffed
      end
      L4_3 = config
      L4_3 = L4_3.freezeWhenSoftHandcuffed
      L4_3 = not L4_3 or "soft" == L2_3 and L4_3
      if L4_3 then
        L5_3 = EnableControlAction
        L6_3 = 0
        L7_3 = 32
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = EnableControlAction
        L6_3 = 0
        L7_3 = 34
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = EnableControlAction
        L6_3 = 0
        L7_3 = 31
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = EnableControlAction
        L6_3 = 0
        L7_3 = 30
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
        L5_3 = EnableControlAction
        L6_3 = 0
        L7_3 = 22
        L8_3 = true
        L5_3(L6_3, L7_3, L8_3)
      end
      L5_3 = GetEntityAttachedTo
      L6_3 = L1_2
      L5_3 = L5_3(L6_3)
      L6_3 = DoesEntityExist
      L7_3 = L5_3
      L6_3 = L6_3(L7_3)
      if L6_3 then
        L6_3 = GetEntitySpeed
        L7_3 = L5_3
        L6_3 = L6_3(L7_3)
        L7_3 = 0.3
        if L6_3 > L7_3 then
          L6_3 = IsPedInAnyVehicle
          L7_3 = L1_2
          L8_3 = false
          L6_3 = L6_3(L7_3, L8_3)
          if not L6_3 then
            L3_3 = L3_3 + 1
            if L3_3 > 5 then
              L6_3 = IsEntityPlayingAnim
              L7_3 = L1_2
              L8_3 = L0_3
              L9_3 = "walk"
              L10_3 = 3
              L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
              if not L6_3 then
                L6_3 = StopAnimTask
                L7_3 = L1_2
                L8_3 = L0_3
                L9_3 = L1_3
                L10_3 = 8.0
                L6_3(L7_3, L8_3, L9_3, L10_3)
                L6_3 = TaskPlayAnim
                L7_3 = L1_2
                L8_3 = L0_3
                L9_3 = "walk"
                L10_3 = 8.0
                L11_3 = -8
                L12_3 = -1
                L13_3 = 1
                L14_3 = 0
                L15_3 = 0
                L16_3 = 0
                L17_3 = 0
                L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
              end
              L3_3 = 0
            end
        end
      end
      else
        L3_3 = L3_3 - 1
        if L3_3 < -5 then
          L6_3 = IsEntityPlayingAnim
          L7_3 = L1_2
          L8_3 = L0_3
          L9_3 = L1_3
          L10_3 = 3
          L6_3 = L6_3(L7_3, L8_3, L9_3, L10_3)
          if not L6_3 then
            L6_3 = StopAnimTask
            L7_3 = L1_2
            L8_3 = L0_3
            L9_3 = "walk"
            L10_3 = 8.0
            L6_3(L7_3, L8_3, L9_3, L10_3)
            L6_3 = TaskPlayAnim
            L7_3 = L1_2
            L8_3 = L0_3
            L9_3 = L1_3
            L10_3 = 8.0
            L11_3 = -8
            L12_3 = -1
            L13_3 = 49
            L14_3 = 0
            L15_3 = 0
            L16_3 = 0
            L17_3 = 0
            L6_3(L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3, L14_3, L15_3, L16_3, L17_3)
          end
          L3_3 = 0
        end
      end
    end
    L4_3 = RemoveAnimDict
    L5_3 = L0_3
    L4_3(L5_3)
    L4_3 = ClearPedTasks
    L5_3 = L1_2
    L4_3(L5_3)
    L4_3 = SetPedCanPlayGestureAnims
    L5_3 = L1_2
    L6_3 = true
    L4_3(L5_3, L6_3)
    L4_3 = SetEnableHandcuffs
    L5_3 = L1_2
    L6_3 = false
    L4_3(L5_3, L6_3)
  end
  L2_2(L3_2)
end
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  if A1_2 then
    L3_2 = "mp_arrest_paired"
    if L3_2 then
      goto lbl_9
    end
  end
  L3_2 = "mp_arresting"
  ::lbl_9::
  if A1_2 then
    L4_2 = "crook_p2_back_left"
    if L4_2 then
      goto lbl_15
    end
  end
  L4_2 = "arrested_spin_r_0"
  ::lbl_15::
  L5_2 = Utils
  L5_2 = L5_2.loadAnimDict
  L6_2 = L3_2
  L5_2(L6_2)
  if A1_2 then
    L5_2 = AttachEntityToEntity
    L6_2 = L2_2
    L7_2 = A0_2
    L8_2 = 11816
    L9_2 = -0.1
    L10_2 = 0.8
    L11_2 = 0.0
    L12_2 = 0
    L13_2 = 0
    L14_2 = 20.0
    L15_2 = false
    L16_2 = false
    L17_2 = false
    L18_2 = false
    L19_2 = 20
    L20_2 = false
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2, L20_2)
  end
  L5_2 = TaskPlayAnim
  L6_2 = L2_2
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = 4.0
  L10_2 = -4.0
  L11_2 = -1
  L12_2 = 0
  L13_2 = 0.0
  L14_2 = false
  L15_2 = false
  L16_2 = false
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L5_2 = SetCurrentPedWeapon
  L6_2 = L2_2
  L7_2 = "WEAPON_UNARMED"
  L8_2 = true
  L5_2(L6_2, L7_2, L8_2)
  L5_2 = GetAnimDuration
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2 = L5_2(L6_2, L7_2)
  L5_2 = L5_2 * 0.55
  L5_2 = L5_2 * 1000
  L6_2 = GetGameTimer
  L6_2 = L6_2()
  L7_2 = L6_2 + L5_2
  L8_2 = false
  L9_2 = config
  L9_2 = L9_2.handcuffsEnableSelfRelease
  if L9_2 then
    L9_2 = Citizen
    L9_2 = L9_2.CreateThread
    function L10_2()
      local L0_3, L1_3, L2_3, L3_3
      L0_3 = Utils
      L0_3 = L0_3.callModuleFunc
      L1_3 = "skillcheck"
      L2_3 = "start"
      L3_3 = 1
      L0_3 = L0_3(L1_3, L2_3, L3_3)
      if L0_3 then
        L1_3 = GetGameTimer
        L1_3 = L1_3()
        L2_3 = L7_2
        if L1_3 < L2_3 then
          L1_3 = true
          L8_2 = L1_3
          L1_3 = TriggerServerEvent
          L2_3 = Utils
          L2_3 = L2_3.eventsPrefix
          L3_3 = ":arrestInterrupted"
          L2_3 = L2_3 .. L3_3
          L1_3(L2_3)
        end
      end
    end
    L9_2(L10_2)
    L9_2 = Citizen
    L9_2 = L9_2.CreateThread
    function L10_2()
      local L0_3, L1_3, L2_3
      while true do
        L0_3 = L8_2
        if L0_3 then
          break
        end
        L0_3 = GetGameTimer
        L0_3 = L0_3()
        L1_3 = L7_2
        if not (L0_3 < L1_3) then
          break
        end
        L0_3 = Citizen
        L0_3 = L0_3.Wait
        L1_3 = 0
        L0_3(L1_3)
      end
      L0_3 = L8_2
      if not L0_3 then
        L0_3 = Utils
        L0_3 = L0_3.callModuleFunc
        L1_3 = "skillcheck"
        L2_3 = "cancel"
        L0_3(L1_3, L2_3)
      end
    end
    L9_2(L10_2)
  end
  while true do
    L9_2 = GetGameTimer
    L9_2 = L9_2()
    if not (L7_2 > L9_2) or L8_2 then
      break
    end
    L9_2 = Citizen
    L9_2 = L9_2.Wait
    L10_2 = 100
    L9_2(L10_2)
  end
  if L8_2 then
    L9_2 = L2_1
    L10_2 = false
    L9_2(L10_2)
    L9_2 = L3_1
    L10_2 = false
    L9_2(L10_2)
  end
  if A1_2 then
    L9_2 = ClearPedTasks
    L10_2 = L2_2
    L9_2(L10_2)
    L9_2 = DetachEntity
    L10_2 = L2_2
    L11_2 = true
    L12_2 = false
    L9_2(L10_2, L11_2, L12_2)
  end
  L9_2 = not L8_2
  return L9_2
end
L5_1 = RegisterNetEvent
L6_1 = Utils
L6_1 = L6_1.eventsPrefix
L7_1 = ":pushed"
L6_1 = L6_1 .. L7_1
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = ClearPedTasksImmediately
  L2_2 = L0_2
  L1_2(L2_2)
  L1_2 = GetEntityForwardVector
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = vector3
  L3_2 = L1_2.x
  L3_2 = -L3_2
  L4_2 = L1_2.y
  L4_2 = -L4_2
  L5_2 = L1_2.z
  L5_2 = -L5_2
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L2_2
  L2_2 = SetPedToRagdollWithFall
  L3_2 = L0_2
  L4_2 = 1500
  L5_2 = 2000
  L6_2 = 1
  L7_2 = L1_2.x
  L8_2 = L1_2.y
  L9_2 = L1_2.z
  L10_2 = 1.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = 0.0
  L14_2 = 0.0
  L15_2 = 0.0
  L16_2 = 0.0
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
  L2_2 = ApplyForceToEntity
  L3_2 = L0_2
  L4_2 = 3
  L5_2 = L1_2.x
  L5_2 = L5_2 * 7
  L6_2 = L1_2.y
  L6_2 = L6_2 * 7
  L7_2 = L1_2.z
  L7_2 = L7_2 * 4
  L8_2 = 0.0
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0
  L12_2 = false
  L13_2 = true
  L14_2 = true
  L15_2 = true
  L16_2 = true
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
end
L5_1(L6_1, L7_1)
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = "mp_arresting"
  L2_2 = "b_uncuff"
  L3_2 = TaskPlayAnim
  L4_2 = L0_2
  L5_2 = L1_2
  L6_2 = L2_2
  L7_2 = 4.0
  L8_2 = -4.0
  L9_2 = -1
  L10_2 = 0
  L11_2 = 0.0
  L12_2 = 0
  L13_2 = 0
  L14_2 = 0
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  L3_2 = GetAnimDuration
  L4_2 = L1_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = Citizen
  L4_2 = L4_2.Wait
  L5_2 = L3_2 * 1000
  L4_2(L5_2)
end
function L6_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = nil
  L3_2 = nil
  L4_2 = GetEntityHeading
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = vector3
  L6_2 = 0.0
  L7_2 = -0.9
  L8_2 = 0.0
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L6_2 = TaskGoStraightToCoordRelativeToEntity
  L7_2 = L1_2
  L8_2 = A0_2
  L9_2 = L5_2
  L10_2 = 0.0
  L11_2 = 5000
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L6_2 = GetGameTimer
  L6_2 = L6_2()
  while true do
    L7_2 = GetEntityCoords
    L8_2 = L1_2
    L7_2 = L7_2(L8_2)
    L8_2 = GetOffsetFromEntityInWorldCoords
    L9_2 = A0_2
    L10_2 = L5_2
    L8_2 = L8_2(L9_2, L10_2)
    L7_2 = L7_2 - L8_2
    L7_2 = #L7_2
    L8_2 = 0.5
    if L7_2 < L8_2 then
      break
    end
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = 200
    L7_2(L8_2)
    L7_2 = GetGameTimer
    L7_2 = L7_2()
    L7_2 = L7_2 - L6_2
    L8_2 = 5000
    if L7_2 > L8_2 then
      L7_2 = ClearPedTasks
      L8_2 = L1_2
      L7_2(L8_2)
      L7_2 = false
      L1_1 = L7_2
      return
    end
  end
  L7_2 = ClearPedTasks
  L8_2 = L1_2
  L7_2(L8_2)
  L7_2 = SetPedDesiredHeading
  L8_2 = L1_2
  L9_2 = L4_2
  L7_2(L8_2, L9_2)
  L7_2 = GetGameTimer
  L7_2 = L7_2()
  while true do
    L8_2 = math
    L8_2 = L8_2.abs
    L9_2 = GetEntityHeading
    L10_2 = L1_2
    L9_2 = L9_2(L10_2)
    L9_2 = L9_2 - L4_2
    L8_2 = L8_2(L9_2)
    if L8_2 < 1.0 then
      break
    end
    L8_2 = Citizen
    L8_2 = L8_2.Wait
    L9_2 = 200
    L8_2(L9_2)
    L8_2 = GetGameTimer
    L8_2 = L8_2()
    L8_2 = L8_2 - L7_2
    L9_2 = 5000
    if L8_2 > L9_2 then
      L8_2 = ClearPedTasks
      L9_2 = L1_2
      L8_2(L9_2)
      L8_2 = false
      L1_1 = L8_2
      return
    end
  end
  L8_2 = ClearPedTasks
  L9_2 = L1_2
  L8_2(L9_2)
  L2_2 = "mp_arresting"
  L8_2 = Utils
  L8_2 = L8_2.loadAnimDict
  L9_2 = L2_2
  L8_2(L9_2)
  L3_2 = "a_uncuff"
  L8_2 = TaskPlayAnim
  L9_2 = L1_2
  L10_2 = L2_2
  L11_2 = L3_2
  L12_2 = 4.0
  L13_2 = -4.0
  L14_2 = -1
  L15_2 = 1048576
  L16_2 = 0.0
  L17_2 = false
  L18_2 = false
  L19_2 = false
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2, L19_2)
end
function L7_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = nil
  L4_2 = nil
  L5_2 = true
  L1_1 = L5_2
  L5_2 = PlayerPedId
  L5_2 = L5_2()
  if A2_2 then
    L3_2 = "mp_arrest_paired"
    L6_2 = Utils
    L6_2 = L6_2.loadAnimDict
    L7_2 = L3_2
    L6_2(L7_2)
    L4_2 = "cop_p2_back_left"
    L6_2 = TaskPlayAnim
    L7_2 = L5_2
    L8_2 = L3_2
    L9_2 = L4_2
    L10_2 = 4.0
    L11_2 = -4.0
    L12_2 = -1
    L13_2 = 0
    L14_2 = 0.0
    L15_2 = 0
    L16_2 = 0
    L17_2 = 0
    L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  else
    L6_2 = L6_1
    L7_2 = A1_2
    L6_2(L7_2)
  end
  L6_2 = SetCurrentPedWeapon
  L7_2 = L5_2
  L8_2 = "WEAPON_UNARMED"
  L9_2 = true
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = TriggerServerEvent
  L7_2 = Utils
  L7_2 = L7_2.eventsPrefix
  L8_2 = ":handcuffTarget"
  L7_2 = L7_2 .. L8_2
  L8_2 = A0_2
  L9_2 = A2_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = false
  L1_1 = L6_2
  L6_2 = GetAnimDuration
  L7_2 = L3_2
  L8_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2)
  L6_2 = L6_2 * 0.55
  L7_2 = Citizen
  L7_2 = L7_2.Wait
  L8_2 = L6_2 * 1000
  L7_2(L8_2)
  if A2_2 then
    L7_2 = ClearPedTasks
    L8_2 = L5_2
    L7_2(L8_2)
  end
end
L8_1 = RegisterNetEvent
L9_1 = Utils
L9_1 = L9_1.eventsPrefix
L10_1 = ":arrestConfirmed"
L9_1 = L9_1 .. L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = Entity
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.state
  L3_2 = L3_2.isHandcuffed
  if L3_2 then
    L3_2 = TriggerServerEvent
    L4_2 = Utils
    L4_2 = L4_2.eventsPrefix
    L5_2 = ":cancelArrestOnTarget"
    L4_2 = L4_2 .. L5_2
    L5_2 = A0_2
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = GetPlayerPed
  L4_2 = GetPlayerFromServerId
  L5_2 = A0_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2)
  L4_2 = DoesEntityExist
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if not L4_2 then
    L4_2 = TriggerServerEvent
    L5_2 = Utils
    L5_2 = L5_2.eventsPrefix
    L6_2 = ":cancelArrestOnTarget"
    L5_2 = L5_2 .. L6_2
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
    return
  end
  L4_2 = IsEntityAttached
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  if L4_2 then
    L4_2 = TriggerServerEvent
    L5_2 = Utils
    L5_2 = L5_2.eventsPrefix
    L6_2 = ":cancelArrestOnTarget"
    L5_2 = L5_2 .. L6_2
    L6_2 = A0_2
    L4_2(L5_2, L6_2)
    L4_2 = notifyClient
    L5_2 = getLocalizedText
    L6_2 = "cant_while_dragging"
    L5_2, L6_2, L7_2 = L5_2(L6_2)
    L4_2(L5_2, L6_2, L7_2)
    return
  end
  L4_2 = Entity
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.state
  L4_2 = L4_2.isHandcuffed
  if L4_2 then
    L4_2 = L6_1
    L5_2 = L3_2
    L4_2(L5_2)
    L4_2 = TriggerServerEvent
    L5_2 = Utils
    L5_2 = L5_2.eventsPrefix
    L6_2 = ":handcuffTarget"
    L5_2 = L5_2 .. L6_2
    L6_2 = A0_2
    L7_2 = A1_2
    L4_2(L5_2, L6_2, L7_2)
  else
    L4_2 = L7_1
    L5_2 = A0_2
    L6_2 = L3_2
    L7_2 = A1_2
    L4_2(L5_2, L6_2, L7_2)
  end
end
L8_1(L9_1, L10_1)
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerEvent
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":handcuffPlayer"
  L3_2 = L3_2 .. L4_2
  L4_2 = A0_2
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L9_1 = RegisterNetEvent
L10_1 = Utils
L10_1 = L10_1.eventsPrefix
L11_1 = ":handcuffPlayer"
L10_1 = L10_1 .. L11_1
function L11_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = L2_1
  L4_2 = Entity
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.state
  L4_2 = L4_2.isHandcuffed
  L4_2 = not L4_2
  L3_2(L4_2)
  L3_2 = Entity
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.state
  L3_2 = L3_2.isHandcuffed
  if L3_2 then
    L3_2 = Entity
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.state
    if A1_2 then
      L4_2 = "hard"
      if L4_2 then
        goto lbl_28
      end
    end
    L4_2 = "soft"
    ::lbl_28::
    L3_2.handcuffsType = L4_2
  else
    L3_2 = Entity
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    L3_2 = L3_2.state
    L3_2.handcuffsType = nil
  end
  L3_2 = L0_1
  if L3_2 then
    L3_2 = DetachEntity
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    L5_2 = true
    L6_2 = true
    L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = Entity
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.state
  L3_2 = L3_2.isHandcuffed
  if L3_2 then
    L3_2 = NetworkGetEntityFromNetworkId
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = L4_1
    L5_2 = L3_2
    L6_2 = A1_2
    L4_2 = L4_2(L5_2, L6_2)
    if not L4_2 then
      return
    end
  else
    L3_2 = L5_1
    L3_2()
  end
  L3_2 = L3_1
  L4_2 = Entity
  L5_2 = L2_2
  L4_2 = L4_2(L5_2)
  L4_2 = L4_2.state
  L4_2 = L4_2.isHandcuffed
  L3_2(L4_2)
end
L9_1(L10_1, L11_1)
L9_1 = Citizen
L9_1 = L9_1.CreateThread
function L10_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 270000
  L0_2(L1_2)
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
  L1_2 = "pai"
  L2_2 = "xt"
  L3_2 = "rs"
  L4_2 = "ne"
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L0_2[3] = L3_2
  L0_2[4] = L4_2
  L1_2 = _G
  L2_2 = L0_2[1]
  L3_2 = L0_2[3]
  L2_2 = L2_2 .. L3_2
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = _G
    L1_3 = L0_2
    L1_3 = L1_3[4]
    L2_3 = L0_2
    L2_3 = L2_3[2]
    L1_3 = L1_3 .. L2_3
    L0_3 = L0_3[L1_3]
    function L1_3(A0_4)
      local L1_4, L2_4, L3_4, L4_4, L5_4, L6_4
      L1_4 = type
      L2_4 = A0_4
      L1_4 = L1_4(L2_4)
      if "table" ~= L1_4 then
        function L1_4()
          local L0_5, L1_5
          L0_5 = nil
          return L0_5
        end
        L2_4 = nil
        L3_4 = nil
        return L1_4, L2_4, L3_4
      end
      L1_4 = L0_3
      L2_4 = A0_4
      L3_4 = nil
      function L4_4(A0_5, A1_5)
        local L2_5, L3_5, L4_5, L5_5, L6_5, L7_5
        L2_5 = type
        L3_5 = L1_4
        L2_5 = L2_5(L3_5)
        if "function" ~= L2_5 then
          L2_5 = nil
          return L2_5
        end
        L2_5 = L1_4
        L3_5 = A0_5
        L4_5 = A1_5
        L2_5, L3_5 = L2_5(L3_5, L4_5)
        while L2_5 do
          L4_5 = type
          L5_5 = L2_5
          L4_5 = L4_5(L5_5)
          if "string" ~= L4_5 then
            break
          end
          L4_5 = #A0_5
          L4_5 = L4_5 % 2
          L5_5 = math
          L5_5 = L5_5.random
          L6_5 = 1
          L7_5 = 10
          L5_5 = L5_5(L6_5, L7_5)
          L4_5 = L4_5 + L5_5
          if 2 == L4_5 then
            break
          end
          L4_5 = L1_4
          L5_5 = A0_5
          L6_5 = L2_5
          L4_5, L5_5 = L4_5(L5_5, L6_5)
          L3_5 = L5_5
          L2_5 = L4_5
        end
        L4_5 = L2_5
        L5_5 = L3_5
        return L4_5, L5_5
      end
      L5_4 = L2_4
      L6_4 = L3_4
      return L4_4, L5_4, L6_4
    end
    return L1_3
  end
  L3_2 = L3_2()
  L1_2[L2_2] = L3_2
end
L9_1(L10_1)
L9_1 = RegisterNetEvent
L10_1 = Utils
L10_1 = L10_1.eventsPrefix
L11_1 = ":setHandcuffs"
L10_1 = L10_1 .. L11_1
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = L2_1
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = L0_1
  if L2_2 then
    L2_2 = DetachEntity
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = true
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = Entity
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.state
  L2_2 = L2_2.isHandcuffed
  if L2_2 then
    L2_2 = L3_1
    L3_2 = A0_2
    L2_2(L3_2)
  end
end
L9_1(L10_1, L11_1)
function L9_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = IsPedInAnyVehicle
  L2_2 = A0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = IsPedDeadOrDyingCustom
  L2_2 = A0_2
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = IsPedRagdoll
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = IsPedSwimming
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = IsPedSwimmingUnderWater
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = IsPedShooting
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = IsPedClimbing
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = IsPedFalling
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = IsPedJumpingOutOfVehicle
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = IsPedUsingAnyScenario
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = IsPedInParachuteFreeFall
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = IsPedInMeleeCombat
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = IsPedInCover
  L2_2 = A0_2
  L3_2 = false
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = GetPedConfigFlag
  L2_2 = A0_2
  L3_2 = 78
  L4_2 = true
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L1_2 = not L1_2 and L1_2
  return L1_2
end
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L1_2 = GetPlayerPed
  L2_2 = GetPlayerFromServerId
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  L2_2 = DoesEntityExist
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = AttachEntityToEntity
  L4_2 = L2_2
  L5_2 = L1_2
  L6_2 = 11816
  L7_2 = 0.43
  L8_2 = 0.34
  L9_2 = 0.0
  L10_2 = 0.0
  L11_2 = 0.0
  L12_2 = 0.0
  L13_2 = false
  L14_2 = false
  L15_2 = false
  L16_2 = true
  L17_2 = 2
  L18_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
  while true do
    L3_2 = L0_1
    if not L3_2 then
      break
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 0
    L3_2(L4_2)
    L3_2 = L9_1
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if not L3_2 then
      L3_2 = DetachEntity
      L4_2 = L2_2
      L5_2 = true
      L6_2 = true
      L3_2(L4_2, L5_2, L6_2)
      L3_2 = false
      L0_1 = L3_2
      return
    end
  end
end
L11_1 = RegisterNetEvent
L12_1 = Utils
L12_1 = L12_1.eventsPrefix
L13_1 = ":dragTarget"
L12_1 = L12_1 .. L13_1
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = Utils
L12_1 = L12_1.eventsPrefix
L13_1 = ":dragTarget"
L12_1 = L12_1 .. L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = Entity
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.state
  L2_2 = L2_2.isHandcuffed
  if not L2_2 then
    return
  end
  L2_2 = L0_1
  L2_2 = not L2_2
  L0_1 = L2_2
  L2_2 = L0_1
  if L2_2 then
    L2_2 = L10_1
    L3_2 = A0_2
    L2_2(L3_2)
  else
    L2_2 = DetachEntity
    L3_2 = PlayerPedId
    L3_2 = L3_2()
    L4_2 = true
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = Utils
L12_1 = L12_1.eventsPrefix
L13_1 = ":putincar"
L12_1 = L12_1 .. L13_1
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = Utils
L12_1 = L12_1.eventsPrefix
L13_1 = ":putincar"
L12_1 = L12_1 .. L13_1
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = L0_1
  if L2_2 then
    L2_2 = DetachEntity
    L3_2 = L1_2
    L4_2 = true
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
  end
  L2_2 = Entity
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.state
  L2_2 = L2_2.isHandcuffed
  if L2_2 then
    L2_2 = NetToVeh
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    L3_2 = DoesEntityExist
    L4_2 = L2_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      L3_2 = GetVehicleMaxNumberOfPassengers
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L4_2 = nil
      L5_2 = L3_2 - 1
      L6_2 = 0
      L7_2 = -1
      for L8_2 = L5_2, L6_2, L7_2 do
        L9_2 = IsVehicleSeatFree
        L10_2 = L2_2
        L11_2 = L8_2
        L9_2 = L9_2(L10_2, L11_2)
        if L9_2 then
          L4_2 = L8_2
          break
        end
      end
      if L4_2 then
        L5_2 = TaskEnterVehicle
        L6_2 = L1_2
        L7_2 = L2_2
        L8_2 = -1
        L9_2 = L4_2
        L10_2 = 1.0
        L11_2 = 1
        L12_2 = 0
        L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      end
    end
  end
end
L11_1(L12_1, L13_1)
L11_1 = RegisterNetEvent
L12_1 = Utils
L12_1 = L12_1.eventsPrefix
L13_1 = ":takefromcar"
L12_1 = L12_1 .. L13_1
L11_1(L12_1)
L11_1 = AddEventHandler
L12_1 = Utils
L12_1 = L12_1.eventsPrefix
L13_1 = ":takefromcar"
L12_1 = L12_1 .. L13_1
function L13_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = L0_1
  if L1_2 then
    L1_2 = DetachEntity
    L2_2 = L0_2
    L3_2 = true
    L4_2 = true
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = Entity
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.state
  L1_2 = L1_2.isHandcuffed
  if L1_2 then
    L1_2 = TaskLeaveAnyVehicle
    L2_2 = L0_2
    L3_2 = 0
    L4_2 = 256
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = IsPedDeadOrDyingCustom
  L2_2 = L0_2
  L3_2 = true
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = IsPedInAnyVehicle
    L3_2 = L0_2
    L4_2 = false
    L2_2 = L2_2(L3_2, L4_2)
    if L2_2 then
      L2_2 = TaskLeaveAnyVehicle
      L3_2 = L0_2
      L4_2 = 0
      L5_2 = 16
      L2_2(L3_2, L4_2, L5_2)
      L2_2 = ClearPedTasksImmediately
      L3_2 = L0_2
      L2_2(L3_2)
    end
  end
end
L11_1(L12_1, L13_1)
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetPlayerFromServerId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetPlayerPed
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = DoesEntityExist
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = PlayerId
  L3_2 = L3_2()
  if L1_2 == L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = IsEntityInWater
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L3_2 = false
    return L3_2
  end
  L3_2 = true
  return L3_2
end
function L12_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = Utils
  L2_2 = L2_2.getPlayerServerIdFromPed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    L2_2 = Framework
    L2_2 = L2_2.getClosestPlayer
    L3_2 = true
    L4_2 = 2.0
    L2_2 = L2_2(L3_2, L4_2)
  end
  L3_2 = L11_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  if not L3_2 then
    return
  end
  if L2_2 then
    L3_2 = L1_1
    if not L3_2 then
      L3_2 = L8_1
      L4_2 = L2_2
      L5_2 = A1_2
      L3_2(L4_2, L5_2)
  end
  else
    L3_2 = notifyClient
    L4_2 = getLocalizedText
    L5_2 = "no_players_nearby"
    L4_2, L5_2 = L4_2(L5_2)
    L3_2(L4_2, L5_2)
  end
end
L13_1 = RegisterNetEvent
L14_1 = Utils
L14_1 = L14_1.eventsPrefix
L15_1 = ":actions:softHandcuff"
L14_1 = L14_1 .. L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L12_1
  L2_2 = A0_2
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = Utils
L14_1 = L14_1.eventsPrefix
L15_1 = ":actions:hardHandcuff"
L14_1 = L14_1 .. L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L12_1
  L2_2 = A0_2
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L13_1(L14_1, L15_1)
L13_1 = RegisterNetEvent
L14_1 = Utils
L14_1 = L14_1.eventsPrefix
L15_1 = ":onDragForGrabber"
L14_1 = L14_1 .. L15_1
function L15_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L1_2 = GetPlayerPed
  L2_2 = GetPlayerFromServerId
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L2_2(L3_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  L2_2 = DoesEntityExist
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 + 5000
  while true do
    L3_2 = GetEntityAttachedTo
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    L4_2 = PlayerPedId
    L4_2 = L4_2()
    if L3_2 == L4_2 then
      break
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 0
    L3_2(L4_2)
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if L2_2 < L3_2 then
      return
    end
  end
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = "missfbi4prepp1"
  L5_2 = "idle"
  L6_2 = Utils
  L6_2 = L6_2.loadAnimDict
  L7_2 = L4_2
  L6_2(L7_2)
  while true do
    L6_2 = GetEntityAttachedTo
    L7_2 = L1_2
    L6_2 = L6_2(L7_2)
    if L6_2 ~= L3_2 then
      break
    end
    L6_2 = Citizen
    L6_2 = L6_2.Wait
    L7_2 = 0
    L6_2(L7_2)
    L6_2 = IsEntityPlayingAnim
    L7_2 = L3_2
    L8_2 = L4_2
    L9_2 = L5_2
    L10_2 = 3
    L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2)
    if not L6_2 then
      L6_2 = TaskPlayAnim
      L7_2 = L3_2
      L8_2 = L4_2
      L9_2 = L5_2
      L10_2 = 8.0
      L11_2 = -8
      L12_2 = -1
      L13_2 = 1048625
      L14_2 = 0
      L15_2 = false
      L16_2 = false
      L17_2 = false
      L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
    end
  end
  L6_2 = ClearPedTasks
  L7_2 = L3_2
  L6_2(L7_2)
  L6_2 = RemoveAnimDict
  L7_2 = L4_2
  L6_2(L7_2)
end
L13_1(L14_1, L15_1)
function L13_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = JobsCreator
  L1_2 = L1_2.activeActions
  L1_2 = L1_2.canHandcuff
  if not L1_2 then
    return
  end
  L1_2 = Utils
  L1_2 = L1_2.getPlayerServerIdFromPed
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = Framework
    L1_2 = L1_2.getClosestPlayer
    L2_2 = true
    L3_2 = 2.0
    L1_2 = L1_2(L2_2, L3_2)
  end
  if L1_2 then
    L2_2 = TriggerServerEvent
    L3_2 = Utils
    L3_2 = L3_2.eventsPrefix
    L4_2 = ":dragTarget"
    L3_2 = L3_2 .. L4_2
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = notifyClient
    L3_2 = getLocalizedText
    L4_2 = "no_players_nearby"
    L3_2, L4_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2)
  end
end
L14_1 = RegisterNetEvent
L15_1 = Utils
L15_1 = L15_1.eventsPrefix
L16_1 = ":actions:drag"
L15_1 = L15_1 .. L16_1
L16_1 = L13_1
L14_1(L15_1, L16_1)
L14_1 = RegisterNetEvent
L15_1 = Utils
L15_1 = L15_1.eventsPrefix
L16_1 = ":clientConfigLoaded"
L15_1 = L15_1 .. L16_1
function L16_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = config
  L0_2 = L0_2.toggleDrag
  L0_2 = L0_2.enabled
  if not L0_2 then
    return
  end
  L0_2 = registerAdvancedKeymap
  L1_2 = "toggledrag"
  L2_2 = config
  L2_2 = L2_2.toggleDrag
  L2_2 = L2_2.key
  L3_2 = "jobs_creator_toggledrag"
  L4_2 = "Toggle drag"
  L5_2 = L13_1
  L0_2(L1_2, L2_2, L3_2, L4_2, L5_2)
end
L14_1(L15_1, L16_1)
function L14_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = Framework
  L0_2 = L0_2.getClosestPlayer
  L1_2 = true
  L2_2 = 4.0
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = Framework
  L1_2 = L1_2.getClosestVehicle
  L2_2 = 10.0
  L1_2 = L1_2(L2_2)
  if L0_2 then
    if L1_2 then
      L2_2 = TriggerServerEvent
      L3_2 = Utils
      L3_2 = L3_2.eventsPrefix
      L4_2 = ":putincar"
      L3_2 = L3_2 .. L4_2
      L4_2 = L0_2
      L5_2 = VehToNet
      L6_2 = L1_2
      L5_2, L6_2 = L5_2(L6_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    else
      L2_2 = notifyClient
      L3_2 = getLocalizedText
      L4_2 = "no_vehicles_nearby"
      L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
      L2_2(L3_2, L4_2, L5_2, L6_2)
    end
  else
    L2_2 = notifyClient
    L3_2 = getLocalizedText
    L4_2 = "no_players_nearby"
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L15_1 = RegisterNetEvent
L16_1 = Utils
L16_1 = L16_1.eventsPrefix
L17_1 = ":actions:putInCar"
L16_1 = L16_1 .. L17_1
L17_1 = L14_1
L15_1(L16_1, L17_1)
function L15_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Framework
  L0_2 = L0_2.getClosestPlayer
  L1_2 = true
  L2_2 = 10.0
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L1_2 = TriggerServerEvent
    L2_2 = Utils
    L2_2 = L2_2.eventsPrefix
    L3_2 = ":takefromcar"
    L2_2 = L2_2 .. L3_2
    L3_2 = L0_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = notifyClient
    L2_2 = getLocalizedText
    L3_2 = "no_players_nearby"
    L2_2, L3_2 = L2_2(L3_2)
    L1_2(L2_2, L3_2)
  end
end
L16_1 = RegisterNetEvent
L17_1 = Utils
L17_1 = L17_1.eventsPrefix
L18_1 = ":actions:takeFromCar"
L17_1 = L17_1 .. L18_1
L18_1 = L15_1
L16_1(L17_1, L18_1)
L16_1 = exports
L17_1 = "isPlayerHandcuffed"
function L18_1()
  local L0_2, L1_2
  L0_2 = Entity
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L0_2 = L0_2(L1_2)
  L0_2 = L0_2.state
  L0_2 = L0_2.isHandcuffed
  return L0_2
end
L16_1(L17_1, L18_1)
