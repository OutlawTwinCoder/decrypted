local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = Dialogs
if not L0_1 then
  L0_1 = {}
end
Dialogs = L0_1
L0_1 = {
  {
    id = "offline-info",
    message = "Nexus announcements are disabled in the OutlawTwinCoder edition.",
    url = nil
  }
}
L1_1 = {}
L2_1 = {}
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L1_2 = GetResourceMetadata
  L2_2 = GetCurrentResourceName
  L2_2 = L2_2()
  L3_2 = "version"
  L4_2 = 0
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  if not L1_2 then
    L2_2 = false
    return L2_2
  end
  function L2_2(A0_3)
    local L1_3, L2_3, L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3
    L1_3 = {}
    L3_3 = A0_3
    L2_3 = A0_3.gmatch
    L4_3 = "(%d+)"
    L2_3, L3_3, L4_3, L5_3 = L2_3(L3_3, L4_3)
    for L6_3 in L2_3, L3_3, L4_3, L5_3 do
      L7_3 = table
      L7_3 = L7_3.insert
      L8_3 = L1_3
      L9_3 = tonumber
      L10_3 = L6_3
      L9_3, L10_3 = L9_3(L10_3)
      L7_3(L8_3, L9_3, L10_3)
    end
    return L1_3
  end
  L3_2 = L2_2
  L4_2 = L1_2
  L3_2 = L3_2(L4_2)
  L4_2 = L2_2
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = 1
  L6_2 = math
  L6_2 = L6_2.max
  L7_2 = #L3_2
  L8_2 = #L4_2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = 1
  for L8_2 = L5_2, L6_2, L7_2 do
    L9_2 = L3_2[L8_2]
    if not L9_2 then
      L9_2 = 0
    end
    L10_2 = L4_2[L8_2]
    if not L10_2 then
      L10_2 = 0
    end
    if L9_2 ~= L10_2 then
      L11_2 = L9_2 > L10_2
      return L11_2
    end
  end
  L5_2 = true
  return L5_2
end
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  if not A0_2 then
    L1_2 = false
    return L1_2
  end
  L1_2 = A0_2.minVersion
  if L1_2 then
    L1_2 = L3_1
    L2_2 = A0_2.minVersion
    L1_2 = L1_2(L2_2)
    if not L1_2 then
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = A0_2.maxVersion
  if L1_2 then
    L1_2 = L3_1
    L2_2 = A0_2.maxVersion
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = false
      return L1_2
    end
  end
  L1_2 = A0_2.excludedScripts
  if L1_2 then
    L1_2 = json
    L1_2 = L1_2.decode
    L2_2 = A0_2.excludedScripts
    L1_2 = L1_2(L2_2)
    L2_2 = 1
    L3_2 = #L1_2
    L4_2 = 1
    for L5_2 = L2_2, L3_2, L4_2 do
      L6_2 = GetResourceState
      L7_2 = L1_2[L5_2]
      L6_2 = L6_2(L7_2)
      if "missing" ~= L6_2 then
        L6_2 = false
        return L6_2
      end
    end
  end
  L1_2 = A0_2.includedScripts
  if L1_2 then
    L1_2 = false
    L2_2 = json
    L2_2 = L2_2.decode
    L3_2 = A0_2.includedScripts
    L2_2 = L2_2(L3_2)
    L3_2 = 1
    L4_2 = #L2_2
    L5_2 = 1
    for L6_2 = L3_2, L4_2, L5_2 do
      L7_2 = Utils
      L7_2 = L7_2.eventsPrefix
      L8_2 = L2_2[L6_2]
      if L7_2 == L8_2 then
        L1_2 = true
        break
      end
    end
    if not L1_2 then
      L3_2 = false
      return L3_2
    end
  end
  L1_2 = true
  return L1_2
end
function L5_1()
  L0_1 = {
    {
      id = "offline-info",
      message = "Nexus announcements are disabled in the OutlawTwinCoder edition.",
      url = nil
    }
  }
end
L6_1 = Citizen
L6_1 = L6_1.CreateThread
function L7_1()
  local L0_2
  L0_2 = DISABLE_ANNOUNCEMENTS
  if L0_2 then
    return
  end
  L5_1()
end
L6_1(L7_1)
L6_1 = RegisterServerCallback
L7_1 = Utils
L7_1 = L7_1.eventsPrefix
L8_1 = ":nexus:getAnnouncements"
L7_1 = L7_1 .. L8_1
function L8_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = Utils
  L2_2 = L2_2.isAllowed
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if not L2_2 then
    return
  end
  L2_2 = A1_2
  L3_2 = L0_1
  L2_2(L3_2)
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = Utils
L7_1 = L7_1.eventsPrefix
L8_1 = ":nexus:announcementSeen"
L7_1 = L7_1 .. L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = Utils
  L2_2 = L2_2.isAllowed
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L1_1
    L2_2 = L2_2[A0_2]
    if not L2_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = L1_1
  L2_2[A0_2] = true
  return
end
L6_1(L7_1, L8_1)
L6_1 = RegisterNetEvent
L7_1 = Utils
L7_1 = L7_1.eventsPrefix
L8_1 = ":nexus:announcementClicked"
L7_1 = L7_1 .. L8_1
function L8_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = source
  L2_2 = Utils
  L2_2 = L2_2.isAllowed
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = L2_1
    L2_2 = L2_2[A0_2]
    if not L2_2 then
      goto lbl_13
    end
  end
  do return end
  ::lbl_13::
  L2_2 = L2_1
  L2_2[A0_2] = true
  return
end
L6_1(L7_1, L8_1)
