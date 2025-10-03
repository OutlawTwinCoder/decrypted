local L0_1, L1_1, L2_1, L3_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
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
  if not L1_2 then
    L2_2 = notifyClient
    L3_2 = getLocalizedText
    L4_2 = "actions:no_player_found"
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    return
  end
  L2_2 = config
  L2_2 = L2_2.useJSFourIdCard
  if L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = EXTERNAL_EVENTS_NAMES
    L3_2 = L3_2["jsfour-idcard:open"]
    L4_2 = L1_2
    L5_2 = GetPlayerServerId
    L6_2 = PlayerId
    L6_2 = L6_2()
    L5_2, L6_2 = L5_2(L6_2)
    L2_2(L3_2, L4_2, L5_2, L6_2)
    L2_2 = Utils
    L2_2 = L2_2.hideInteractionMenu
    L2_2()
  else
    L2_2 = TriggerServerEvent
    L3_2 = Utils
    L3_2 = L3_2.eventsPrefix
    L4_2 = ":actions:checkIdentity"
    L3_2 = L3_2 .. L4_2
    L4_2 = L1_2
    L2_2(L3_2, L4_2)
  end
end
L1_1 = RegisterNetEvent
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":actions:checkIdentity"
L2_1 = L2_1 .. L3_1
L3_1 = L0_1
L1_1(L2_1, L3_1)
