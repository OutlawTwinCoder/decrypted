local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = "announcements"
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Utils
  L1_2 = L1_2.eventsPrefix
  L2_2 = "_announcement_"
  L3_2 = tostring
  L4_2 = A0_2
  L3_2 = L3_2(L4_2)
  L1_2 = L1_2 .. L2_2 .. L3_2
  return L1_2
end
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = L1_1
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = GetResourceKvpString
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L2_2 = "hidden" == L2_2
  return L2_2
end
L3_1 = RegisterNUICallback
L4_1 = "nuiReady"
function L5_1()
  local L0_2, L1_2, L2_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "loadDialog"
  L2_2 = L0_1
  L1_2.dialogName = L2_2
  L0_2(L1_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "nexusGetAnnouncements"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = TriggerServerPromise
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":nexus:getAnnouncements"
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2(L3_2)
  L3_2 = {}
  L4_2 = 1
  L5_2 = #L2_2
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_2[L7_2]
    L9_2 = L2_1
    L10_2 = L8_2.id
    L9_2 = L9_2(L10_2)
    if not L9_2 then
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L3_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "nexusAnnouncementSeen"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":nexus:announcementSeen"
  L3_2 = L3_2 .. L4_2
  L4_2 = A0_2.announcementId
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L2_2()
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "nexusAnnouncementClicked"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerEvent
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":nexus:announcementClicked"
  L3_2 = L3_2 .. L4_2
  L4_2 = A0_2.announcementId
  L2_2(L3_2, L4_2)
  L2_2 = A1_2
  L2_2()
end
L3_1(L4_1, L5_1)
L3_1 = RegisterNUICallback
L4_1 = "nexusMarkAnnouncementAsHidden"
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.announcementId
  L3_2 = L1_1
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = "hidden"
  L5_2 = SetResourceKvp
  L6_2 = L3_2
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = A1_2
  L6_2 = true
  L5_2(L6_2)
end
L3_1(L4_1, L5_1)
