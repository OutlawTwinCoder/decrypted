local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = "progressbar"
L1_1 = RegisterNUICallback
L2_1 = "nuiReady"
function L3_1()
  local L0_2, L1_2, L2_2
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "loadDialog"
  L2_2 = L0_1
  L1_2.dialogName = L2_2
  L0_2(L1_2)
end
L1_1(L2_1, L3_1)
L1_1 = nil
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2
  L3_2 = SendNUIMessage
  L4_2 = {}
  L4_2.action = "progressBar"
  L4_2.time = A0_2
  L4_2.text = A1_2
  L4_2.hexColor = A2_2
  L3_2(L4_2)
end
L3_1 = RegisterNetEvent
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":internalProgressBar"
L4_1 = L4_1 .. L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L3_2 = config
  L3_2 = L3_2.modules
  L3_2 = L3_2.progressbar
  if "OutlawTwinCoder" == L3_2 then
    L3_2 = L2_1
    L4_2 = A0_2
    L5_2 = A1_2
    L6_2 = A2_2
    L3_2(L4_2, L5_2, L6_2)
  else
    L3_2 = Utils
    L3_2 = L3_2.callModuleFunc
    L4_2 = "progressbar"
    L5_2 = "start"
    L6_2 = A0_2
    L7_2 = A1_2
    L8_2 = A2_2
    L3_2(L4_2, L5_2, L6_2, L7_2, L8_2)
  end
end
L3_1(L4_1, L5_1)
L3_1 = Dialogs
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  canUseMarkers = false
  if not A2_2 then
    A2_2 = DEFAULT_PROGRESSBAR_COLOR
  end
  L3_2 = TriggerEvent
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":internalProgressBar"
  L4_2 = L4_2 .. L5_2
  L5_2 = A0_2
  L6_2 = A1_2
  L7_2 = A2_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = Timeout
  L4_2 = A0_2
  function L5_2()
    local L0_3, L1_3
    canUseMarkers = true
  end
  L3_2 = L3_2(L4_2, L5_2)
  L1_1 = L3_2
end
L3_1.startProgressBar = L4_1
L3_1 = RegisterNetEvent
L4_1 = Utils
L4_1 = L4_1.eventsPrefix
L5_1 = ":startProgressBar"
L4_1 = L4_1 .. L5_1
L5_1 = Dialogs
L5_1 = L5_1.startProgressBar
L3_1(L4_1, L5_1)
L3_1 = Dialogs
function L4_1()
  local L0_2, L1_2
  L0_2 = L1_1
  if L0_2 then
    L0_2 = ClearTimeout
    L1_2 = L1_1
    L0_2(L1_2)
    L0_2 = nil
    L1_1 = L0_2
  end
  L0_2 = SendNUIMessage
  L1_2 = {}
  L1_2.action = "stopProgressBar"
  L0_2(L1_2)
  canUseMarkers = true
end
L3_1.stopProgressBar = L4_1
