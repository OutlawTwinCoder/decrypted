local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1
function L0_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = SetPedRelationshipGroupHash
  L2_2 = A0_2
  L3_2 = GetHashKey
  L4_2 = "AMBIENT_GANG_FAMILY"
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = GetPedRelationshipGroupHash
  L2_2 = PlayerPedId
  L2_2, L3_2, L4_2, L5_2, L6_2 = L2_2()
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetRelationshipBetweenGroups
  L3_2 = 1
  L4_2 = GetHashKey
  L5_2 = "AMBIENT_GANG_FAMILY"
  L4_2 = L4_2(L5_2)
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetRelationshipBetweenGroups
  L3_2 = 1
  L4_2 = L1_2
  L5_2 = GetHashKey
  L6_2 = "AMBIENT_GANG_FAMILY"
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = SetEntityInvincible
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = FreezeEntityPosition
  L3_2 = A0_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetPedConfigFlag
  L3_2 = A0_2
  L4_2 = 24
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetPedConfigFlag
  L3_2 = A0_2
  L4_2 = 43
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetPedConfigFlag
  L3_2 = A0_2
  L4_2 = 122
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetPedConfigFlag
  L3_2 = A0_2
  L4_2 = 128
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetPedConfigFlag
  L3_2 = A0_2
  L4_2 = 188
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = DisablePedPainAudio
  L3_2 = A0_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetCanAttackFriendly
  L3_2 = A0_2
  L4_2 = false
  L5_2 = false
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = SetPedRagdollOnCollision
  L3_2 = A0_2
  L4_2 = false
  L2_2(L3_2, L4_2)
  L2_2 = SetRagdollBlockingFlags
  L3_2 = A0_2
  L4_2 = 1
  L2_2(L3_2, L4_2)
  L2_2 = SetEntityInvincible
  L3_2 = A0_2
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = SetBlockingOfNonTemporaryEvents
  L3_2 = A0_2
  L4_2 = true
  L2_2(L3_2, L4_2)
end
setPedImmutable = L0_1
function L0_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L3_2 = RequestModel
  L4_2 = A0_2
  L3_2(L4_2)
  while true do
    L3_2 = HasModelLoaded
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 0
    L3_2(L4_2)
  end
  L3_2 = CreatePed
  L4_2 = 0
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L8_2 = false
  L9_2 = false
  L3_2 = L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
  L4_2 = setPedImmutable
  L5_2 = L3_2
  L4_2(L5_2)
  L4_2 = "anim@amb@nightclub@peds@"
  L5_2 = "rcmme_amanda1_stand_loop_cop"
  L6_2 = RequestAnimDict
  L7_2 = L4_2
  L6_2(L7_2)
  while true do
    L6_2 = HasAnimDictLoaded
    L7_2 = L4_2
    L6_2 = L6_2(L7_2)
    if L6_2 then
      break
    end
    L6_2 = Citizen
    L6_2 = L6_2.Wait
    L7_2 = 0
    L6_2(L7_2)
  end
  L6_2 = TaskPlayAnim
  L7_2 = L3_2
  L8_2 = L4_2
  L9_2 = L5_2
  L10_2 = 4.0
  L11_2 = 4.0
  L12_2 = -1
  L13_2 = 1
  L14_2 = 1.0
  L15_2 = false
  L16_2 = false
  L17_2 = false
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  return L3_2
end
spawnNPC = L0_1
function L0_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Framework
  L2_2 = L2_2.showNotification
  L3_2 = A1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L1_1 = addScriptRemovableEvent
L2_1 = RegisterNetEvent
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":notify"
L3_1 = L3_1 .. L4_1
L4_1 = L0_1
L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1 = L2_1(L3_1, L4_1)
L1_1(L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1)
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "~.~"
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = config
  L2_2 = L2_2.modules
  L2_2 = L2_2.notify
  if "default" ~= L2_2 then
    L2_2 = Utils
    L2_2 = L2_2.callModuleFunc
    L3_2 = "notify"
    L4_2 = "showNotification"
    L5_2 = L1_2
    L6_2 = A0_2
    L2_2(L3_2, L4_2, L5_2, L6_2)
    return
  end
  L2_2 = TriggerEvent
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":notify"
  L3_2 = L3_2 .. L4_2
  L4_2 = L1_2
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
notifyClient = L1_1
L1_1 = RegisterNetEvent
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":notifyClient"
L2_1 = L2_1 .. L3_1
L3_1 = notifyClient
L1_1(L2_1, L3_1)
L1_1 = nil
L2_1 = false
L3_1 = ""
L4_1 = ""
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = config
  L1_2 = L1_2.modules
  L1_2 = L1_2.textui
  if "none" == L1_2 then
    L1_2 = Framework
    L1_2 = L1_2.showHelpNotification
    L2_2 = A0_2
    L1_2(L2_2)
    return
  end
  L1_2 = GetGameTimer
  L1_2 = L1_2()
  L1_1 = L1_2
  L1_2 = L4_1
  if A0_2 ~= L1_2 then
    L1_2 = false
    L2_1 = L1_2
  end
  L4_1 = A0_2
  L1_2 = L2_1
  if L1_2 then
    return
  end
  L1_2 = {}
  L2_2 = string
  L2_2 = L2_2.sub
  L3_2 = A0_2
  L4_2 = 1
  L5_2 = 1
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L2_2 = "~" == L2_2
  L3_2 = string
  L3_2 = L3_2.gmatch
  L4_2 = A0_2
  L5_2 = "([^~]+)"
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2, L5_2)
  for L7_2 in L3_2, L4_2, L5_2, L6_2 do
    if L2_2 then
      L8_2 = #L7_2
      if 1 == L8_2 then
        goto lbl_65
      end
    end
    if L2_2 then
      L8_2 = getLocalizedText
      L9_2 = string
      L9_2 = L9_2.lower
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      L10_2 = ":letter"
      L9_2 = L9_2 .. L10_2
      L8_2 = L8_2(L9_2)
      if L8_2 then
        goto lbl_60
      end
    end
    L8_2 = L7_2
    ::lbl_60::
    L9_2 = table
    L9_2 = L9_2.insert
    L10_2 = L1_2
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    ::lbl_65::
    L2_2 = not L2_2
  end
  L3_2 = table
  L3_2 = L3_2.concat
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L3_1 = L3_2
  L3_2 = Utils
  L3_2 = L3_2.callModuleFunc
  L4_2 = "textui"
  L5_2 = "show"
  L6_2 = L3_1
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = true
  L2_1 = L3_2
  L3_2 = Citizen
  L3_2 = L3_2.CreateThread
  function L4_2()
    local L0_3, L1_3, L2_3
    while true do
      L0_3 = L2_1
      if not L0_3 then
        break
      end
      L0_3 = GetGameTimer
      L0_3 = L0_3()
      L1_3 = L1_1
      L0_3 = L0_3 - L1_3
      L1_3 = 1000
      if L0_3 >= L1_3 then
        L0_3 = Utils
        L0_3 = L0_3.callModuleFunc
        L1_3 = "textui"
        L2_3 = "hide"
        L0_3(L1_3, L2_3)
        L0_3 = false
        L2_1 = L0_3
      end
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 1000
      L0_3(L1_3)
    end
  end
  L3_2(L4_2)
end
showHelpNotification = L5_1
function L5_1(A0_2)
  local L1_2
  showHelpNotification = A0_2
end
L6_1 = exports
L7_1 = "replaceShowHelpNotification"
L8_1 = L5_1
L6_1(L7_1, L8_1)
function L6_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2
  L0_2 = PlayerPedId
  L0_2 = L0_2()
  L1_2 = GetEntityCoords
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  L2_2 = vector3
  L3_2 = 0.0
  L4_2 = 0.0
  L5_2 = 1.0
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L1_2 = L1_2 - L2_2
  L2_2 = {}
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%.2f"
  L5_2 = L1_2.x
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.x = L3_2
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%.2f"
  L5_2 = L1_2.y
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.y = L3_2
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "%.2f"
  L5_2 = L1_2.z
  L3_2 = L3_2(L4_2, L5_2)
  L2_2.z = L3_2
  return L2_2
end
L7_1 = RegisterNUICallback
L8_1 = "getCurrentCoords"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = L6_1
  L3_2 = L3_2()
  L2_2(L3_2)
end
L7_1(L8_1, L9_1)
L7_1 = RegisterNUICallback
L8_1 = "getCurrentCoordsAndHeading"
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityHeading
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = L6_1
  L5_2 = L5_2()
  L4_2.coords = L5_2
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "%.2f"
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.heading = L5_2
  L5_2 = A1_2
  L6_2 = L4_2
  L5_2(L6_2)
end
L7_1(L8_1, L9_1)
function L7_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  L5_2 = GetResourceKvpString
  L6_2 = A2_2
  L7_2 = "_command"
  L6_2 = L6_2 .. L7_2
  L7_2 = nil
  L5_2 = L5_2(L6_2, L7_2)
  L6_2 = GetResourceKvpString
  L7_2 = A2_2
  L8_2 = nil
  L6_2 = L6_2(L7_2, L8_2)
  if not (L6_2 == A1_2 and L6_2) or not L5_2 then
    L7_2 = SetResourceKvp
    L8_2 = A2_2
    L9_2 = A1_2
    L7_2(L8_2, L9_2)
    L7_2 = ""
    L8_2 = 1
    L9_2 = 5
    L10_2 = 1
    for L11_2 = L8_2, L9_2, L10_2 do
      local L12_2
      L12_2 = math
      L12_2 = L12_2.random
      L12_2 = L12_2(97, 122)
      L7_2 = L7_2 .. string.char(L12_2)
    end
    L8_2 = A0_2
    L9_2 = "_"
    L10_2 = L7_2
    L8_2 = L8_2 .. L9_2 .. L10_2
    L5_2 = L8_2
    L8_2 = SetResourceKvp
    L9_2 = A2_2
    L10_2 = "_command"
    L9_2 = L9_2 .. L10_2
    L10_2 = L5_2
    L8_2(L9_2, L10_2)
  else
    L7_2 = GetResourceKvpString
    L8_2 = A2_2
    L9_2 = "_command"
    L8_2 = L8_2 .. L9_2
    L9_2 = A0_2
    L7_2 = L7_2(L8_2, L9_2)
    L5_2 = L7_2
  end
  L7_2 = RegisterCommand
  L8_2 = L5_2
  L9_2 = A4_2
  L10_2 = false
  L7_2(L8_2, L9_2, L10_2)
  L7_2 = RegisterKeyMapping
  L8_2 = L5_2
  L9_2 = A3_2
  L10_2 = "keyboard"
  L11_2 = A1_2
  L7_2(L8_2, L9_2, L10_2, L11_2)
end
registerAdvancedKeymap = L7_1
L7_1 = Utils
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DoesAnimDictExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = HasAnimDictLoaded
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      return
    end
    L1_2 = RequestAnimDict
    L2_2 = A0_2
    L1_2(L2_2)
    while true do
      L1_2 = HasAnimDictLoaded
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        break
      end
      L1_2 = Citizen
      L1_2 = L1_2.Wait
      L2_2 = 10
      L1_2(L2_2)
    end
  else
    L1_2 = print
    L2_2 = "^1Impossible to load anim dict ^3"
    L3_2 = A0_2
    L4_2 = "^7"
    L2_2 = L2_2 .. L3_2 .. L4_2
    L1_2(L2_2)
  end
end
L7_1.loadAnimDict = L8_1
L7_1 = Utils
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = DoesAnimDictExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L1_2 = RequestAnimDict
    L2_2 = A0_2
    L1_2(L2_2)
    while true do
      L1_2 = HasAnimDictLoaded
      L2_2 = A0_2
      L1_2 = L1_2(L2_2)
      if L1_2 then
        break
      end
      L1_2 = Citizen
      L1_2 = L1_2.Wait
      L2_2 = 10
      L1_2(L2_2)
    end
  else
    L1_2 = print
    L2_2 = "^1Impossible to load anim dict ^3"
    L3_2 = A0_2
    L4_2 = "^7"
    L2_2 = L2_2 .. L3_2 .. L4_2
    L1_2(L2_2)
  end
end
L7_1.loadAnimDict = L8_1
function L7_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = RequestModel
  L3_2 = A0_2
  L2_2(L3_2)
  L2_2 = GetGameTimer
  L2_2 = L2_2()
  L2_2 = L2_2 + 2000
  while true do
    L3_2 = HasModelLoaded
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    if L3_2 then
      break
    end
    L3_2 = GetGameTimer
    L3_2 = L3_2()
    if L2_2 < L3_2 then
      L3_2 = print
      L4_2 = "^1Impossible to load model ^3"
      L5_2 = A0_2
      L6_2 = "^7"
      L4_2 = L4_2 .. L5_2 .. L6_2
      L3_2(L4_2)
      return
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = 10
    L3_2(L4_2)
  end
  if not A1_2 then
    return
  end
  L3_2 = SetTimeout
  L4_2 = A1_2 * 1000
  function L5_2()
    local L0_3, L1_3
    L0_3 = SetModelAsNoLongerNeeded
    L1_3 = A0_2
    L0_3(L1_3)
  end
  L3_2(L4_2, L5_2)
end
L8_1 = Utils
function L9_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = 1
    L3_2 = #A0_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = L7_1
      L7_2 = A0_2[L5_2]
      L8_2 = A1_2
      L6_2(L7_2, L8_2)
    end
  else
    L2_2 = type
    L3_2 = A0_2
    L2_2 = L2_2(L3_2)
    if "string" == L2_2 then
      L2_2 = L7_1
      L3_2 = A0_2
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L8_1.loadModel = L9_1
L8_1 = Utils
function L9_1(A0_2)
  local L1_2, L2_2, L3_2
  if A0_2 then
    L1_2 = DoesEntityExist
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if L1_2 then
      goto lbl_9
    end
  end
  do return end
  ::lbl_9::
  L1_2 = NetworkGetPlayerIndexFromPed
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if -1 == L1_2 then
    return
  end
  L2_2 = GetPlayerServerId
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  return L2_2
end
L8_1.getPlayerServerIdFromPed = L9_1
L8_1 = Utils
function L9_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = StartShapeTestSurroundingCoords
  L1_2 = 511
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = 7
  L0_2, L1_2, L2_2 = L0_2(L1_2, L2_2, L3_2)
  while true do
    L3_2 = GetShapeTestResult
    L4_2 = L0_2
    L3_2, L4_2, L5_2, L6_2, L7_2 = L3_2(L4_2)
    if 2 == L3_2 or 0 == L3_2 then
      L8_2 = L5_2
      L9_2 = L7_2
      L10_2 = L1_2
      L11_2 = L2_2
      return L8_2, L9_2, L10_2, L11_2
    end
    L8_2 = Citizen
    L8_2 = L8_2.Wait
    L9_2 = 0
    L8_2(L9_2)
  end
end
L8_1.getMouseWorldCoords = L9_1
L8_1 = false
L9_1 = nil
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = promise
  L3_2 = L3_2.new
  L3_2 = L3_2()
  L4_2 = CURRENT_FRAMEWORK
  if "ESX" == L4_2 then
    L4_2 = ESX
    L4_2 = L4_2.UI
    L4_2 = L4_2.Menu
    L4_2 = L4_2.Open
    L5_2 = "dialog"
    L6_2 = GetCurrentResourceName
    L6_2 = L6_2()
    L8_2 = A0_2
    L7_2 = A0_2.lower
    L7_2 = L7_2(L8_2)
    L8_2 = {}
    L8_2.title = A0_2
    function L9_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3
      L2_3 = tonumber
      L3_3 = A0_3.value
      L2_3 = L2_3(L3_3)
      if L2_3 then
        L3_3 = A1_2
        if not (L2_3 < L3_3) then
          L3_3 = A2_2
          if not L3_3 then
            goto lbl_21
          end
          L3_3 = A2_2
          if not (L2_3 > L3_3) then
            goto lbl_21
          end
        end
      end
      L3_3 = notifyClient
      L4_3 = getLocalizedText
      L5_3 = "invalid_quantity"
      L4_3, L5_3 = L4_3(L5_3)
      L3_3(L4_3, L5_3)
      do return end
      ::lbl_21::
      L3_3 = A1_3.close
      L3_3()
      L3_3 = L3_2
      L4_3 = L3_3
      L3_3 = L3_3.resolve
      L5_3 = L2_3
      L3_3(L4_3, L5_3)
    end
    function L10_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3
      L2_3 = A1_3.close
      L2_3()
      L2_3 = L3_2
      L3_3 = L2_3
      L2_3 = L2_3.resolve
      L4_3 = false
      L2_3(L3_3, L4_3)
    end
    L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  else
    L4_2 = CURRENT_FRAMEWORK
    if "QB-core" == L4_2 then
      L4_2 = AddTextEntry
      L5_2 = "FMMC_MPM_NA"
      L6_2 = A0_2
      L4_2(L5_2, L6_2)
      L4_2 = DisplayOnscreenKeyboard
      L5_2 = 1
      L6_2 = "FMMC_MPM_NA"
      L7_2 = ""
      L8_2 = ""
      L9_2 = ""
      L10_2 = ""
      L11_2 = ""
      L12_2 = 30
      L4_2(L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      while true do
        L4_2 = UpdateOnscreenKeyboard
        L4_2 = L4_2()
        if 0 ~= L4_2 then
          break
        end
        L4_2 = DisableAllControlActions
        L5_2 = 0
        L4_2(L5_2)
        L4_2 = Wait
        L5_2 = 0
        L4_2(L5_2)
      end
      L4_2 = GetOnscreenKeyboardResult
      L4_2 = L4_2()
      if not L4_2 then
        L6_2 = L3_2
        L5_2 = L3_2.resolve
        L7_2 = false
        L5_2(L6_2, L7_2)
        return
      end
      L5_2 = tonumber
      L6_2 = L4_2
      L5_2 = L5_2(L6_2)
      if L5_2 and (not A2_2 or A2_2 >= L5_2) and A1_2 <= L5_2 then
        return L5_2
      else
        L6_2 = notifyClient
        L7_2 = getLocalizedText
        L8_2 = "invalid_quantity"
        L7_2, L8_2, L9_2, L10_2, L11_2, L12_2 = L7_2(L8_2)
        L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
      end
    end
  end
  L4_2 = Citizen
  L4_2 = L4_2.Await
  L5_2 = L3_2
  return L4_2(L5_2)
end
function L11_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = promise
  L1_2 = L1_2.new
  L1_2 = L1_2()
  L2_2 = CURRENT_FRAMEWORK
  if "ESX" == L2_2 then
    L2_2 = ESX
    L2_2 = L2_2.UI
    L2_2 = L2_2.Menu
    L2_2 = L2_2.Open
    L3_2 = "dialog"
    L4_2 = GetCurrentResourceName
    L4_2 = L4_2()
    L6_2 = A0_2
    L5_2 = A0_2.lower
    L5_2 = L5_2(L6_2)
    L6_2 = {}
    L6_2.title = A0_2
    function L7_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3, L5_3
      L2_3 = A0_3.value
      if L2_3 then
        L3_3 = A1_3.close
        L3_3()
        L3_3 = L1_2
        L4_3 = L3_3
        L3_3 = L3_3.resolve
        L5_3 = L2_3
        L3_3(L4_3, L5_3)
      end
    end
    function L8_2(A0_3, A1_3)
      local L2_3, L3_3, L4_3
      L2_3 = A1_3.close
      L2_3()
      L2_3 = L1_2
      L3_3 = L2_3
      L2_3 = L2_3.resolve
      L4_3 = false
      L2_3(L3_3, L4_3)
    end
    L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  else
    L2_2 = CURRENT_FRAMEWORK
    if "QB-core" == L2_2 then
      L2_2 = AddTextEntry
      L3_2 = "FMMC_MPM_NA"
      L4_2 = A0_2
      L2_2(L3_2, L4_2)
      L2_2 = DisplayOnscreenKeyboard
      L3_2 = 1
      L4_2 = "FMMC_MPM_NA"
      L5_2 = ""
      L6_2 = ""
      L7_2 = ""
      L8_2 = ""
      L9_2 = ""
      L10_2 = 30
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
      while true do
        L2_2 = UpdateOnscreenKeyboard
        L2_2 = L2_2()
        if 0 ~= L2_2 then
          break
        end
        L2_2 = DisableAllControlActions
        L3_2 = 0
        L2_2(L3_2)
        L2_2 = Citizen
        L2_2 = L2_2.Wait
        L3_2 = 0
        L2_2(L3_2)
      end
      L3_2 = L1_2
      L2_2 = L1_2.resolve
      L4_2 = GetOnscreenKeyboardResult
      L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L4_2()
      L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
    end
  end
  L2_2 = Citizen
  L2_2 = L2_2.Await
  L3_2 = L1_2
  return L2_2(L3_2)
end
function L12_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = nil
  L1_2 = CURRENT_FRAMEWORK
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.UI
    L1_2 = L1_2.Menu
    L1_2 = L1_2.RegisteredTypes
    L1_2 = L1_2.default
    if not L1_2 then
      L1_2 = updateSharedObject
      L1_2()
    end
    L1_2 = ESX
    L1_2 = L1_2.UI
    L1_2 = L1_2.Menu
    L1_2 = L1_2.RegisteredTypes
    L1_2 = L1_2.default
    if not L1_2 then
      L1_2 = print
      L2_2 = "====================================================="
      L1_2(L2_2)
      L1_2 = print
      L2_2 = "^1Error: There is an issue with esx_menu_default^7"
      L1_2(L2_2)
      L1_2 = print
      L2_2 = "^2Solution: Be sure to start it after es_extended, otherwise reinstall the official latest one^7"
      L1_2(L2_2)
      L1_2 = print
      L2_2 = "====================================================="
      L1_2(L2_2)
      return
    end
    L1_2 = ESX
    L1_2 = L1_2.UI
    L0_2 = L1_2.Menu
  else
    L1_2 = CURRENT_FRAMEWORK
    if "QB-core" == L1_2 then
      L1_2 = "esx_menu_default"
      L2_2 = GetResourceState
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if "started" ~= L2_2 then
        L1_2 = "menu_default"
      end
      L2_2 = GetResourceState
      L3_2 = L1_2
      L2_2 = L2_2(L3_2)
      if "started" ~= L2_2 then
        L2_2 = TriggerEvent
        L3_2 = Utils
        L3_2 = L3_2.eventsPrefix
        L4_2 = ":showMissingMenu"
        L3_2 = L3_2 .. L4_2
        L2_2(L3_2)
      end
      L2_2 = exports
      L2_2 = L2_2[L1_2]
      L3_2 = L2_2
      L2_2 = L2_2.GetMenu
      L2_2 = L2_2(L3_2)
      L2_2 = L2_2.UI
      L0_2 = L2_2.Menu
    end
  end
  if not L0_2 then
    L1_2 = print
    L2_2 = "^1Error: No menu found^7"
    L1_2(L2_2)
    return
  end
  return L0_2
end
function L13_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2
  if not A2_2 then
    return
  end
  L7_2 = L12_1
  L7_2 = L7_2()
  L8_2 = L7_2.Open
  L9_2 = "default"
  L10_2 = GetCurrentResourceName
  L10_2 = L10_2()
  L11_2 = A0_2
  L12_2 = {}
  L12_2.title = A1_2
  L13_2 = config
  L13_2 = L13_2.menuPosition
  if not L13_2 then
    L13_2 = "bottom-right"
  end
  L12_2.align = L13_2
  L12_2.elements = A2_2
  function L13_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A3_2
    L3_3 = nil
    L4_3 = nil
    L5_3 = A0_3.current
    L2_3(L3_3, L4_3, L5_3)
  end
  function L14_2(A0_3, A1_3)
    local L2_3
    L2_3 = A4_2
    if L2_3 then
      L2_3 = A4_2
      L2_3()
    end
    openedMenu = nil
    L2_3 = A1_3.close
    L2_3()
  end
  function L15_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A5_2
    if L2_3 then
      L2_3 = A5_2
      L3_3 = nil
      L4_3 = nil
      L5_3 = A0_3.current
      L2_3(L3_3, L4_3, L5_3)
    end
  end
  function L16_2(A0_3, A1_3)
    local L2_3, L3_3, L4_3, L5_3
    L2_3 = A6_2
    if L2_3 then
      L2_3 = A6_2
      L3_3 = nil
      L4_3 = nil
      L5_3 = A0_3.current
      L2_3(L3_3, L4_3, L5_3)
    end
  end
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2)
end
L14_1 = Utils
function L15_1()
  local L0_2, L1_2
  L0_2 = config
  L0_2 = L0_2.modules
  L0_2 = L0_2.menu
  if "menu_default" == L0_2 then
    L0_2 = L12_1
    L0_2 = L0_2()
    L1_2 = L0_2.CloseAll
    L1_2()
    return
  end
  L0_2 = lib
  L0_2 = L0_2.hideMenu
  L1_2 = true
  L0_2(L1_2)
  L0_2 = lib
  L0_2 = L0_2.closeInputDialog
  L0_2()
  L0_2 = Citizen
  L0_2 = L0_2.Wait
  L1_2 = 0
  L0_2(L1_2)
end
L14_1.hideInteractionMenu = L15_1
function L14_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = {}
  L2_2 = 1
  L3_2 = #A0_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = Utils
    L6_2 = L6_2.deepCopy
    L7_2 = A0_2[L5_2]
    if not L7_2 then
      L7_2 = {}
    end
    L6_2 = L6_2(L7_2)
    L7_2 = Utils
    L7_2 = L7_2.deepCopy
    L8_2 = L6_2 or L8_2
    if not L6_2 then
      L8_2 = {}
    end
    L7_2 = L7_2(L8_2)
    L6_2.args = L7_2
    L6_2.close = false
    L7_2 = L6_2
    if L7_2 then
      L7_2 = L7_2.label
    end
    if L7_2 then
      L7_2 = L6_2.label
      L8_2 = L7_2
      L7_2 = L7_2.gsub
      L9_2 = "<span.->(%w.-)</span>"
      L10_2 = "%1"
      L7_2 = L7_2(L8_2, L9_2, L10_2)
      L6_2.label = L7_2
    end
    L7_2 = L6_2
    if L7_2 then
      L7_2 = L7_2.args
    end
    if L7_2 then
      L7_2 = L7_2.label
    end
    if L7_2 then
      L7_2 = L6_2.args
      L8_2 = L6_2.args
      L8_2 = L8_2.label
      L9_2 = L8_2
      L8_2 = L8_2.gsub
      L10_2 = "<span.->(%w.-)</span>"
      L11_2 = "%1"
      L8_2 = L8_2(L9_2, L10_2, L11_2)
      L7_2.label = L8_2
    end
    L7_2 = L6_2.type
    if "inputQuantity" == L7_2 then
      L6_2.close = false
    else
      L6_2.type = "default"
    end
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = L1_2
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  return L1_2
end
function L15_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = Utils
  L1_2 = L1_2.eventsPrefix
  L2_2 = "_"
  L3_2 = A0_2
  L1_2 = L1_2 .. L2_2 .. L3_2
  return L1_2
end
L16_1 = Utils
function L17_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2, A6_2)
  local L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L7_2 = L15_1
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  A0_2 = L7_2
  L7_2 = config
  L7_2 = L7_2.modules
  L7_2 = L7_2.menu
  if "menu_default" == L7_2 then
    L7_2 = L13_1
    L8_2 = A0_2
    L9_2 = A1_2
    L10_2 = A2_2
    L11_2 = A3_2
    L12_2 = A4_2
    L13_2 = A5_2
    L14_2 = A6_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
    return
  end
  if not (A1_2 and A2_2) or not A3_2 then
    L7_2 = pcall
    L8_2 = lib
    L8_2 = L8_2.showMenu
    L9_2 = A0_2
    L7_2(L8_2, L9_2)
    return
  end
  L7_2 = Utils
  L7_2 = L7_2.hideInteractionMenu
  L7_2()
  L7_2 = Citizen
  L7_2 = L7_2.Wait
  L8_2 = 0
  L7_2(L8_2)
  L7_2 = L14_1
  L8_2 = A2_2
  L7_2 = L7_2(L8_2)
  L8_2 = lib
  L8_2 = L8_2.registerMenu
  L9_2 = {}
  L9_2.id = A0_2
  L9_2.title = A1_2
  L9_2.options = L7_2
  L10_2 = config
  L10_2 = L10_2.menuPosition
  if not L10_2 then
    L10_2 = "bottom-right"
  end
  L9_2.position = L10_2
  L9_2.onClose = A4_2
  L9_2.onSelected = A5_2
  function L10_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3
    L3_3 = A6_2
    if not L3_3 then
      return
    end
    L3_3 = A2_3.sliderValues
    L3_3 = L3_3[A1_3]
    L4_3 = A6_2
    L5_3 = A0_3
    L6_3 = A1_3
    L7_3 = A2_3
    L8_3 = L3_3
    L4_3(L5_3, L6_3, L7_3, L8_3)
  end
  L9_2.onSideScroll = L10_2
  L10_2 = A3_2
  L8_2(L9_2, L10_2)
  L8_2 = Citizen
  L8_2 = L8_2.Wait
  L9_2 = 0
  L8_2(L9_2)
  L8_2 = lib
  L8_2 = L8_2.showMenu
  L9_2 = A0_2
  L8_2(L9_2)
end
L16_1.openInteractionMenu = L17_1
L16_1 = Utils
function L17_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  if not A1_2 then
    A1_2 = 1
  end
  L3_2 = config
  L3_2 = L3_2.modules
  L3_2 = L3_2.menu
  if "menu_default" == L3_2 then
    L3_2 = L10_1
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = A2_2
    return L3_2(L4_2, L5_2, L6_2)
  end
  L3_2 = lib
  L3_2 = L3_2.closeInputDialog
  L3_2()
  L3_2 = lib
  L3_2 = L3_2.getOpenMenu
  L3_2 = L3_2()
  if L3_2 then
    L3_2 = lib
    L3_2 = L3_2.getOpenMenu
    L3_2 = L3_2()
    L9_1 = L3_2
    L3_2 = lib
    L3_2 = L3_2.hideMenu
    L3_2()
  end
  L3_2 = lib
  L3_2 = L3_2.inputDialog
  L4_2 = A0_2
  L5_2 = {}
  L6_2 = {}
  L6_2.label = A0_2
  L6_2.type = "number"
  L6_2.min = A1_2
  L6_2.max = A2_2
  L6_2.default = A1_2
  L6_2.required = true
  L5_2[1] = L6_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L9_1
  if L4_2 then
    L4_2 = lib
    L4_2 = L4_2.showMenu
    L5_2 = L9_1
    L4_2(L5_2)
    L4_2 = nil
    L9_1 = L4_2
  end
  if L3_2 then
    L4_2 = L3_2[1]
    if L4_2 then
      goto lbl_60
    end
  end
  L4_2 = nil
  ::lbl_60::
  return L4_2
end
L16_1.askQuantity = L17_1
L16_1 = Utils
function L17_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = config
  L1_2 = L1_2.modules
  L1_2 = L1_2.menu
  if "menu_default" == L1_2 then
    L1_2 = L11_1
    L2_2 = A0_2
    return L1_2(L2_2)
  end
  L1_2 = lib
  L1_2 = L1_2.closeInputDialog
  L1_2()
  L1_2 = lib
  L1_2 = L1_2.getOpenMenu
  L1_2 = L1_2()
  if L1_2 then
    L1_2 = lib
    L1_2 = L1_2.getOpenMenu
    L1_2 = L1_2()
    L9_1 = L1_2
    L1_2 = lib
    L1_2 = L1_2.hideMenu
    L1_2()
  end
  L1_2 = lib
  L1_2 = L1_2.inputDialog
  L2_2 = A0_2
  L3_2 = {}
  L4_2 = {}
  L4_2.label = A0_2
  L4_2.type = "input"
  L4_2.required = true
  L3_2[1] = L4_2
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L9_1
  if L2_2 then
    L2_2 = L8_1
    if not L2_2 then
      L2_2 = lib
      L2_2 = L2_2.showMenu
      L3_2 = L9_1
      L2_2(L3_2)
      L2_2 = nil
      L9_1 = L2_2
    end
  end
  if L1_2 then
    L2_2 = L1_2[1]
    if L2_2 then
      goto lbl_55
    end
  end
  L2_2 = nil
  ::lbl_55::
  return L2_2
end
L16_1.askInput = L17_1
