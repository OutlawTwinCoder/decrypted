local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = {}
Settings = L0_1
L0_1 = Settings
L1_1 = {}
L0_1.serverConfig = L1_1
L0_1 = Settings
L1_1 = {}
L0_1.clientConfig = L1_1
L0_1 = false
L1_1 = true
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = "/"
  L3_2 = A0_2
  L1_2 = L1_2 .. L2_2 .. L3_2
  return L1_2
end
L3_1 = RegisterServerCallback
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":getClientConfiguration"
L4_1 = L4_1 .. L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  while true do
    L2_2 = L0_1
    if L2_2 then
      break
    end
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 1000
    L2_2(L3_2)
  end
  L2_2 = A1_2
  L3_2 = Settings
  L3_2 = L3_2.clientConfig
  L2_2(L3_2)
end
L3_1(L4_1, L5_1)
L3_1 = Settings
function L4_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = LoadResourceFile
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = "current_config.json"
  L0_2 = L0_2(L1_2, L2_2)
  if not L0_2 then
    L1_2 = print
    L2_2 = "Couldn't find "
    L3_2 = "current_config.json"
    L2_2 = L2_2 .. L3_2
    return L1_2(L2_2)
  end
  L1_2 = json
  L1_2 = L1_2.decode
  L2_2 = L0_2
  return L1_2(L2_2)
end
L3_1.getRawConfig = L4_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = print
  L2_2 = "^2Couldn't find file '"
  L3_2 = "current_config.json"
  L4_2 = "' creating it now^7"
  L2_2 = L2_2 .. L3_2 .. L4_2
  L1_2(L2_2)
  L1_2 = SaveResourceFile
  L2_2 = GetCurrentResourceName
  L2_2 = L2_2()
  L3_2 = "current_config.json"
  L4_2 = A0_2
  L6_2 = A0_2
  L5_2 = A0_2.len
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  if L1_2 then
    L2_2 = true
    return L2_2
  end
  L2_2 = Utils
  L2_2 = L2_2.showPermanentError
  L3_2 = "^1Couldn't create '"
  L4_2 = L2_1
  L5_2 = "current_config.json"
  L4_2 = L4_2(L5_2)
  L5_2 = "' file automatically^7"
  L3_2 = L3_2 .. L4_2 .. L5_2
  L4_2 = "^3Please create it manually by duplicating '"
  L5_2 = L2_1
  L6_2 = "utils/settings/default_config.json"
  L5_2 = L5_2(L6_2)
  L6_2 = "'' and rename the copy of it to '"
  L7_2 = L2_1
  L8_2 = "current_config.json"
  L7_2 = L7_2(L8_2)
  L8_2 = "', then restart the script when done^7"
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  L2_2(L3_2, L4_2)
  L2_2 = false
  return L2_2
end
L4_1 = Settings
function L5_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = LoadResourceFile
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = "current_config.json"
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = LoadResourceFile
  L2_2 = GetCurrentResourceName
  L2_2 = L2_2()
  L3_2 = "utils/settings/default_config.json"
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L2_2 = Utils
    L2_2 = L2_2.showPermanentError
    L3_2 = "^1Couldn't find '"
    L4_2 = L2_1
    L5_2 = "utils/settings/default_config.json"
    L4_2 = L4_2(L5_2)
    L5_2 = "'^7"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L4_2 = "^3Please check that the file exists and the name is correct^7"
    L2_2(L3_2, L4_2)
    return
  end
  if not L0_2 then
    L2_2 = L3_1
    L3_2 = L1_2
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L3_2 = false
      return L3_2
    end
    L3_2 = Settings
    L3_2 = L3_2.loadConfig
    return L3_2()
  end
  L2_2 = json
  L2_2 = L2_2.decode
  L3_2 = L0_2
  L2_2 = L2_2(L3_2)
  L3_2 = json
  L3_2 = L3_2.decode
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = Settings
  L5_2 = Utils
  L5_2 = L5_2.useDefaultValues
  L6_2 = L2_2.server
  L7_2 = L3_2.server
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.serverConfig = L5_2
  L4_2 = Settings
  L5_2 = Utils
  L5_2 = L5_2.useDefaultValues
  L6_2 = L2_2.client
  L7_2 = L3_2.client
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.clientConfig = L5_2
  L4_2 = Utils
  L4_2 = L4_2.useDefaultValues
  L5_2 = L2_2.shared
  L6_2 = L3_2.shared
  L4_2 = L4_2(L5_2, L6_2)
  L5_2 = Settings
  L6_2 = Utils
  L6_2 = L6_2.useDefaultValues
  L7_2 = Settings
  L7_2 = L7_2.serverConfig
  L8_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2)
  L5_2.serverConfig = L6_2
  L5_2 = Settings
  L6_2 = Utils
  L6_2 = L6_2.useDefaultValues
  L7_2 = Settings
  L7_2 = L7_2.clientConfig
  L8_2 = L4_2
  L6_2 = L6_2(L7_2, L8_2)
  L5_2.clientConfig = L6_2
  L5_2 = true
  L0_1 = L5_2
  L5_2 = Settings
  L5_2 = L5_2.serverConfig
  config = L5_2
  L5_2 = L1_1
  if L5_2 then
    L5_2 = false
    L1_1 = L5_2
    L5_2 = TriggerEvent
    L6_2 = Utils
    L6_2 = L6_2.eventsPrefix
    L7_2 = ":serverConfigLoadedOnStart"
    L6_2 = L6_2 .. L7_2
    L5_2(L6_2)
  end
  L5_2 = TriggerEvent
  L6_2 = Utils
  L6_2 = L6_2.eventsPrefix
  L7_2 = ":serverConfigLoaded"
  L6_2 = L6_2 .. L7_2
  L5_2(L6_2)
  L5_2 = true
  return L5_2
end
L4_1.loadConfig = L5_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L2_2[L7_2] = L8_2
  end
  L3_2 = pairs
  L4_2 = A1_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L2_2[L7_2] = L8_2
  end
  return L2_2
end
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L3_2 = Settings
  L3_2 = L3_2.getRawConfig
  L3_2 = L3_2()
  L4_2 = json
  L4_2 = L4_2.encode
  L5_2 = {}
  L6_2 = L4_1
  L7_2 = L3_2.server
  L8_2 = A0_2
  L6_2 = L6_2(L7_2, L8_2)
  L5_2.server = L6_2
  L6_2 = L4_1
  L7_2 = L3_2.shared
  L8_2 = A1_2
  L6_2 = L6_2(L7_2, L8_2)
  L5_2.shared = L6_2
  L6_2 = L4_1
  L7_2 = L3_2.client
  L8_2 = A2_2
  L6_2 = L6_2(L7_2, L8_2)
  L5_2.client = L6_2
  L4_2 = L4_2(L5_2)
  L5_2 = SaveResourceFile
  L6_2 = GetCurrentResourceName
  L6_2 = L6_2()
  L7_2 = "current_config.json"
  L8_2 = L4_2
  L10_2 = L4_2
  L9_2 = L4_2.len
  L9_2, L10_2, L11_2 = L9_2(L10_2)
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2)
  if not L5_2 then
    L6_2 = print
    L7_2 = [[

======================]]
    L6_2(L7_2)
    L6_2 = print
    L7_2 = "^1Couldn't update settings, impossible to write the file '"
    L8_2 = GetCurrentResourceName
    L8_2 = L8_2()
    L9_2 = "/"
    L10_2 = "current_config.json"
    L11_2 = "'^7"
    L7_2 = L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
    L6_2(L7_2)
    L6_2 = print
    L7_2 = "^3Please check if the file is not read-only. Note: The issue is NOT caused by this script, but it's caused by your server/host^7"
    L6_2(L7_2)
    L6_2 = print
    L7_2 = "^7======================\n"
    L6_2(L7_2)
    L6_2 = error
    L7_2 = "Read server console"
    L6_2(L7_2)
  end
  L6_2 = Settings
  L6_2 = L6_2.loadConfig
  L6_2()
  L6_2 = TriggerClientEvent
  L7_2 = Utils
  L7_2 = L7_2.eventsPrefix
  L8_2 = ":updateClientSettings"
  L7_2 = L7_2 .. L8_2
  L8_2 = -1
  L6_2(L7_2, L8_2)
end
L6_1 = RegisterServerCallback
L7_1 = Utils
L7_1 = L7_1.eventsPrefix
L8_1 = ":updateSettings"
L7_1 = L7_1 .. L8_1
function L8_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2
  L5_2 = Utils
  L5_2 = L5_2.isAllowed
  L6_2 = A0_2
  L5_2 = L5_2(L6_2)
  if not L5_2 then
    return
  end
  L5_2 = pcall
  L6_2 = L5_1
  L7_2 = A2_2
  L8_2 = A3_2
  L9_2 = A4_2
  L5_2, L6_2 = L5_2(L6_2, L7_2, L8_2, L9_2)
  if L5_2 then
    L7_2 = A1_2
    L8_2 = true
    L7_2(L8_2)
    return
  end
  L7_2 = A1_2
  L8_2 = L6_2
  L7_2(L8_2)
end
L6_1(L7_1, L8_1)
L6_1 = Settings
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L0_2 = {}
  L1_2 = pairs
  L2_2 = Settings
  L2_2 = L2_2.serverConfig
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L0_2[L5_2] = L6_2
  end
  L1_2 = pairs
  L2_2 = Settings
  L2_2 = L2_2.clientConfig
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L0_2[L5_2] = L6_2
  end
  return L0_2
end
L6_1.getFullConfig = L7_1
L6_1 = RegisterServerCallback
L7_1 = Utils
L7_1 = L7_1.eventsPrefix
L8_1 = ":getDefaultConfiguration"
L7_1 = L7_1 .. L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L2_2 = Utils
  L2_2 = L2_2.isAllowed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = LoadResourceFile
  L3_2 = GetCurrentResourceName
  L3_2 = L3_2()
  L4_2 = "utils/settings/default_config.json"
  L2_2 = L2_2(L3_2, L4_2)
  if not L2_2 then
    L3_2 = print
    L4_2 = "^1Couldn't find '"
    L5_2 = "utils/settings/default_config.json"
    L6_2 = "'^7"
    L4_2 = L4_2 .. L5_2 .. L6_2
    return L3_2(L4_2)
  end
  L3_2 = json
  L3_2 = L3_2.decode
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = pairs
  L6_2 = L3_2
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = pairs
    L12_2 = L10_2
    L11_2, L12_2, L13_2, L14_2 = L11_2(L12_2)
    for L15_2, L16_2 in L11_2, L12_2, L13_2, L14_2 do
      L4_2[L15_2] = L16_2
    end
  end
  L5_2 = A1_2
  L6_2 = L4_2
  L5_2(L6_2)
end
L6_1(L7_1, L8_1)
