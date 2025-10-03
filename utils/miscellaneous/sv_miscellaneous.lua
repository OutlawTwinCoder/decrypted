local L0_1, L1_1, L2_1
L0_1 = Utils
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = IsPlayerAceAllowed
  L2_2 = A0_2
  L3_2 = config
  L3_2 = L3_2.acePermission
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = IsPlayerAceAllowed
    L2_2 = A0_2
    L3_2 = "jaksam"
    L1_2 = L1_2(L2_2, L3_2)
  end
  return L1_2
end
L0_1.isAllowed = L1_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  if A0_2 then
    L2_2 = TriggerClientEvent
    L3_2 = Utils
    L3_2 = L3_2.eventsPrefix
    L4_2 = ":notifyClient"
    L3_2 = L3_2 .. L4_2
    L4_2 = A0_2
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  end
end
notify = L0_1
L0_1 = Utils
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetResourceMetadata
  L1_2 = GetCurrentResourceName
  L1_2 = L1_2()
  L2_2 = "version"
  L3_2 = 0
  return L0_2(L1_2, L2_2, L3_2)
end
L0_1.getScriptVersion = L1_1
L0_1 = Utils
function L1_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L1_2 = L1_2 + 3000
  while true do
    L2_2 = DoesEntityExist
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if L2_2 then
      break
    end
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 100
    L2_2(L3_2)
    L2_2 = GetGameTimer
    L2_2 = L2_2()
    if L1_2 < L2_2 then
      L2_2 = false
      return L2_2
    end
  end
  L2_2 = true
  return L2_2
end
L0_1.isServerEntityReady = L1_1
L0_1 = Citizen
L0_1 = L0_1.CreateThread
function L1_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = GetCurrentResourceName
  L0_2 = L0_2()
  L1_2 = Utils
  L1_2 = L1_2.eventsPrefix
  if L0_2 == L1_2 then
    L1_2 = FORCE_WATERMARK
    if not L1_2 then
      goto lbl_14
    end
  end
  L1_2 = SetConvarServerInfo
  L2_2 = "\240\159\146\188 Jobs Creator"
  L3_2 = "By jaksam"
  L1_2(L2_2, L3_2)
  ::lbl_14::
end
L0_1(L1_1)
function L0_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = DISABLE_HEARTBEAT
  if L0_2 then
    return
  end
  while "scriptName" do
    L0_2 = {}
    L1_2 = Utils
    L1_2 = L1_2.eventsPrefix
    L0_2.scriptName = L1_2
    L1_2 = Utils
    L1_2 = L1_2.getScriptVersion
    L1_2 = L1_2()
    L0_2.scriptVersion = L1_2
    L1_2 = PerformHttpRequest
    L2_2 = "https://nexus.jaksam-scripts.com/script-heartbeat"
    L3_2 = nil
    L4_2 = "POST"
    L5_2 = json
    L5_2 = L5_2.encode
    L6_2 = L0_2
    L5_2 = L5_2(L6_2)
    L6_2 = {}
    L6_2["Content-Type"] = "application/json"
    L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
    L1_2 = Citizen
    L1_2 = L1_2.Wait
    L2_2 = 300000
    L1_2(L2_2)
  end
end
L1_1 = Citizen
L1_1 = L1_1.CreateThread
L2_1 = L0_1
L1_1(L2_1)
L1_1 = Utils
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = GetConvar
  L1_2 = "sv_licenseKey"
  L2_2 = GetConvar
  L3_2 = "sv_licenseKeyToken"
  L4_2 = ""
  L2_2, L3_2, L4_2 = L2_2(L3_2, L4_2)
  L0_2 = L0_2(L1_2, L2_2, L3_2, L4_2)
  L1_2 = string
  L1_2 = L1_2.sub
  L2_2 = L0_2
  L3_2 = 1
  L4_2 = 8
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  return L1_2
end
L1_1.getPartialServerKey = L2_1
L1_1 = Utils
function L2_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L5_2 = config
  L5_2 = L5_2.areDiscordLogsActive
  if not L5_2 then
    return
  end
  L5_2 = Utils
  L5_2 = L5_2.callModuleFunc
  L6_2 = "logs"
  L7_2 = "log"
  L8_2 = A0_2
  L9_2 = A1_2
  L10_2 = A2_2
  L11_2 = A3_2
  L12_2 = A4_2
  L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L1_1.log = L2_1
