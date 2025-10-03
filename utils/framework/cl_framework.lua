local L0_1, L1_1, L2_1, L3_1
L0_1 = CURRENT_FRAMEWORK
L1_1 = Framework
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  if "ESX" == L0_2 then
    while true do
      L0_2 = ESX
      L0_2 = L0_2.GetPlayerData
      L0_2 = L0_2()
      L0_2 = L0_2.job
      if nil ~= L0_2 then
        break
      end
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 500
      L0_2(L1_2)
    end
    L0_2 = ESX
    L0_2 = L0_2.GetPlayerData
    L0_2 = L0_2()
    L0_2 = L0_2.job
    L0_2 = L0_2.name
    return L0_2
  else
    L0_2 = L0_1
    if "QB-core" == L0_2 then
      while true do
        L0_2 = QBCore
        L0_2 = L0_2.Functions
        L0_2 = L0_2.GetPlayerData
        L0_2 = L0_2()
        L0_2 = L0_2.job
        if nil ~= L0_2 then
          break
        end
        L0_2 = Citizen
        L0_2 = L0_2.Wait
        L1_2 = 500
        L0_2(L1_2)
      end
      L0_2 = QBCore
      L0_2 = L0_2.Functions
      L0_2 = L0_2.GetPlayerData
      L0_2 = L0_2()
      L0_2 = L0_2.job
      L0_2 = L0_2.name
      return L0_2
    end
  end
end
L1_1.getPlayerJob = L2_1
L1_1 = Framework
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  if "ESX" == L0_2 then
    while true do
      L0_2 = ESX
      L0_2 = L0_2.GetPlayerData
      L0_2 = L0_2()
      L0_2 = L0_2.job
      if nil ~= L0_2 then
        break
      end
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 500
      L0_2(L1_2)
    end
    L0_2 = ESX
    L0_2 = L0_2.GetPlayerData
    L0_2 = L0_2()
    L0_2 = L0_2.job
    L0_2 = L0_2.grade
    return L0_2
  else
    L0_2 = L0_1
    if "QB-core" == L0_2 then
      while true do
        L0_2 = QBCore
        L0_2 = L0_2.Functions
        L0_2 = L0_2.GetPlayerData
        L0_2 = L0_2()
        L0_2 = L0_2.job
        if nil ~= L0_2 then
          break
        end
        L0_2 = Citizen
        L0_2 = L0_2.Wait
        L1_2 = 500
        L0_2(L1_2)
      end
      L0_2 = QBCore
      L0_2 = L0_2.Functions
      L0_2 = L0_2.GetPlayerData
      L0_2 = L0_2()
      L0_2 = L0_2.job
      L0_2 = L0_2.grade
      L0_2 = L0_2.level
      return L0_2
    end
  end
end
L1_1.getPlayerJobGrade = L2_1
L1_1 = Framework
function L2_1()
  local L0_2, L1_2
  L0_2 = L0_1
  if "ESX" == L0_2 then
    while true do
      L0_2 = ESX
      L0_2 = L0_2.GetPlayerData
      L0_2 = L0_2()
      L0_2 = L0_2.job
      if nil ~= L0_2 then
        break
      end
      L0_2 = Citizen
      L0_2 = L0_2.Wait
      L1_2 = 500
      L0_2(L1_2)
    end
    L0_2 = ESX
    L0_2 = L0_2.GetPlayerData
    L0_2 = L0_2()
    L0_2 = L0_2.job
    L0_2 = L0_2.label
    return L0_2
  else
    L0_2 = L0_1
    if "QB-core" == L0_2 then
      while true do
        L0_2 = QBCore
        L0_2 = L0_2.Functions
        L0_2 = L0_2.GetPlayerData
        L0_2 = L0_2()
        L0_2 = L0_2.job
        if nil ~= L0_2 then
          break
        end
        L0_2 = Citizen
        L0_2 = L0_2.Wait
        L1_2 = 500
        L0_2(L1_2)
      end
      L0_2 = QBCore
      L0_2 = L0_2.Functions
      L0_2 = L0_2.GetPlayerData
      L0_2 = L0_2()
      L0_2 = L0_2.job
      L0_2 = L0_2.label
      return L0_2
    end
  end
end
L1_1.getPlayerJobLabel = L2_1
L1_1 = Framework
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = Utils
  L1_2 = L1_2.eventsPrefix
  L2_2 = "_frameworkHelpNotification"
  L1_2 = L1_2 .. L2_2
  L2_2 = AddTextEntry
  L3_2 = L1_2
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
  L2_2 = DisplayHelpTextThisFrame
  L3_2 = L1_2
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L1_1.showHelpNotification = L2_1
L1_1 = Framework
function L2_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = L0_1
  if "ESX" == L2_2 then
    L2_2 = ESX
    L2_2 = L2_2.ShowNotification
    L3_2 = A0_2
    L2_2(L3_2)
  else
    L2_2 = L0_1
    if "QB-core" == L2_2 then
      L2_2 = QBCore
      L2_2 = L2_2.Functions
      L2_2 = L2_2.Notify
      L3_2 = A1_2
      L2_2(L3_2)
    end
  end
end
L1_1.showNotification = L2_1
L1_1 = Framework
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L0_2 = nil
  L1_2 = L0_1
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.Game
    L0_2 = L1_2.GetClosestPed
  else
    L1_2 = L0_1
    if "QB-core" == L1_2 then
      L1_2 = QBCore
      L1_2 = L1_2.Functions
      L0_2 = L1_2.GetClosestPed
    end
  end
  if not L0_2 then
    L1_2 = print
    L2_2 = "^2Cannot find 'getClosestPedFunction' function^7"
    L1_2(L2_2)
    return
  end
  L1_2 = PlayerPedId
  L1_2 = L1_2()
  L2_2 = GetEntityCoords
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L0_2
  L4_2 = L2_2
  L3_2, L4_2 = L3_2(L4_2)
  if L3_2 == L1_2 then
    L5_2 = L0_2
    L6_2 = L2_2
    L7_2 = {}
    L8_2 = L1_2
    L7_2[1] = L8_2
    L5_2, L6_2 = L5_2(L6_2, L7_2)
    L4_2 = L6_2
    L3_2 = L5_2
  end
  L5_2 = L3_2
  L6_2 = L4_2
  return L5_2, L6_2
end
L1_1.getClosestPed = L2_1
L1_1 = Framework
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = nil
  L3_2 = L0_1
  if "ESX" == L3_2 then
    L3_2 = ESX
    L3_2 = L3_2.Game
    L2_2 = L3_2.GetClosestPlayer
  else
    L3_2 = L0_1
    if "QB-core" == L3_2 then
      L3_2 = QBCore
      L3_2 = L3_2.Functions
      L2_2 = L3_2.GetClosestPlayer
    end
  end
  if not L2_2 then
    L3_2 = print
    L4_2 = "^2Cannot find 'getClosestPlayerFunction' function^7"
    L3_2(L4_2)
    return
  end
  L3_2 = PlayerPedId
  L3_2 = L3_2()
  L4_2 = GetEntityCoords
  L5_2 = L3_2
  L4_2 = L4_2(L5_2)
  L5_2 = L2_2
  L6_2 = L4_2
  L5_2, L6_2 = L5_2(L6_2)
  L7_2 = PlayerId
  L7_2 = L7_2()
  if L5_2 == L7_2 then
    L7_2 = L2_2
    L7_2, L8_2 = L7_2()
    L6_2 = L8_2
    L5_2 = L7_2
  end
  if L5_2 then
    L7_2 = PlayerId
    L7_2 = L7_2()
    if L5_2 ~= L7_2 and -1 ~= L5_2 and (not A1_2 or A1_2 >= L6_2) then
      if A0_2 then
        L7_2 = GetPlayerServerId
        L8_2 = L5_2
        return L7_2(L8_2)
      else
        return L5_2
      end
  end
  else
    L7_2 = nil
    return L7_2
  end
end
L1_1.getClosestPlayer = L2_1
L1_1 = Framework
function L2_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L4_2 = vector3
  L5_2 = A0_2.x
  L6_2 = A0_2.y
  L7_2 = A0_2.z
  L4_2 = L4_2(L5_2, L6_2, L7_2)
  A0_2 = L4_2
  L4_2 = GetGameplayCamCoords
  L4_2 = L4_2()
  L5_2 = A0_2 - L4_2
  L5_2 = #L5_2
  if not A2_2 then
    A2_2 = 1
  end
  if not A3_2 then
    A3_2 = 0
  end
  L6_2 = A2_2 / L5_2
  L6_2 = L6_2 * 2
  L7_2 = GetGameplayCamFov
  L7_2 = L7_2()
  L8_2 = 1
  L7_2 = L8_2 / L7_2
  L7_2 = L7_2 * 100
  L6_2 = L6_2 * L7_2
  L8_2 = SetTextScale
  L9_2 = 0.0 * L6_2
  L10_2 = 0.55 * L6_2
  L8_2(L9_2, L10_2)
  L8_2 = SetTextFont
  L9_2 = A3_2
  L8_2(L9_2)
  L8_2 = SetTextColour
  L9_2 = 255
  L10_2 = 255
  L11_2 = 255
  L12_2 = 255
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = SetTextDropshadow
  L9_2 = 0
  L10_2 = 0
  L11_2 = 0
  L12_2 = 0
  L13_2 = 255
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2)
  L8_2 = SetTextDropShadow
  L8_2()
  L8_2 = SetTextOutline
  L8_2()
  L8_2 = SetTextCentre
  L9_2 = true
  L8_2(L9_2)
  L8_2 = SetDrawOrigin
  L9_2 = A0_2
  L10_2 = 0
  L8_2(L9_2, L10_2)
  L8_2 = BeginTextCommandDisplayText
  L9_2 = "STRING"
  L8_2(L9_2)
  L8_2 = AddTextComponentSubstringPlayerName
  L9_2 = A1_2
  L8_2(L9_2)
  L8_2 = EndTextCommandDisplayText
  L9_2 = 0.0
  L10_2 = 0.0
  L8_2(L9_2, L10_2)
  L8_2 = ClearDrawOrigin
  L8_2()
end
L1_1.draw3dText = L2_1
L1_1 = Framework
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.Game
    L1_2 = L1_2.DeleteVehicle
    L2_2 = A0_2
    L1_2(L2_2)
  else
    L1_2 = L0_1
    if "QB-core" == L1_2 then
      L1_2 = QBCore
      L1_2 = L1_2.Functions
      L1_2 = L1_2.DeleteVehicle
      L2_2 = A0_2
      L1_2(L2_2)
    end
  end
end
L1_1.deleteVehicle = L2_1
L1_1 = RegisterNetEvent
L2_1 = Utils
L2_1 = L2_1.eventsPrefix
L3_1 = ":framework:deleteVehicle"
L2_1 = L2_1 .. L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = NetworkDoesNetworkIdExist
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  if not L1_2 then
    return
  end
  L1_2 = NetToVeh
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = Framework
  L2_2 = L2_2.deleteVehicle
  L3_2 = L1_2
  L2_2(L3_2)
end
L1_1(L2_1, L3_1)
L1_1 = Framework
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if not A1_2 then
    return
  end
  L2_2 = L0_1
  if "ESX" == L2_2 then
    L2_2 = ESX
    L2_2 = L2_2.Game
    L2_2 = L2_2.SetVehicleProperties
    L3_2 = A0_2
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = L0_1
    if "QB-core" == L2_2 then
      L2_2 = QBCore
      L2_2 = L2_2.Functions
      L2_2 = L2_2.SetVehicleProperties
      L3_2 = A0_2
      L4_2 = A1_2
      L2_2(L3_2, L4_2)
    end
  end
end
L1_1.setVehicleProperties = L2_1
L1_1 = Framework
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = L0_1
  if "ESX" == L1_2 then
    L1_2 = ESX
    L1_2 = L1_2.Game
    L1_2 = L1_2.GetVehicleProperties
    L2_2 = A0_2
    return L1_2(L2_2)
  else
    L1_2 = L0_1
    if "QB-core" == L1_2 then
      L1_2 = QBCore
      L1_2 = L1_2.Functions
      L1_2 = L1_2.GetVehicleProperties
      L2_2 = A0_2
      return L1_2(L2_2)
    end
  end
end
L1_1.getVehicleProperties = L2_1
L1_1 = Framework
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = nil
  L2_2 = nil
  L3_2 = L0_1
  if "ESX" == L3_2 then
    L3_2 = ESX
    L3_2 = L3_2.Game
    L3_2 = L3_2.GetClosestVehicle
    L3_2, L4_2 = L3_2()
    L2_2 = L4_2
    L1_2 = L3_2
  else
    L3_2 = L0_1
    if "QB-core" == L3_2 then
      L3_2 = QBCore
      L3_2 = L3_2.Functions
      L3_2 = L3_2.GetClosestVehicle
      L3_2, L4_2 = L3_2()
      L2_2 = L4_2
      L1_2 = L3_2
    end
  end
  if L1_2 and A0_2 >= L2_2 then
    L3_2 = L1_2
    L4_2 = L2_2
    return L3_2, L4_2
  else
    L3_2 = nil
    return L3_2
  end
end
L1_1.getClosestVehicle = L2_1
L1_1 = Framework
function L2_1()
  local L0_2, L1_2, L2_2, L3_2
  L0_2 = config
  L0_2 = L0_2.modules
  L0_2 = L0_2.outfits
  if "default" ~= L0_2 then
    L0_2 = Utils
    L0_2 = L0_2.callModuleFunc
    L1_2 = "outfits"
    L2_2 = "getPlayerClothes"
    return L0_2(L1_2, L2_2)
  end
  L0_2 = promise
  L0_2 = L0_2.new
  L0_2 = L0_2()
  L1_2 = Framework
  L1_2 = L1_2.getFramework
  L1_2 = L1_2()
  if "ESX" == L1_2 then
    L1_2 = TriggerEvent
    L2_2 = "skinchanger:getSkin"
    function L3_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = L0_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    L1_2(L2_2, L3_2)
  else
    L1_2 = Framework
    L1_2 = L1_2.getFramework
    L1_2 = L1_2()
    if "QB-core" == L1_2 then
      L1_2 = TriggerEvent
      L2_2 = "qb-clothes:getPlayerSkin"
      function L3_2(A0_3)
        local L1_3, L2_3, L3_3
        L1_3 = L0_2
        L2_3 = L1_3
        L1_3 = L1_3.resolve
        L3_3 = A0_3
        L1_3(L2_3, L3_3)
      end
      L1_2(L2_2, L3_2)
    end
  end
  L1_2 = Citizen
  L1_2 = L1_2.Await
  L2_2 = L0_2
  return L1_2(L2_2)
end
L1_1.getPlayerSkin = L2_1
L1_1 = Framework
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  if not A0_2 then
    A0_2 = 10.0
  end
  L2_2 = PlayerPedId
  L2_2 = L2_2()
  L3_2 = GetEntityCoords
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = {}
  L5_2 = pairs
  L6_2 = GetGamePool
  L7_2 = "CPed"
  L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2 = L6_2(L7_2)
  L5_2, L6_2, L7_2, L8_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2)
  for L9_2, L10_2 in L5_2, L6_2, L7_2, L8_2 do
    L11_2 = IsPedAPlayer
    L12_2 = L10_2
    L11_2 = L11_2(L12_2)
    if L11_2 then
      L11_2 = PlayerPedId
      L11_2 = L11_2()
      if L10_2 ~= L11_2 then
        L11_2 = GetEntityCoords
        L12_2 = L10_2
        L11_2 = L11_2(L12_2)
        L12_2 = L11_2 - L3_2
        L12_2 = #L12_2
        if A0_2 >= L12_2 then
          if A1_2 then
            L13_2 = table
            L13_2 = L13_2.insert
            L14_2 = L4_2
            L15_2 = GetPlayerServerId
            L16_2 = NetworkGetPlayerIndexFromPed
            L17_2 = L10_2
            L16_2, L17_2 = L16_2(L17_2)
            L15_2, L16_2, L17_2 = L15_2(L16_2, L17_2)
            L13_2(L14_2, L15_2, L16_2, L17_2)
          else
            L13_2 = table
            L13_2 = L13_2.insert
            L14_2 = L4_2
            L15_2 = NetworkGetPlayerIndexFromPed
            L16_2 = L10_2
            L15_2, L16_2, L17_2 = L15_2(L16_2)
            L13_2(L14_2, L15_2, L16_2, L17_2)
          end
        end
      end
    end
  end
  return L4_2
end
L1_1.getClosePlayers = L2_1
L1_1 = Framework
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = promise
  L1_2 = L1_2.new
  L1_2 = L1_2()
  L2_2 = L0_1
  if "ESX" == L2_2 then
    L2_2 = TriggerServerCallback
    L3_2 = "esx_license:getLicenses"
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3
      L1_3 = L1_2
      L2_3 = L1_3
      L1_3 = L1_3.resolve
      L3_3 = A0_3
      L1_3(L2_3, L3_3)
    end
    L5_2 = A0_2
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = L0_1
    if "QB-core" == L2_2 then
      L2_2 = TriggerServerPromise
      L3_2 = Utils
      L3_2 = L3_2.eventsPrefix
      L4_2 = ":getPlayerLicenses"
      L3_2 = L3_2 .. L4_2
      L4_2 = A0_2
      L2_2 = L2_2(L3_2, L4_2)
      L4_2 = L1_2
      L3_2 = L1_2.resolve
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    end
  end
  L2_2 = Citizen
  L2_2 = L2_2.Await
  L3_2 = L1_2
  return L2_2(L3_2)
end
L1_1.getPlayerLicenses = L2_1
L1_1 = Framework
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  if "ESX" == L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = EXTERNAL_EVENTS_NAMES
    L3_2 = L3_2["esx_license:addLicense"]
    L4_2 = A0_2
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = L0_1
    if "QB-core" == L2_2 then
      L2_2 = TriggerServerEvent
      L3_2 = Utils
      L3_2 = L3_2.eventsPrefix
      L4_2 = ":giveLicenseToPlayer"
      L3_2 = L3_2 .. L4_2
      L4_2 = A0_2
      L5_2 = A1_2
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L1_1.giveLicenseToPlayer = L2_1
L1_1 = Framework
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L0_1
  if "ESX" == L2_2 then
    L2_2 = TriggerServerEvent
    L3_2 = EXTERNAL_EVENTS_NAMES
    L3_2 = L3_2["esx_license:removeLicense"]
    L4_2 = A0_2
    L5_2 = A1_2
    L2_2(L3_2, L4_2, L5_2)
  else
    L2_2 = L0_1
    if "QB-core" == L2_2 then
      L2_2 = TriggerServerEvent
      L3_2 = Utils
      L3_2 = L3_2.eventsPrefix
      L4_2 = ":removeLicenseFromPlayer"
      L3_2 = L3_2 .. L4_2
      L4_2 = A0_2
      L5_2 = A1_2
      L2_2(L3_2, L4_2, L5_2)
    end
  end
end
L1_1.removeLicenseFromPlayer = L2_1
