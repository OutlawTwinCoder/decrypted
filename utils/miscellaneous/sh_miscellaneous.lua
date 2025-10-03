local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = {}
Utils = L0_1
L0_1 = Utils
L0_1.eventsPrefix = "jobs_creator"
L0_1 = Integrations
if not L0_1 then
  L0_1 = {}
end
Integrations = L0_1
L0_1 = locales
if not L0_1 then
  L0_1 = {}
end
locales = L0_1
function L0_1(A0_2, ...)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = nil
  L2_2 = locales
  L3_2 = config
  L3_2 = L3_2.locale
  L2_2 = L2_2[L3_2]
  if L2_2 then
    L2_2 = locales
    L3_2 = config
    L3_2 = L3_2.locale
    L2_2 = L2_2[L3_2]
    L2_2 = L2_2[A0_2]
    if L2_2 then
      L2_2 = locales
      L3_2 = config
      L3_2 = L3_2.locale
      L2_2 = L2_2[L3_2]
      L1_2 = L2_2[A0_2]
  end
  else
    L2_2 = locales
    L2_2 = L2_2.en
    L1_2 = L2_2[A0_2]
  end
  if L1_2 then
    L2_2 = string
    L2_2 = L2_2.gsub
    L3_2 = L1_2
    L4_2 = "%%."
    L5_2 = ""
    L2_2, L3_2 = L2_2(L3_2, L4_2, L5_2)
    L4_2 = {}
    L5_2, L6_2, L7_2, L8_2 = ...
    L4_2[1] = L5_2
    L4_2[2] = L6_2
    L4_2[3] = L7_2
    L4_2[4] = L8_2
    L4_2 = #L4_2
    if L3_2 == L4_2 then
      L4_2 = string
      L4_2 = L4_2.format
      L5_2 = L1_2
      L6_2, L7_2, L8_2 = ...
      return L4_2(L5_2, L6_2, L7_2, L8_2)
    else
      L4_2 = print
      L4_2()
      L4_2 = print
      L5_2 = "^1Argument missing for translation, retranslate it by copy pasting the ^3['"
      L6_2 = A0_2
      L7_2 = "']^1 translation of the ^5LATEST VERSION of ^6locales/en.lua^1 in the file of your language^7"
      L5_2 = L5_2 .. L6_2 .. L7_2
      L4_2(L5_2)
      L4_2 = print
      L5_2 = "^3[DEBUG] Arguments passed: "
      L6_2 = json
      L6_2 = L6_2.encode
      L7_2 = {}
      L8_2 = ...
      L7_2[1] = L8_2
      L6_2 = L6_2(L7_2)
      L5_2 = L5_2 .. L6_2
      L4_2(L5_2)
      L4_2 = print
      L4_2()
      return A0_2
    end
  else
    L2_2 = print
    L3_2 = "^1Translation missing: ^3"
    L4_2 = A0_2
    L5_2 = "^7"
    L3_2 = L3_2 .. L4_2 .. L5_2
    L2_2(L3_2)
    return A0_2
  end
end
getLocalizedText = L0_1
L0_1 = {}
L1_1 = 0
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  L2_2 = L2_2 + 1
  L1_1 = L2_2
  L2_2 = L1_1
  L3_2 = L0_1
  L3_2[L2_2] = A1_2
  L3_2 = SetTimeout
  L4_2 = A0_2
  function L5_2()
    local L0_3, L1_3
    L1_3 = L2_2
    L0_3 = L0_1
    L0_3 = L0_3[L1_3]
    if L0_3 then
      L1_3 = L2_2
      L0_3 = L0_1
      L0_3 = L0_3[L1_3]
      L0_3()
    end
  end
  L3_2(L4_2, L5_2)
  return L2_2
end
Timeout = L2_1
function L2_1(A0_2)
  local L1_2
  L1_2 = L0_1
  L1_2[A0_2] = nil
end
ClearTimeout = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = vector3
  L2_2 = A0_2.x
  L2_2 = L2_2 + 0.0
  L3_2 = A0_2.y
  L3_2 = L3_2 + 0.0
  L4_2 = A0_2.z
  L4_2 = L4_2 + 0.0
  return L1_2(L2_2, L3_2, L4_2)
end
vecFromTable = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L1_2 = 0
  L2_2 = {}
  L3_2 = pairs
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = L1_2
    L10_2 = L8_2.chances
    L1_2 = L1_2 + L10_2
    L10_2 = table
    L10_2 = L10_2.insert
    L11_2 = L2_2
    L12_2 = {}
    L12_2.min = L9_2
    L12_2.max = L1_2
    L12_2.key = L7_2
    L10_2(L11_2, L12_2)
  end
  L3_2 = math
  L3_2 = L3_2.random
  L4_2 = 0
  L5_2 = L1_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = pairs
  L5_2 = L2_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = L9_2.min
    if L3_2 >= L10_2 then
      L10_2 = L9_2.max
      if L3_2 <= L10_2 then
        L10_2 = L9_2.key
        L10_2 = A0_2[L10_2]
        return L10_2
      end
    end
  end
end
getRandomElementFromTable = L2_1
L2_1 = {}
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2.key
  L2_2 = A0_2.name
  L3_2 = L2_1
  L4_2 = L2_1
  L4_2 = L4_2[L2_2]
  if not L4_2 then
    L4_2 = {}
  end
  L3_2[L2_2] = L4_2
  L3_2 = table
  L3_2 = L3_2.insert
  L4_2 = L2_1
  L4_2 = L4_2[L2_2]
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
addScriptRemovableEvent = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = L2_1
  L1_2 = L1_2[A0_2]
  if L1_2 then
    L1_2 = pairs
    L2_2 = L2_1
    L2_2 = L2_2[A0_2]
    L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
    for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
      L7_2 = {}
      L7_2.key = L6_2
      L7_2.name = A0_2
      L8_2 = RemoveEventHandler
      L9_2 = L7_2
      L8_2(L9_2)
    end
  end
end
L4_1 = exports
L5_1 = "disableScriptEvent"
L6_1 = L3_1
L4_1(L5_1, L6_1)
function L4_1()
  local L0_2, L1_2, L2_2
  L0_2 = Settings
  L0_2 = L0_2.loadConfig
  L0_2 = L0_2()
  if not L0_2 then
    L1_2 = print
    L2_2 = "^1Config failed to load^7"
    L1_2(L2_2)
    return
  end
  L1_2 = print
  L2_2 = "^2Config loaded successfully^7"
  L1_2(L2_2)
end
L5_1 = Citizen
L5_1 = L5_1.CreateThread
function L6_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = IsDuplicityVersion
  L0_2 = L0_2()
  if L0_2 then
    L0_2 = GetCurrentResourceName
    L0_2 = L0_2()
    L1_2 = Utils
    L1_2 = L1_2.eventsPrefix
    if L0_2 ~= L1_2 then
      L0_2 = print
      L1_2 = "It would be appreciated using ^5"
      L2_2 = Utils
      L2_2 = L2_2.eventsPrefix
      L3_2 = "^7 as name of the resource"
      L1_2 = L1_2 .. L2_2 .. L3_2
      L0_2(L1_2)
    end
    L0_2 = setupDatabase
    L0_2 = L0_2()
    if not L0_2 then
      return
    end
  end
  L0_2 = L4_1
  L0_2()
  L0_2 = Framework
  L0_2 = L0_2.setupFramework
  L0_2()
end
L5_1(L6_1)
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2
  if nil == A1_2 then
    A1_2 = 0
  end
  L2_2 = type
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if "table" == L2_2 then
    L2_2 = ""
    L3_2 = 1
    L4_2 = A1_2 + 1
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L2_2
      L8_2 = "    "
      L7_2 = L7_2 .. L8_2
      L2_2 = L7_2
    end
    L2_2 = "{\n"
    L3_2 = pairs
    L4_2 = A0_2
    L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
    for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
      L9_2 = type
      L10_2 = L7_2
      L9_2 = L9_2(L10_2)
      if "number" ~= L9_2 then
        L9_2 = "\""
        L10_2 = L7_2
        L11_2 = "\""
        L9_2 = L9_2 .. L10_2 .. L11_2
        L7_2 = L9_2
      end
      L9_2 = 1
      L10_2 = A1_2
      L11_2 = 1
      for L12_2 = L9_2, L10_2, L11_2 do
        L13_2 = L2_2
        L14_2 = "    "
        L13_2 = L13_2 .. L14_2
        L2_2 = L13_2
      end
      L9_2 = L2_2
      L10_2 = "["
      L11_2 = L7_2
      L12_2 = "] = "
      L13_2 = DumpTable
      L14_2 = L8_2
      L15_2 = A1_2 + 1
      L13_2 = L13_2(L14_2, L15_2)
      L14_2 = ",\n"
      L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2 .. L14_2
      L2_2 = L9_2
    end
    L3_2 = 1
    L4_2 = A1_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = L2_2
      L8_2 = "    "
      L7_2 = L7_2 .. L8_2
      L2_2 = L7_2
    end
    L3_2 = L2_2
    L4_2 = "}"
    L3_2 = L3_2 .. L4_2
    return L3_2
  else
    L2_2 = tostring
    L3_2 = A0_2
    return L2_2(L3_2)
  end
end
DumpTable = L5_1
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = os
  L0_2 = L0_2.time
  L1_2 = os
  L1_2 = L1_2.date
  L2_2 = "*t"
  L1_2, L2_2 = L1_2(L2_2)
  return L0_2(L1_2, L2_2)
end
getCurrentUnixTime = L5_1
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = math
  L0_2 = L0_2.random
  L1_2 = 65
  L2_2 = 90
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = string
  L1_2 = L1_2.char
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  return L1_2
end
function L6_1()
  local L0_2, L1_2, L2_2
  L0_2 = math
  L0_2 = L0_2.random
  L1_2 = 0
  L2_2 = 9
  L0_2 = L0_2(L1_2, L2_2)
  L1_2 = tostring
  L2_2 = L0_2
  L1_2 = L1_2(L2_2)
  return L1_2
end
function L7_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L0_2 = ""
  L1_2 = false
  L2_2 = EXAMPLE_PLATE
  L3_2 = L2_2
  L2_2 = L2_2.gsub
  L4_2 = "#"
  L5_2 = ""
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  L3_2 = L2_2
  L2_2 = L2_2.len
  L2_2 = L2_2(L3_2)
  if L2_2 > 8 then
    L2_2 = print
    L3_2 = "^1Maximum plate length is 8 characters^7"
    L2_2(L3_2)
  end
  L2_2 = 1
  L3_2 = EXAMPLE_PLATE
  L3_2 = #L3_2
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = EXAMPLE_PLATE
    L7_2 = L6_2
    L6_2 = L6_2.sub
    L8_2 = L5_2
    L9_2 = L5_2
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    if "#" == L6_2 then
      L1_2 = not L1_2
    elseif L1_2 then
      L7_2 = L0_2
      L8_2 = L6_2
      L7_2 = L7_2 .. L8_2
      L0_2 = L7_2
    else
      L7_2 = tonumber
      L8_2 = L6_2
      L7_2 = L7_2(L8_2)
      if L7_2 then
        L7_2 = L0_2
        L8_2 = L6_1
        L8_2 = L8_2()
        L7_2 = L7_2 .. L8_2
        L0_2 = L7_2
      elseif " " == L6_2 then
        L7_2 = L0_2
        L8_2 = " "
        L7_2 = L7_2 .. L8_2
        L0_2 = L7_2
      else
        L7_2 = L0_2
        L8_2 = L5_1
        L8_2 = L8_2()
        L7_2 = L7_2 .. L8_2
        L0_2 = L7_2
      end
    end
  end
  return L0_2
end
generatePlate = L7_1
function L7_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = table
  L1_2 = L1_2.unpack
  L2_2 = A0_2
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  if not (L1_2 and L2_2) or not L3_2 then
    L4_2 = A0_2.x
    L5_2 = A0_2.y
    L3_2 = A0_2.z
    L2_2 = L5_2
    L1_2 = L4_2
  end
  L4_2 = {}
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "%.2f"
  L7_2 = L1_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.x = L5_2
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "%.2f"
  L7_2 = L2_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.y = L5_2
  L5_2 = string
  L5_2 = L5_2.format
  L6_2 = "%.2f"
  L7_2 = L3_2
  L5_2 = L5_2(L6_2, L7_2)
  L4_2.z = L5_2
  return L4_2
end
stripCoords = L7_1
L7_1 = Utils
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "string" ~= L1_2 then
    return A0_2
  end
  L2_2 = A0_2
  L1_2 = A0_2.gsub
  L3_2 = "^%l"
  L4_2 = string
  L4_2 = L4_2.upper
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  return L1_2
end
L7_1.firstToUpper = L8_1
L7_1 = Utils
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = DoesEntityExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    L1_2 = "UNIQUE_ID_NOT_FOUND"
    return L1_2
  end
  L1_2 = NetworkGetNetworkIdFromEntity
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = math
  L2_2 = L2_2.abs
  L3_2 = GetEntityModel
  L4_2 = A0_2
  L3_2, L4_2, L5_2, L6_2, L7_2, L8_2 = L3_2(L4_2)
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2)
  L3_2 = GetEntityType
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L4_2 = L1_2
  L5_2 = "-"
  L6_2 = L2_2
  L7_2 = "-"
  L8_2 = L3_2
  L4_2 = L4_2 .. L5_2 .. L6_2 .. L7_2 .. L8_2
  return L4_2
end
L7_1.getUniqueEntityId = L8_1
L7_1 = Utils
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = pcall
  function L3_2()
    local L0_3, L1_3
    L0_3 = exports
    L1_3 = A0_2
    L0_3 = L0_3[L1_3]
    L1_3 = A1_2
    L0_3 = L0_3[L1_3]
    return L0_3
  end
  L2_2 = L2_2(L3_2)
  return L2_2
end
L7_1.doesExportExist = L8_1
L7_1 = Utils
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = type
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if "boolean" == L1_2 then
    return A0_2
  else
    L1_2 = type
    L2_2 = A0_2
    L1_2 = L1_2(L2_2)
    if "number" == L1_2 then
      L1_2 = 1 == A0_2
      return L1_2
    else
      L1_2 = false
      return L1_2
    end
  end
end
L7_1.toBool = L8_1
L7_1 = Utils
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  if not A0_2 then
    return
  end
  L1_2 = {}
  L2_2 = pairs
  L3_2 = A0_2
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = type
    L9_2 = L7_2
    L8_2 = L8_2(L9_2)
    if "table" == L8_2 then
      L8_2 = Utils
      L8_2 = L8_2.deepCopy
      L9_2 = L7_2
      L8_2 = L8_2(L9_2)
      L7_2 = L8_2
    end
    L1_2[L6_2] = L7_2
  end
  return L1_2
end
L7_1.deepCopy = L8_1
L7_1 = Utils
function L8_1(...)
  local L0_2, L1_2, L2_2
  L0_2 = {}
  L1_2, L2_2 = ...
  L0_2[1] = L1_2
  L0_2[2] = L2_2
  L1_2 = Citizen
  L1_2 = L1_2.CreateThread
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3, L5_3
    while true do
      L0_3 = Citizen
      L0_3 = L0_3.Wait
      L1_3 = 3000
      L0_3(L1_3)
      L0_3 = print
      L0_3()
      L0_3 = 1
      L1_3 = L0_2
      L1_3 = #L1_3
      L2_3 = 1
      for L3_3 = L0_3, L1_3, L2_3 do
        L4_3 = print
        L5_3 = L0_2
        L5_3 = L5_3[L3_3]
        L4_3(L5_3)
      end
      L0_3 = print
      L0_3()
    end
  end
  L1_2(L2_2)
end
L7_1.showPermanentError = L8_1
L7_1 = Utils
function L8_1(A0_2)
  local L1_2
  L1_2 = config
  if L1_2 then
    L1_2 = config
    L1_2 = L1_2.externalScriptsNames
    L1_2 = L1_2[A0_2]
    if L1_2 then
      L1_2 = config
      L1_2 = L1_2.externalScriptsNames
      L1_2 = L1_2[A0_2]
      return L1_2
    end
  end
  return A0_2
end
L7_1.getScriptName = L8_1
L7_1 = Utils
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = Utils
  L1_2 = L1_2.getScriptName
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L2_2 = exports
  L2_2 = L2_2[L1_2]
  return L2_2
end
L7_1.getScriptExports = L8_1
L7_1 = Utils
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A0_2 <= A1_2 then
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = A0_2
    L4_2 = A1_2
    return L2_2(L3_2, L4_2)
  else
    L2_2 = math
    L2_2 = L2_2.random
    L3_2 = A1_2
    L4_2 = A0_2
    return L2_2(L3_2, L4_2)
  end
end
L7_1.getRandomQuantity = L8_1
L7_1 = Utils
function L8_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = config
  L2_2 = L2_2.modules
  L2_2 = L2_2[A0_2]
  if not L2_2 then
    L3_2 = print
    L4_2 = "^1Select a module for '"
    L5_2 = A0_2
    L6_2 = "' in menu settings!^7"
    L4_2 = L4_2 .. L5_2 .. L6_2
    L3_2(L4_2)
    return
  end
  L3_2 = Integrations
  L3_2 = L3_2[A0_2]
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2[A1_2]
  if not L3_2 then
    L4_2 = print
    L5_2 = "^1Function "
    L6_2 = A1_2
    L7_2 = " does not exist in "
    L8_2 = A0_2
    L9_2 = " module^7"
    L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2
    L4_2(L5_2)
    return
  end
  L4_2 = L3_2
  L5_2, L6_2, L7_2, L8_2, L9_2 = ...
  return L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
end
L7_1.callModuleFunc = L8_1
L7_1 = Utils
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = {}
  L2_2 = 0
  L3_2 = GetNumResources
  L3_2 = L3_2()
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = GetResourceByFindIndex
    L7_2 = L5_2
    L6_2 = L6_2(L7_2)
    L7_2 = Utils
    L7_2 = L7_2.doesExportExist
    L8_2 = L6_2
    L9_2 = A0_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = #L1_2
      L7_2 = L7_2 + 1
      L1_2[L7_2] = L6_2
    end
  end
  L2_2 = #L1_2
  if 0 == L2_2 then
    return
  end
  L2_2 = table
  L2_2 = L2_2.sort
  L3_2 = L1_2
  L2_2(L3_2)
  L2_2 = L1_2[1]
  return L2_2
end
L7_1.findScriptFromExportName = L8_1
L7_1 = Utils
function L8_1(A0_2)
  local L1_2, L2_2
  L1_2 = Utils
  L1_2 = L1_2.findScriptFromExportName
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L1_2 = nil ~= L1_2
  return L1_2
end
L7_1.doesExportExistAnywhere = L8_1
L7_1 = Utils
function L8_1(A0_2, A1_2, ...)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = Utils
  L2_2 = L2_2.getScriptName
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Utils
  L3_2 = L3_2.doesExportExist
  L4_2 = L2_2
  L5_2 = A1_2
  L3_2 = L3_2(L4_2, L5_2)
  if not L3_2 then
    L3_2 = Utils
    L3_2 = L3_2.findScriptFromExportName
    L4_2 = A1_2
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
    if not L2_2 then
      L3_2 = ""
      L4_2 = 1
      L5_2 = select
      L6_2 = "#"
      L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = ...
      L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
      L6_2 = 1
      for L7_2 = L4_2, L5_2, L6_2 do
        L8_2 = select
        L9_2 = L7_2
        L10_2, L11_2, L12_2, L13_2, L14_2 = ...
        L8_2 = L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
        L9_2 = L3_2
        L10_2 = "param"
        L11_2 = L7_2
        L12_2 = ": "
        L13_2 = type
        L14_2 = L8_2
        L13_2 = L13_2(L14_2)
        L9_2 = L9_2 .. L10_2 .. L11_2 .. L12_2 .. L13_2
        L3_2 = L9_2
        L9_2 = select
        L10_2 = "#"
        L11_2, L12_2, L13_2, L14_2 = ...
        L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2)
        if L7_2 ~= L9_2 then
          L9_2 = L3_2
          L10_2 = ", "
          L9_2 = L9_2 .. L10_2
          L3_2 = L9_2
        end
      end
      L4_2 = print
      L5_2 = "^1Couldn't find any script that replaces ^3export['"
      L6_2 = A0_2
      L7_2 = "']:"
      L8_2 = A1_2
      L9_2 = "("
      L10_2 = L3_2
      L11_2 = ")^7"
      L5_2 = L5_2 .. L6_2 .. L7_2 .. L8_2 .. L9_2 .. L10_2 .. L11_2
      L4_2(L5_2)
      L4_2 = -1
      return L4_2
    end
  end
  L3_2 = exports
  L3_2 = L3_2[L2_2]
  L3_2 = L3_2[A1_2]
  L4_2 = exports
  L4_2 = L4_2[L2_2]
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2 = ...
  return L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
L7_1.callScriptExport = L8_1
L7_1 = Utils
function L8_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L2_2 = Utils
  L2_2 = L2_2.deepCopy
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = Utils
  L3_2 = L3_2.deepCopy
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  if not L2_2 or not L3_2 then
    L4_2 = print
    L5_2 = "^1Utils.useDefaultValues error^7"
    L4_2(L5_2)
    L4_2 = nil
    return L4_2
  end
  L4_2 = pairs
  L5_2 = L3_2
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  for L8_2, L9_2 in L4_2, L5_2, L6_2, L7_2 do
    L10_2 = type
    L11_2 = L9_2
    L10_2 = L10_2(L11_2)
    if "table" == L10_2 then
      L10_2 = Utils
      L10_2 = L10_2.useDefaultValues
      L11_2 = L2_2[L8_2]
      if not L11_2 then
        L11_2 = {}
      end
      L12_2 = L9_2
      L10_2 = L10_2(L11_2, L12_2)
      L2_2[L8_2] = L10_2
    else
      L10_2 = L2_2[L8_2]
      L10_2 = L9_2 or L10_2
      if nil ~= L10_2 or not L9_2 then
        L10_2 = L2_2[L8_2]
      end
      L2_2[L8_2] = L10_2
    end
  end
  return L2_2
end
L7_1.useDefaultValues = L8_1
L7_1 = Utils
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = Utils
  L1_2 = L1_2.getScriptName
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = GetNumResourceMetadata
  L4_2 = L1_2
  L5_2 = "provide"
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = 0
  L5_2 = L3_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = GetResourceMetadata
    L9_2 = L1_2
    L10_2 = "provide"
    L11_2 = L7_2
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    L2_2[L8_2] = true
  end
  return L2_2
end
L7_1.getProvidedForByScript = L8_1
L7_1 = Utils
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Utils
  L2_2 = L2_2.getProvidedForByScript
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  L3_2 = L2_2[A1_2]
  L3_2 = nil ~= L3_2
  return L3_2
end
L7_1.doesScriptProvideFor = L8_1
