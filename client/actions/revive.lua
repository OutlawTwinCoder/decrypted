local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = GetPlayerFromServerId
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = IsPlayerDead
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = Framework
  L2_2 = L2_2.getFramework
  L2_2 = L2_2()
  if "QB-core" == L2_2 then
    L2_2 = TriggerServerPromise
    L3_2 = Utils
    L3_2 = L3_2.eventsPrefix
    L4_2 = ":actions:isPlayerDied"
    L3_2 = L3_2 .. L4_2
    L4_2 = A0_2
    L2_2 = L2_2(L3_2, L4_2)
    return L2_2
  end
  L2_2 = false
  return L2_2
end
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Framework
  L0_2 = L0_2.getClosestPlayer
  L1_2 = true
  L2_2 = 3.0
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L1_2 = L0_1
    L2_2 = L0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = TriggerServerEvent
      L2_2 = Utils
      L2_2 = L2_2.eventsPrefix
      L3_2 = ":actions:revive"
      L2_2 = L2_2 .. L3_2
      L3_2 = L0_2
      L1_2(L2_2, L3_2)
  end
  elseif L0_2 then
    L1_2 = notifyClient
    L2_2 = getLocalizedText
    L3_2 = "actions:revive:not_dead"
    L2_2, L3_2 = L2_2(L3_2)
    L1_2(L2_2, L3_2)
  else
    L1_2 = notifyClient
    L2_2 = getLocalizedText
    L3_2 = "actions:no_player_found"
    L2_2, L3_2 = L2_2(L3_2)
    L1_2(L2_2, L3_2)
  end
end
L2_1 = RegisterNetEvent
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":actions:revive"
L3_1 = L3_1 .. L4_1
L4_1 = L1_1
L2_1(L3_1, L4_1)
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = "mini@cpr@char_a@cpr_str"
  L2_2 = "cpr_pumpchest"
  L3_2 = RequestAnimDict
  L4_2 = L1_2
  L3_2(L4_2)
  while true do
    L3_2 = HasAnimDictLoaded
    L4_2 = L1_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 0
    L3_2(L4_2)
  end
  L3_2 = 1
  L4_2 = 12
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = TaskPlayAnim
    L8_2 = L0_2
    L9_2 = L1_2
    L10_2 = L2_2
    L11_2 = 8.0
    L12_2 = -8.0
    L13_2 = -1
    L14_2 = 0
    L15_2 = 0.0
    L16_2 = false
    L17_2 = false
    L18_2 = false
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2, L18_2)
    L7_2 = Citizen
    L7_2 = L7_2.Wait
    L8_2 = 1000
    L7_2(L8_2)
  end
  L3_2 = ClearPedTasks
  L4_2 = L0_2
  L3_2(L4_2)
end
L3_1 = RegisterNetEvent
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":actions:reviveAnimation"
L4_1 = L4_1 .. L5_1
L5_1 = L2_1
L3_1(L4_1, L5_1)
