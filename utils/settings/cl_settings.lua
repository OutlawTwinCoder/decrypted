local L0_1, L1_1, L2_1, L3_1
L0_1 = {}
Settings = L0_1
L0_1 = Settings
L1_1 = {}
L0_1.clientConfig = L1_1
L0_1 = true
L1_1 = Settings
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = TriggerServerPromise
  L1_2 = Utils
  L1_2 = L1_2.eventsPrefix
  L2_2 = ":getClientConfiguration"
  L1_2 = L1_2 .. L2_2
  L0_2 = L0_2(L1_2)
  L1_2 = Settings
  L1_2.clientConfig = L0_2
  L1_2 = Settings
  L1_2 = L1_2.clientConfig
  config = L1_2
  L1_2 = print
  L2_2 = "Configuration loaded"
  L1_2(L2_2)
  L1_2 = L0_1
  if L1_2 then
    L1_2 = false
    L0_1 = L1_2
    L1_2 = TriggerEvent
    L2_2 = Utils
    L2_2 = L2_2.eventsPrefix
    L3_2 = ":clientConfigLoadedOnStart"
    L2_2 = L2_2 .. L3_2
    L1_2(L2_2)
  end
  L1_2 = TriggerEvent
  L2_2 = Utils
  L2_2 = L2_2.eventsPrefix
  L3_2 = ":clientConfigLoaded"
  L2_2 = L2_2 .. L3_2
  L1_2(L2_2)
  L1_2 = true
  return L1_2
end
L1_1.loadConfig = L2_1
L1_1 = RegisterNetEvent
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":updateClientSettings"
L2_1 = L2_1 .. L3_1
L3_1 = Settings
L3_1 = L3_1.loadConfig
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "saveSettings"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = TriggerServerPromise
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":updateSettings"
  L3_2 = L3_2 .. L4_2
  L4_2 = A0_2.serverSettings
  L5_2 = A0_2.sharedSettings
  L6_2 = A0_2.clientSettings
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
L1_1 = RegisterNUICallback
L2_1 = "getDefaultConfiguration"
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerPromise
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":getDefaultConfiguration"
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L1_1(L2_1, L3_1)
