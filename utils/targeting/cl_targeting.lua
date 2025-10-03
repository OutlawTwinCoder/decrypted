local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = Target
if not L0_1 then
  L0_1 = {}
end
Target = L0_1
L0_1 = {}
L1_1 = {}
L2_1 = {}
L3_1 = Target
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = config
  L4_2 = L4_2.targetingScript
  if "ox_target" ~= L4_2 then
    return
  end
  L4_2 = Utils
  L4_2 = L4_2.getScriptName
  L5_2 = "ox_target"
  L4_2 = L4_2(L5_2)
  L5_2 = Utils
  L5_2 = L5_2.eventsPrefix
  L6_2 = ":"
  L7_2 = A1_2
  L5_2 = L5_2 .. L6_2 .. L7_2
  L6_2 = exports
  L6_2 = L6_2[L4_2]
  L7_2 = L6_2
  L6_2 = L6_2.removeLocalEntity
  L8_2 = A0_2
  L9_2 = {}
  L10_2 = L5_2
  L9_2[1] = L10_2
  L6_2(L7_2, L8_2, L9_2)
  L6_2 = {}
  L6_2.name = L5_2
  L6_2.icon = "fa-solid fa-hand"
  L6_2.label = A2_2
  function L7_2(A0_3)
    local L1_3, L2_3
    L1_3 = A3_2.onSelect
    L2_3 = A0_3.entity
    return L1_3(L2_3)
  end
  L6_2.onSelect = L7_2
  L7_2 = A3_2.canInteract
  L6_2.canInteract = L7_2
  L7_2 = A3_2.distance
  L6_2.distance = L7_2
  L7_2 = A3_2.items
  L6_2.items = L7_2
  L7_2 = A3_2.event
  L6_2.event = L7_2
  L7_2 = exports
  L7_2 = L7_2[L4_2]
  L8_2 = L7_2
  L7_2 = L7_2.addLocalEntity
  L9_2 = A0_2
  L10_2 = {}
  L11_2 = L6_2
  L10_2[1] = L11_2
  L7_2(L8_2, L9_2, L10_2)
end
L3_1.addLocalEntityToOxTarget = L4_1
L3_1 = Target
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L2_2 = config
  L2_2 = L2_2.targetingScript
  if "ox_target" ~= L2_2 then
    return
  end
  L2_2 = Utils
  L2_2 = L2_2.getScriptName
  L3_2 = "ox_target"
  L2_2 = L2_2(L3_2)
  L3_2 = exports
  L3_2 = L3_2[L2_2]
  L4_2 = L3_2
  L3_2 = L3_2.removeLocalEntity
  L5_2 = A0_2
  L6_2 = {}
  L7_2 = Utils
  L7_2 = L7_2.eventsPrefix
  L8_2 = ":"
  L9_2 = A1_2
  L7_2 = L7_2 .. L8_2 .. L9_2
  L6_2[1] = L7_2
  L3_2(L4_2, L5_2, L6_2)
end
L3_1.removeLocalEntityFromOxTarget = L4_1
L3_1 = Target
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = config
  L3_2 = L3_2.targetingScript
  if "ox_target" ~= L3_2 then
    return
  end
  L3_2 = Utils
  L3_2 = L3_2.getScriptName
  L4_2 = "ox_target"
  L3_2 = L3_2(L4_2)
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":"
  L6_2 = A0_2
  L4_2 = L4_2 .. L5_2 .. L6_2
  L5_2 = exports
  L5_2 = L5_2[L3_2]
  L6_2 = L5_2
  L5_2 = L5_2.removeGlobalPlayer
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L5_2 = {}
  L5_2.name = L4_2
  L5_2.icon = "fa-solid fa-hand"
  L5_2.label = A1_2
  function L6_2(A0_3)
    local L1_3, L2_3
    L1_3 = A2_2.onSelect
    L2_3 = A0_3.entity
    return L1_3(L2_3)
  end
  L5_2.onSelect = L6_2
  L6_2 = A2_2.canInteract
  L5_2.canInteract = L6_2
  L6_2 = A2_2.distance
  L5_2.distance = L6_2
  L6_2 = A2_2.items
  L5_2.items = L6_2
  L6_2 = A2_2.event
  L5_2.event = L6_2
  L6_2 = exports
  L6_2 = L6_2[L3_2]
  L7_2 = L6_2
  L6_2 = L6_2.addGlobalPlayer
  L8_2 = {}
  L9_2 = L5_2
  L8_2[1] = L9_2
  L6_2(L7_2, L8_2)
end
L3_1.addGlobalPlayerToOxTarget = L4_1
L3_1 = Target
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = config
  L1_2 = L1_2.targetingScript
  if "ox_target" ~= L1_2 then
    return
  end
  L1_2 = Utils
  L1_2 = L1_2.getScriptName
  L2_2 = "ox_target"
  L1_2 = L1_2(L2_2)
  L2_2 = exports
  L2_2 = L2_2[L1_2]
  L3_2 = L2_2
  L2_2 = L2_2.removeGlobalPlayer
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":"
  L6_2 = A0_2
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
end
L3_1.removeGlobalPlayerFromOxTarget = L4_1
L3_1 = Target
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = config
  L3_2 = L3_2.targetingScript
  if "ox_target" ~= L3_2 then
    return
  end
  L3_2 = Utils
  L3_2 = L3_2.getScriptName
  L4_2 = "ox_target"
  L3_2 = L3_2(L4_2)
  L4_2 = exports
  L4_2 = L4_2[L3_2]
  L5_2 = L4_2
  L4_2 = L4_2.removeGlobalVehicle
  L6_2 = Utils
  L6_2 = L6_2.eventsPrefix
  L7_2 = ":"
  L8_2 = A0_2
  L6_2 = L6_2 .. L7_2 .. L8_2
  L4_2(L5_2, L6_2)
  L4_2 = exports
  L4_2 = L4_2[L3_2]
  L5_2 = L4_2
  L4_2 = L4_2.addGlobalVehicle
  L6_2 = {}
  L7_2 = {}
  L8_2 = Utils
  L8_2 = L8_2.eventsPrefix
  L9_2 = ":"
  L10_2 = A0_2
  L8_2 = L8_2 .. L9_2 .. L10_2
  L7_2.name = L8_2
  L7_2.icon = "fa-solid fa-hand"
  L7_2.label = A1_2
  function L8_2(A0_3)
    local L1_3, L2_3
    L1_3 = A2_2.onSelect
    L2_3 = A0_3.entity
    return L1_3(L2_3)
  end
  L7_2.onSelect = L8_2
  L8_2 = A2_2.canInteract
  L7_2.canInteract = L8_2
  L8_2 = A2_2.distance
  L7_2.distance = L8_2
  L8_2 = A2_2.items
  L7_2.items = L8_2
  L8_2 = A2_2.event
  L7_2.event = L8_2
  L6_2[1] = L7_2
  L4_2(L5_2, L6_2)
end
L3_1.addGlobalVehicleToOxTarget = L4_1
L3_1 = Target
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = config
  L1_2 = L1_2.targetingScript
  if "ox_target" ~= L1_2 then
    return
  end
  L1_2 = Utils
  L1_2 = L1_2.getScriptName
  L2_2 = "ox_target"
  L1_2 = L1_2(L2_2)
  L2_2 = exports
  L2_2 = L2_2[L1_2]
  L3_2 = L2_2
  L2_2 = L2_2.removeGlobalVehicle
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":"
  L6_2 = A0_2
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
end
L3_1.removeGlobalVehicleFromOxTarget = L4_1
L3_1 = Target
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L3_2 = config
  L3_2 = L3_2.targetingScript
  if "ox_target" ~= L3_2 then
    return
  end
  L3_2 = Utils
  L3_2 = L3_2.getScriptName
  L4_2 = "ox_target"
  L3_2 = L3_2(L4_2)
  L4_2 = exports
  L4_2 = L4_2[L3_2]
  L5_2 = L4_2
  L4_2 = L4_2.removeGlobalPed
  L6_2 = Utils
  L6_2 = L6_2.eventsPrefix
  L7_2 = ":"
  L8_2 = A0_2
  L6_2 = L6_2 .. L7_2 .. L8_2
  L4_2(L5_2, L6_2)
  L4_2 = exports
  L4_2 = L4_2[L3_2]
  L5_2 = L4_2
  L4_2 = L4_2.addGlobalPed
  L6_2 = {}
  L7_2 = {}
  L8_2 = Utils
  L8_2 = L8_2.eventsPrefix
  L9_2 = ":"
  L10_2 = A0_2
  L8_2 = L8_2 .. L9_2 .. L10_2
  L7_2.name = L8_2
  L7_2.icon = "fa-solid fa-hand"
  L7_2.label = A1_2
  function L8_2(A0_3)
    local L1_3, L2_3
    L1_3 = A2_2.onSelect
    L2_3 = A0_3.entity
    return L1_3(L2_3)
  end
  L7_2.onSelect = L8_2
  L8_2 = A2_2.canInteract
  L7_2.canInteract = L8_2
  L8_2 = A2_2.distance
  L7_2.distance = L8_2
  L8_2 = A2_2.items
  L7_2.items = L8_2
  L8_2 = A2_2.event
  L7_2.event = L8_2
  L6_2[1] = L7_2
  L4_2(L5_2, L6_2)
end
L3_1.addGlobalPedToOxTarget = L4_1
L3_1 = Target
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = config
  L1_2 = L1_2.targetingScript
  if "ox_target" ~= L1_2 then
    return
  end
  L1_2 = Utils
  L1_2 = L1_2.getScriptName
  L2_2 = "ox_target"
  L1_2 = L1_2(L2_2)
  L2_2 = exports
  L2_2 = L2_2[L1_2]
  L3_2 = L2_2
  L2_2 = L2_2.removeGlobalPed
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":"
  L6_2 = A0_2
  L4_2 = L4_2 .. L5_2 .. L6_2
  L2_2(L3_2, L4_2)
end
L3_1.removeGlobalPedFromOxTarget = L4_1
L3_1 = Target
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = config
  L4_2 = L4_2.targetingScript
  if "qb_target" ~= L4_2 then
    return
  end
  L4_2 = L1_1
  L4_2[A1_2] = A2_2
  L4_2 = Utils
  L4_2 = L4_2.getScriptName
  L5_2 = "qb-target"
  L4_2 = L4_2(L5_2)
  L5_2 = exports
  L5_2 = L5_2[L4_2]
  L6_2 = L5_2
  L5_2 = L5_2.AddTargetEntity
  L7_2 = A0_2
  L8_2 = {}
  L9_2 = {}
  L10_2 = {}
  L11_2 = A3_2.event
  L10_2.event = L11_2
  L10_2.icon = "fa-solid fa-hand"
  L10_2.label = A2_2
  L11_2 = A3_2.onSelect
  L10_2.action = L11_2
  L11_2 = A3_2.canInteract
  L10_2.canInteract = L11_2
  L9_2[1] = L10_2
  L8_2.options = L9_2
  L9_2 = A3_2.distance
  L8_2.distance = L9_2
  L5_2(L6_2, L7_2, L8_2)
end
L3_1.addLocalEntityToQbTarget = L4_1
L3_1 = Target
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = config
  L2_2 = L2_2.targetingScript
  if "qb_target" ~= L2_2 then
    return
  end
  L2_2 = L1_1
  L2_2 = L2_2[A1_2]
  if not L2_2 then
    return
  end
  L3_2 = Utils
  L3_2 = L3_2.getScriptName
  L4_2 = "qb-target"
  L3_2 = L3_2(L4_2)
  L4_2 = exports
  L4_2 = L4_2[L3_2]
  L5_2 = L4_2
  L4_2 = L4_2.RemoveTargetEntity
  L6_2 = A0_2
  L7_2 = L2_2
  L4_2(L5_2, L6_2, L7_2)
end
L3_1.removeLocalEntityFromQbTarget = L4_1
L3_1 = Target
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = config
  L3_2 = L3_2.targetingScript
  if "qb_target" ~= L3_2 then
    return
  end
  L3_2 = L1_1
  L3_2[A0_2] = A1_2
  L3_2 = Utils
  L3_2 = L3_2.getScriptName
  L4_2 = "qb-target"
  L3_2 = L3_2(L4_2)
  L4_2 = exports
  L4_2 = L4_2[L3_2]
  L5_2 = L4_2
  L4_2 = L4_2.AddGlobalPlayer
  L6_2 = {}
  L7_2 = {}
  L8_2 = {}
  L9_2 = A2_2.event
  L8_2.event = L9_2
  L8_2.icon = "fa-solid fa-hand"
  L8_2.label = A1_2
  L9_2 = A2_2.onSelect
  L8_2.action = L9_2
  L9_2 = A2_2.canInteract
  L8_2.canInteract = L9_2
  L7_2[1] = L8_2
  L6_2.options = L7_2
  L7_2 = A2_2.distance
  L6_2.distance = L7_2
  L4_2(L5_2, L6_2)
end
L3_1.addGlobalPlayerToQbTarget = L4_1
L3_1 = Target
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = config
  L1_2 = L1_2.targetingScript
  if "qb_target" ~= L1_2 then
    return
  end
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = Utils
  L2_2 = L2_2.getScriptName
  L3_2 = "qb-target"
  L2_2 = L2_2(L3_2)
  L3_2 = exports
  L3_2 = L3_2[L2_2]
  L4_2 = L3_2
  L3_2 = L3_2.RemoveGlobalPlayer
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L3_1.removeGlobalPlayerFromQbTarget = L4_1
L3_1 = Target
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = config
  L3_2 = L3_2.targetingScript
  if "qb_target" ~= L3_2 then
    return
  end
  L3_2 = L1_1
  L3_2[A0_2] = A1_2
  L3_2 = Utils
  L3_2 = L3_2.getScriptName
  L4_2 = "qb-target"
  L3_2 = L3_2(L4_2)
  L4_2 = exports
  L4_2 = L4_2[L3_2]
  L5_2 = L4_2
  L4_2 = L4_2.AddGlobalVehicle
  L6_2 = {}
  L7_2 = {}
  L8_2 = {}
  L9_2 = A2_2.event
  L8_2.event = L9_2
  L8_2.icon = "fa-solid fa-hand"
  L8_2.label = A1_2
  L9_2 = A2_2.onSelect
  L8_2.action = L9_2
  L9_2 = A2_2.canInteract
  L8_2.canInteract = L9_2
  L7_2[1] = L8_2
  L6_2.options = L7_2
  L7_2 = A2_2.distance
  L6_2.distance = L7_2
  L4_2(L5_2, L6_2)
end
L3_1.addGlobalVehicleToQbTarget = L4_1
L3_1 = Target
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = config
  L1_2 = L1_2.targetingScript
  if "qb_target" ~= L1_2 then
    return
  end
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = Utils
  L2_2 = L2_2.getScriptName
  L3_2 = "qb-target"
  L2_2 = L2_2(L3_2)
  L3_2 = exports
  L3_2 = L3_2[L2_2]
  L4_2 = L3_2
  L3_2 = L3_2.RemoveGlobalVehicle
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L3_1.removeGlobalVehicleFromQbTarget = L4_1
L3_1 = Target
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = config
  L3_2 = L3_2.targetingScript
  if "qb_target" ~= L3_2 then
    return
  end
  L3_2 = L1_1
  L3_2[A0_2] = A1_2
  L3_2 = Utils
  L3_2 = L3_2.getScriptName
  L4_2 = "qb-target"
  L3_2 = L3_2(L4_2)
  L4_2 = exports
  L4_2 = L4_2[L3_2]
  L5_2 = L4_2
  L4_2 = L4_2.AddGlobalPed
  L6_2 = {}
  L7_2 = {}
  L8_2 = {}
  L9_2 = A2_2.event
  L8_2.event = L9_2
  L8_2.icon = "fa-solid fa-hand"
  L8_2.label = A1_2
  L9_2 = A2_2.onSelect
  L8_2.action = L9_2
  L9_2 = A2_2.canInteract
  L8_2.canInteract = L9_2
  L7_2[1] = L8_2
  L6_2.options = L7_2
  L7_2 = A2_2.distance
  L6_2.distance = L7_2
  L4_2(L5_2, L6_2)
end
L3_1.addGlobalPedToQbTarget = L4_1
L3_1 = Target
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = config
  L1_2 = L1_2.targetingScript
  if "qb_target" ~= L1_2 then
    return
  end
  L1_2 = L1_1
  L1_2 = L1_2[A0_2]
  if not L1_2 then
    return
  end
  L2_2 = Utils
  L2_2 = L2_2.getScriptName
  L3_2 = "qb-target"
  L2_2 = L2_2(L3_2)
  L3_2 = exports
  L3_2 = L3_2[L2_2]
  L4_2 = L3_2
  L3_2 = L3_2.RemoveGlobalPed
  L5_2 = L1_2
  L3_2(L4_2, L5_2)
end
L3_1.removeGlobalPedFromQbTarget = L4_1
L3_1 = Target
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L6_2 = config
  L6_2 = L6_2.targetingScript
  if "ox_target" ~= L6_2 then
    return
  end
  L6_2 = A0_2
  L7_2 = "-"
  L8_2 = A1_2
  L6_2 = L6_2 .. L7_2 .. L8_2
  L7_2 = Utils
  L7_2 = L7_2.getScriptName
  L8_2 = "ox_target"
  L7_2 = L7_2(L8_2)
  L8_2 = Utils
  L8_2 = L8_2.eventsPrefix
  L9_2 = ":"
  L10_2 = A1_2
  L8_2 = L8_2 .. L9_2 .. L10_2
  L9_2 = L2_1
  L9_2 = L9_2[L6_2]
  if L9_2 then
    L9_2 = L2_1
    L9_2 = L9_2[L6_2]
    L9_2 = L9_2.zoneId
    L10_2 = exports
    L10_2 = L10_2[L7_2]
    L11_2 = L10_2
    L10_2 = L10_2.removeZone
    L12_2 = L9_2
    L10_2(L11_2, L12_2)
    L10_2 = L2_1
    L10_2[L6_2] = nil
  end
  L9_2 = {}
  L9_2.name = L8_2
  L9_2.icon = "fa-solid fa-hand"
  L9_2.label = A2_2
  function L10_2(A0_3)
    local L1_3, L2_3
    L1_3 = A5_2.onSelect
    L2_3 = A0_2
    return L1_3(L2_3)
  end
  L9_2.onSelect = L10_2
  L10_2 = A5_2.canInteract
  L9_2.canInteract = L10_2
  L10_2 = A4_2 * 2
  L9_2.distance = L10_2
  L10_2 = A5_2.items
  L9_2.items = L10_2
  L10_2 = A5_2.event
  L9_2.event = L10_2
  L10_2 = exports
  L10_2 = L10_2[L7_2]
  L11_2 = L10_2
  L10_2 = L10_2.addSphereZone
  L12_2 = {}
  L12_2.coords = A3_2
  L12_2.radius = A4_2
  L12_2.drawSprite = true
  L13_2 = {}
  L14_2 = L9_2
  L13_2[1] = L14_2
  L12_2.options = L13_2
  L10_2 = L10_2(L11_2, L12_2)
  L11_2 = L2_1
  L12_2 = {}
  L12_2.zoneId = L10_2
  L12_2.type = A1_2
  L11_2[L6_2] = L12_2
end
L3_1.addSphereZoneToOxTarget = L4_1
L3_1 = Target
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = config
  L1_2 = L1_2.targetingScript
  if "ox_target" ~= L1_2 then
    return
  end
  L1_2 = Utils
  L1_2 = L1_2.getScriptName
  L2_2 = "ox_target"
  L1_2 = L1_2(L2_2)
  L2_2 = exports
  L2_2 = L2_2[L1_2]
  L3_2 = L2_2
  L2_2 = L2_2.removeZone
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L3_1.removeSphereZoneFromOxTarget = L4_1
L3_1 = Target
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2, L15_2, L16_2, L17_2
  L6_2 = config
  L6_2 = L6_2.targetingScript
  if "qb_target" ~= L6_2 then
    return
  end
  L6_2 = A0_2
  L7_2 = "-"
  L8_2 = A1_2
  L6_2 = L6_2 .. L7_2 .. L8_2
  L7_2 = Utils
  L7_2 = L7_2.getScriptName
  L8_2 = "qb-target"
  L7_2 = L7_2(L8_2)
  L8_2 = L2_1
  L8_2 = L8_2[L6_2]
  if L8_2 then
    L8_2 = L2_1
    L8_2 = L8_2[L6_2]
    L8_2 = L8_2.zoneId
    L9_2 = exports
    L9_2 = L9_2[L7_2]
    L10_2 = L9_2
    L9_2 = L9_2.RemoveZone
    L11_2 = L8_2
    L9_2(L10_2, L11_2)
    L9_2 = L2_1
    L9_2[L6_2] = nil
  end
  L8_2 = {}
  L9_2 = A5_2.event
  L8_2.event = L9_2
  L8_2.icon = "fa-solid fa-hand"
  L8_2.label = A2_2
  function L9_2(A0_3)
    local L1_3, L2_3
    L1_3 = A5_2.onSelect
    L2_3 = A0_2
    return L1_3(L2_3)
  end
  L8_2.action = L9_2
  L9_2 = A5_2.canInteract
  L8_2.canInteract = L9_2
  L9_2 = exports
  L9_2 = L9_2[L7_2]
  L10_2 = L9_2
  L9_2 = L9_2.AddCircleZone
  L11_2 = L6_2
  L12_2 = vector3
  L13_2 = A3_2.x
  L14_2 = A3_2.y
  L15_2 = A3_2.z
  L12_2 = L12_2(L13_2, L14_2, L15_2)
  L13_2 = A4_2
  L14_2 = {}
  L14_2.name = L6_2
  L14_2.debugPoly = false
  L15_2 = {}
  L16_2 = {}
  L17_2 = L8_2
  L16_2[1] = L17_2
  L15_2.options = L16_2
  L16_2 = A4_2 * 2
  L15_2.distance = L16_2
  L9_2 = L9_2(L10_2, L11_2, L12_2, L13_2, L14_2, L15_2)
  L10_2 = L2_1
  L11_2 = {}
  L12_2 = L9_2.name
  L11_2.zoneId = L12_2
  L11_2.type = A1_2
  L10_2[L6_2] = L11_2
end
L3_1.addSphereZoneToQbTarget = L4_1
L3_1 = Target
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = config
  L1_2 = L1_2.targetingScript
  if "qb_target" ~= L1_2 then
    return
  end
  L1_2 = Utils
  L1_2 = L1_2.getScriptName
  L2_2 = "qb-target"
  L1_2 = L1_2(L2_2)
  L2_2 = exports
  L2_2 = L2_2[L1_2]
  L3_2 = L2_2
  L2_2 = L2_2.RemoveZone
  L4_2 = A0_2
  L2_2(L3_2, L4_2)
end
L3_1.removeSphereZoneFromQbTarget = L4_1
L3_1 = Target
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Target
  L3_2 = L3_2.addGlobalVehicleToOxTarget
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Target
  L3_2 = L3_2.addGlobalVehicleToQbTarget
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L3_1.addGlobalVehicleToTargeting = L4_1
L3_1 = Target
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = Target
  L1_2 = L1_2.removeGlobalVehicleFromOxTarget
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Target
  L1_2 = L1_2.removeGlobalVehicleFromQbTarget
  L2_2 = A0_2
  L1_2(L2_2)
end
L3_1.removeGlobalVehicleFromTargeting = L4_1
L3_1 = Target
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Target
  L3_2 = L3_2.addGlobalPlayerToOxTarget
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Target
  L3_2 = L3_2.addGlobalPlayerToQbTarget
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L3_1.addGlobalPlayerToTargeting = L4_1
L3_1 = Target
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = Target
  L1_2 = L1_2.removeGlobalPlayerFromOxTarget
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Target
  L1_2 = L1_2.removeGlobalPlayerFromQbTarget
  L2_2 = A0_2
  L1_2(L2_2)
end
L3_1.removeGlobalPlayerFromTargeting = L4_1
L3_1 = Target
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2, L14_2
  L4_2 = GetEntityModel
  L5_2 = A0_2
  L4_2 = L4_2(L5_2)
  L5_2 = GetModelDimensions
  L6_2 = L4_2
  L5_2, L6_2 = L5_2(L6_2)
  L7_2 = L6_2 - L5_2
  L8_2 = IsEntityVisible
  L9_2 = A0_2
  L8_2 = L8_2(L9_2)
  if L8_2 then
    L8_2 = L7_2.x
    L9_2 = 0.5
    if not (L8_2 < L9_2) then
      goto lbl_40
    end
    L8_2 = L7_2.y
    L9_2 = 0.5
    if not (L8_2 < L9_2) then
      goto lbl_40
    end
    L8_2 = L7_2.z
    L9_2 = 0.5
    if not (L8_2 < L9_2) then
      goto lbl_40
    end
  end
  L8_2 = L0_1
  L8_2[A0_2] = A1_2
  L8_2 = Target
  L8_2 = L8_2.addSphereZoneToTargeting
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = GetEntityCoords
  L13_2 = A0_2
  L12_2 = L12_2(L13_2)
  L13_2 = 1.5
  L14_2 = A3_2
  L8_2(L9_2, L10_2, L11_2, L12_2, L13_2, L14_2)
  do return end
  ::lbl_40::
  L8_2 = Target
  L8_2 = L8_2.addLocalEntityToOxTarget
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = A3_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
  L8_2 = Target
  L8_2 = L8_2.addLocalEntityToQbTarget
  L9_2 = A0_2
  L10_2 = A1_2
  L11_2 = A2_2
  L12_2 = A3_2
  L8_2(L9_2, L10_2, L11_2, L12_2)
end
L3_1.addLocalEntityToTargeting = L4_1
L3_1 = Target
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = Target
  L2_2 = L2_2.removeLocalEntityFromOxTarget
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = Target
  L2_2 = L2_2.removeLocalEntityFromQbTarget
  L3_2 = A0_2
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L3_1.removeLocalEntityFromTargeting = L4_1
L3_1 = Target
function L4_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L3_2 = Target
  L3_2 = L3_2.addGlobalPedToOxTarget
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = Target
  L3_2 = L3_2.addGlobalPedToQbTarget
  L4_2 = A0_2
  L5_2 = A1_2
  L6_2 = A2_2
  L3_2(L4_2, L5_2, L6_2)
end
L3_1.addGlobalPedToTargeting = L4_1
L3_1 = Target
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = Target
  L1_2 = L1_2.removeGlobalPedFromOxTarget
  L2_2 = A0_2
  L1_2(L2_2)
  L1_2 = Target
  L1_2 = L1_2.removeGlobalPedFromQbTarget
  L2_2 = A0_2
  L1_2(L2_2)
end
L3_1.removeGlobalPedFromTargeting = L4_1
L3_1 = Target
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2, A5_2)
  local L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L6_2 = Target
  L6_2 = L6_2.addSphereZoneToOxTarget
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = Target
  L6_2 = L6_2.addSphereZoneToQbTarget
  L7_2 = A0_2
  L8_2 = A1_2
  L9_2 = A2_2
  L10_2 = A3_2
  L11_2 = A4_2
  L12_2 = A5_2
  L6_2(L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
end
L3_1.addSphereZoneToTargeting = L4_1
L3_1 = Target
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = L2_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.type
    if A0_2 == L7_2 then
      L7_2 = Target
      L7_2 = L7_2.removeSphereZoneFromOxTarget
      L8_2 = L6_2.zoneId
      L7_2(L8_2)
      L7_2 = Target
      L7_2 = L7_2.removeSphereZoneFromQbTarget
      L8_2 = L5_2
      L7_2(L8_2)
      L7_2 = L2_1
      L7_2[L5_2] = nil
    end
  end
end
L3_1.removeSphereZoneFromTargeting = L4_1
L3_1 = Citizen
L3_1 = L3_1.CreateThread
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  while true do
    L0_2 = config
    if L0_2 then
      break
    end
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 1000
    L0_2(L1_2)
  end
  L0_2 = config
  L0_2 = L0_2.targetingScript
  if "none" == L0_2 then
    return
  end
  while true do
    L0_2 = Citizen
    L0_2 = L0_2.Wait
    L1_2 = 2000
    L0_2(L1_2)
    L0_2 = pairs
    L1_2 = L0_1
    L0_2, L1_2, L2_2, L3_2 = L0_2(L1_2)
    for L4_2, L5_2 in L0_2, L1_2, L2_2, L3_2 do
      L6_2 = DoesEntityExist
      L7_2 = L4_2
      L6_2 = L6_2(L7_2)
      if not L6_2 then
        L6_2 = L0_1
        L6_2[L4_2] = nil
        L6_2 = L4_2
        L7_2 = "-"
        L8_2 = L5_2
        L6_2 = L6_2 .. L7_2 .. L8_2
        L7_2 = L2_1
        L7_2 = L7_2[L6_2]
        if L7_2 then
          L8_2 = Target
          L8_2 = L8_2.removeSphereZoneFromOxTarget
          L9_2 = L7_2.zoneId
          L8_2(L9_2)
          L8_2 = Target
          L8_2 = L8_2.removeSphereZoneFromQbTarget
          L9_2 = L6_2
          L8_2(L9_2)
          L8_2 = L2_1
          L8_2[L6_2] = nil
        end
      end
    end
  end
end
L3_1(L4_1)
