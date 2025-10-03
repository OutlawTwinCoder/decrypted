local L0_1, L1_1, L2_1
L0_1 = RegisterNUICallback
L1_1 = "getLocale"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  while true do
    L2_2 = config
    if L2_2 then
      break
    end
    L2_2 = Citizen
    L2_2 = L2_2.Wait
    L3_2 = 250
    L2_2(L3_2)
  end
  L2_2 = A1_2
  L3_2 = config
  L3_2 = L3_2.locale
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "get-current-coords"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = vector3
  L5_2 = 0.0
  L6_2 = 0.0
  L7_2 = 1.0
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L3_2 = L3_2 - L4_2
  L4_2 = string
  L4_2 = L4_2.format
  L5_2 = "%.2f"
  L6_2 = GetEntityHeading
  L7_2 = L2_2
  L6_2, L7_2 = L6_2(L7_2)
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = stripCoords
  L6_2 = L3_2
  L5_2 = L5_2(L6_2)
  L6_2 = A1_2
  L7_2 = {}
  L7_2.coords = L5_2
  L7_2.heading = L4_2
  L6_2(L7_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "exit"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = SetNuiFocus
  L3_2 = false
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "getJobGrades"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerCallback
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":getAllJobGrades"
  L3_2 = L3_2 .. L4_2
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.jobName
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "getAllJobsOnlinePlayers"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerCallback
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":getAllJobsOnlinePlayers"
  L3_2 = L3_2 .. L4_2
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "getAllJobsTotalPlayers"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerCallback
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":getAllJobsTotalPlayers"
  L3_2 = L3_2 .. L4_2
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "getJobsSocietyMoney"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerCallback
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":getJobsSocietyMoney"
  L3_2 = L3_2 .. L4_2
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "getRanksDistribution"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerCallback
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":getRanksDistribution"
  L3_2 = L3_2 .. L4_2
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2.jobName
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "create-new-rank"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L2_2 = A0_2.jobName
  L3_2 = A0_2.rankName
  L4_2 = A0_2.rankLabel
  L5_2 = A0_2.rankGrade
  L6_2 = A0_2.rankSalary
  L7_2 = TriggerServerCallback
  L8_2 = Utils
  L8_2 = L8_2.eventsPrefix
  L9_2 = ":createRank"
  L8_2 = L8_2 .. L9_2
  function L9_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L10_2 = L2_2
  L11_2 = L3_2
  L12_2 = L4_2
  L13_2 = L5_2
  L14_2 = L6_2
  L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "updateRank"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = TriggerServerCallback
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":updateRank"
  L3_2 = L3_2 .. L4_2
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L5_2 = A0_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "delete-rank"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.rankId
  L3_2 = TriggerServerCallback
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":deleteRank"
  L4_2 = L4_2 .. L5_2
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "retrieveJobRanks"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.jobName
  L3_2 = TriggerServerCallback
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":retrieveJobRanks"
  L4_2 = L4_2 .. L5_2
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "create-new-job"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  if A0_2 then
    L2_2 = TriggerServerCallback
    L3_2 = Utils
    L3_2 = L3_2.eventsPrefix
    L4_2 = ":createNewJob"
    L3_2 = L3_2 .. L4_2
    function L4_2(A0_3)
      local L1_3, L2_3
      L1_3 = A1_2
      L2_3 = A0_3
      L1_3(L2_3)
    end
    L5_2 = A0_2.jobName
    L6_2 = A0_2.jobLabel
    L2_2(L3_2, L4_2, L5_2, L6_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "update-job"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = A0_2.oldJobName
  L3_2 = A0_2.jobName
  L4_2 = A0_2.jobLabel
  L5_2 = A0_2.actions
  L6_2 = TriggerServerPromise
  L7_2 = Utils
  L7_2 = L7_2.eventsPrefix
  L8_2 = ":updateJob"
  L7_2 = L7_2 .. L8_2
  L8_2 = L2_2
  L9_2 = L3_2
  L10_2 = L4_2
  L11_2 = L5_2
  L6_2 = L6_2(L7_2, L8_2, L9_2, L10_2, L11_2)
  L7_2 = A1_2
  L8_2 = L6_2
  L7_2(L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "delete-job"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.jobName
  if L2_2 then
    L3_2 = TriggerServerCallback
    L4_2 = Utils
    L4_2 = L4_2.eventsPrefix
    L5_2 = ":deleteJob"
    L4_2 = L4_2 .. L5_2
    function L5_2(A0_3)
      local L1_3, L2_3
      L1_3 = A1_2
      L2_3 = A0_3
      L1_3(L2_3)
    end
    L6_2 = L2_2
    L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "getJobsData"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerCallback
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":getJobsData"
  L3_2 = L3_2 .. L4_2
  function L4_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "retrieveJobMarkers"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.jobName
  if not L2_2 then
    return
  end
  L3_2 = TriggerServerPromise
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":getMarkersFromJobName"
  L4_2 = L4_2 .. L5_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "create-marker"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A0_2 then
    L2_2 = A0_2.jobName
    L3_2 = A0_2.label
    L4_2 = A0_2.markerType
    L5_2 = {}
    L6_2 = tonumber
    L7_2 = A0_2.markerCoordsX
    L6_2 = L6_2(L7_2)
    L5_2.x = L6_2
    L6_2 = tonumber
    L7_2 = A0_2.markerCoordsY
    L6_2 = L6_2(L7_2)
    L5_2.y = L6_2
    L6_2 = tonumber
    L7_2 = A0_2.markerCoordsZ
    L6_2 = L6_2(L7_2)
    L5_2.z = L6_2
    L6_2 = tonumber
    L7_2 = A0_2.markerMinGrade
    L6_2 = L6_2(L7_2)
    L7_2 = TriggerServerCallback
    L8_2 = Utils
    L8_2 = L8_2.eventsPrefix
    L9_2 = ":createMarker"
    L8_2 = L8_2 .. L9_2
    function L9_2(A0_3)
      local L1_3, L2_3
      L1_3 = A1_2
      L2_3 = A0_3
      L1_3(L2_3)
    end
    L10_2 = L2_2
    L11_2 = L3_2
    L12_2 = L4_2
    L13_2 = L5_2
    L14_2 = L6_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "create-public-marker"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  if A0_2 then
    L2_2 = "public_marker"
    L3_2 = 0
    L4_2 = A0_2.label
    L5_2 = A0_2.markerType
    L6_2 = {}
    L7_2 = tonumber
    L8_2 = A0_2.markerCoordsX
    L7_2 = L7_2(L8_2)
    L6_2.x = L7_2
    L7_2 = tonumber
    L8_2 = A0_2.markerCoordsY
    L7_2 = L7_2(L8_2)
    L6_2.y = L7_2
    L7_2 = tonumber
    L8_2 = A0_2.markerCoordsZ
    L7_2 = L7_2(L8_2)
    L6_2.z = L7_2
    L7_2 = TriggerServerCallback
    L8_2 = Utils
    L8_2 = L8_2.eventsPrefix
    L9_2 = ":createMarker"
    L8_2 = L8_2 .. L9_2
    function L9_2(A0_3)
      local L1_3, L2_3
      L1_3 = A1_2
      L2_3 = A0_3
      L1_3(L2_3)
    end
    L10_2 = L2_2
    L11_2 = L4_2
    L12_2 = L5_2
    L13_2 = L6_2
    L14_2 = L3_2
    L7_2(L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "update-marker"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A0_2 then
    L2_2 = A0_2.markerId
    L3_2 = TriggerServerCallback
    L4_2 = Utils
    L4_2 = L4_2.eventsPrefix
    L5_2 = ":updateMarker"
    L4_2 = L4_2 .. L5_2
    function L5_2(A0_3)
      local L1_3, L2_3
      L1_3 = A1_2
      L2_3 = A0_3
      L1_3(L2_3)
    end
    L6_2 = L2_2
    L7_2 = A0_2
    L3_2(L4_2, L5_2, L6_2, L7_2)
  end
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "update-marker-data"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = A0_2.markerId
  L3_2 = A0_2.markerData
  L4_2 = TriggerServerCallback
  L5_2 = Utils
  L5_2 = L5_2.eventsPrefix
  L6_2 = ":updateMarkerData"
  L5_2 = L5_2 .. L6_2
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L7_2 = L2_2
  L8_2 = L3_2
  L4_2(L5_2, L6_2, L7_2, L8_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "delete-marker"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.markerId
  L3_2 = TriggerServerCallback
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":deleteMarker"
  L4_2 = L4_2 .. L5_2
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "delete-stash-inventory"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.markerId
  L3_2 = TriggerServerCallback
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":deleteStashInventory"
  L4_2 = L4_2 .. L5_2
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "delete-armory-inventory"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = A0_2.markerId
  L3_2 = TriggerServerCallback
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":deleteArmoryInventory"
  L4_2 = L4_2 .. L5_2
  function L5_2(A0_3)
    local L1_3, L2_3
    L1_3 = A1_2
    L2_3 = A0_3
    L1_3(L2_3)
  end
  L6_2 = L2_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "get-current-outfit"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Framework
  L2_2 = L2_2.getPlayerSkin
  L2_2 = L2_2()
  L3_2 = Framework
  L3_2 = L3_2.getFramework
  L3_2 = L3_2()
  if "QB-core" == L3_2 then
    L3_2 = config
    L3_2 = L3_2.modules
    L3_2 = L3_2.outfits
    if "default" == L3_2 then
      L3_2 = Framework
      L3_2 = L3_2.convertOutfitFromQBCoreToESX
      L4_2 = L2_2
      L3_2 = L3_2(L4_2)
      L2_2 = L3_2
    end
  end
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "get-vehicle-label"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A1_2
  L3_2 = getVehicleNameFromModel
  L4_2 = A0_2.vehicleModel
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "getAllAccounts"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerPromise
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":getAllAccounts"
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "getFramework"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Framework
  L2_2 = L2_2.getFramework
  L2_2 = L2_2()
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "getOpenExternalClothingMenu"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Utils
  L2_2 = L2_2.callModuleFunc
  L3_2 = "outfits"
  L4_2 = "openExternalMenu"
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "getInventoryScriptUsed"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A1_2
  L3_2 = INVENTORY_TO_USE
  L2_2(L3_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "nexus/getJobs"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerPromise
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":nexus:getJobs"
  L3_2 = L3_2 .. L4_2
  L2_2 = L2_2(L3_2)
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "nexus/importJob"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.jobId
  L3_2 = TriggerServerPromise
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":nexus:importJob"
  L4_2 = L4_2 .. L5_2
  L5_2 = L2_2
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L5_2 = L3_2
  L4_2(L5_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "nexus/uploadJob"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = TriggerServerPromise
  L3_2 = Utils
  L3_2 = L3_2.eventsPrefix
  L4_2 = ":nexus:uploadJob"
  L3_2 = L3_2 .. L4_2
  L4_2 = A0_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = A1_2
  L4_2 = L2_2
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "nexus/rateJob"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2.jobId
  L3_2 = A0_2.rating
  L4_2 = TriggerServerPromise
  L5_2 = Utils
  L5_2 = L5_2.eventsPrefix
  L6_2 = ":nexus:rateJob"
  L5_2 = L5_2 .. L6_2
  L6_2 = L2_2
  L7_2 = L3_2
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  L5_2 = A1_2
  L6_2 = L4_2
  L5_2(L6_2)
end
L0_1(L1_1, L2_1)
L0_1 = RegisterNUICallback
L1_1 = "teleportToMarker"
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2.markerId
  L3_2 = TriggerServerEvent
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":teleportToMarker"
  L4_2 = L4_2 .. L5_2
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A1_2
  L4_2 = true
  L3_2(L4_2)
end
L0_1(L1_1, L2_1)
