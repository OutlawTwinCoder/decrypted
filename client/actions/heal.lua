local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
function L0_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Framework
  L0_2 = L0_2.getClosestPlayer
  L1_2 = true
  L2_2 = 2.0
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L1_2 = TriggerServerEvent
    L2_2 = Utils
    L2_2 = L2_2.eventsPrefix
    L3_2 = ":actions:healSmall"
    L2_2 = L2_2 .. L3_2
    L3_2 = L0_2
    L1_2(L2_2, L3_2)
  else
    L1_2 = notifyClient
    L2_2 = getLocalizedText
    L3_2 = "actions:no_player_found"
    L2_2, L3_2 = L2_2(L3_2)
    L1_2(L2_2, L3_2)
  end
end
L1_1 = RegisterNetEvent
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":actions:healSmall"
L2_1 = L2_1 .. L3_1
L3_1 = L0_1
L1_1(L2_1, L3_1)
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = Framework
  L0_2 = L0_2.getClosestPlayer
  L1_2 = true
  L2_2 = 2.0
  L0_2 = L0_2(L1_2, L2_2)
  if L0_2 then
    L1_2 = TriggerServerEvent
    L2_2 = Utils
    L2_2 = L2_2.eventsPrefix
    L3_2 = ":actions:healBig"
    L2_2 = L2_2 .. L3_2
    L3_2 = L0_2
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
L4_1 = ":actions:healBig"
L3_1 = L3_1 .. L4_1
L4_1 = L1_1
L2_1(L3_1, L4_1)
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = TaskStartScenarioInPlace
  L2_2 = L0_2
  L3_2 = "CODE_HUMAN_MEDIC_TEND_TO_DEAD"
  L4_2 = 0
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = Citizen
  L1_2 = L1_2.Wait
  L2_2 = 10000
  L1_2(L2_2)
  L1_2 = ClearPedTasks
  L2_2 = L0_2
  L1_2(L2_2)
end
L3_1 = RegisterNetEvent
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":actions:healAnimation"
L4_1 = L4_1 .. L5_1
L5_1 = L2_1
L3_1(L4_1, L5_1)
