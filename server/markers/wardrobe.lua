local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1
L0_1 = {}
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = Framework
  L1_2 = L1_2.getPlayerCharIdentifier
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = Framework
  L2_2 = L2_2.getFramework
  L2_2 = L2_2()
  if "ESX" == L2_2 then
    L2_2 = promise
    L2_2 = L2_2.new
    L2_2 = L2_2()
    L3_2 = false
    L4_2 = TriggerEvent
    L5_2 = EXTERNAL_EVENTS_NAMES
    L5_2 = L5_2["esx_datastore:getDataStore"]
    L6_2 = "property"
    L7_2 = L1_2
    function L8_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      L1_3 = true
      L3_2 = L1_3
      if not A0_3 then
        L1_3 = cb
        L2_3 = {}
        return L1_3(L2_3)
      end
      L1_3 = A0_3.get
      L2_3 = "dressing"
      L1_3 = L1_3(L2_3)
      L2_3 = L2_2
      L3_3 = L2_3
      L2_3 = L2_3.resolve
      L4_3 = L1_3 or L4_3
      if not L1_3 then
        L4_3 = {}
      end
      L2_3(L3_3, L4_3)
    end
    L4_2(L5_2, L6_2, L7_2, L8_2)
    L4_2 = Timeout
    L5_2 = 500
    function L6_2()
      local L0_3, L1_3, L2_3
      L0_3 = L3_2
      if L0_3 then
        return
      end
      L0_3 = L2_2
      L1_3 = L0_3
      L0_3 = L0_3.resolve
      L2_3 = {}
      L0_3(L1_3, L2_3)
    end
    L4_2(L5_2, L6_2)
    L4_2 = Citizen
    L4_2 = L4_2.Await
    L5_2 = L2_2
    return L4_2(L5_2)
  else
    L2_2 = Framework
    L2_2 = L2_2.getFramework
    L2_2 = L2_2()
    if "QB-core" == L2_2 then
      L2_2 = MySQL
      L2_2 = L2_2.Sync
      L2_2 = L2_2.fetchAll
      L3_2 = "SELECT * FROM player_outfits WHERE citizenid = @citizenId"
      L4_2 = {}
      L4_2["@citizenId"] = L1_2
      L2_2 = L2_2(L3_2, L4_2)
      L3_2 = L2_2 or L3_2
      if not L2_2 then
        L3_2 = {}
      end
      return L3_2
    end
  end
end
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.fetchAll
  L1_2 = "SELECT * FROM jobs_wardrobes"
  L0_2 = L0_2(L1_2)
  if not L0_2 then
    return
  end
  L1_2 = pairs
  L2_2 = L0_2
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L8_2 = L6_2.identifier
    L7_2 = L0_1
    L7_2 = L7_2[L8_2]
    if not L7_2 then
      L8_2 = L6_2.identifier
      L7_2 = L0_1
      L9_2 = {}
      L7_2[L8_2] = L9_2
    end
    L8_2 = L6_2.identifier
    L7_2 = L0_1
    L7_2 = L7_2[L8_2]
    L8_2 = L6_2.id
    L9_2 = {}
    L10_2 = json
    L10_2 = L10_2.decode
    L11_2 = L6_2.outfit
    L10_2 = L10_2(L11_2)
    L9_2.outfit = L10_2
    L10_2 = L6_2.label
    L9_2.label = L10_2
    L7_2[L8_2] = L9_2
  end
end
getAllWardrobesData = L2_1
L2_1 = RegisterNetEvent
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":saveNewOutfitInWardrobe"
L3_1 = L3_1 .. L4_1
L2_1(L3_1)
L2_1 = AddEventHandler
L3_1 = Utils
L3_1 = L3_1.eventsPrefix
L4_1 = ":saveNewOutfitInWardrobe"
L3_1 = L3_1 .. L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L2_2 = source
  L3_2 = Framework
  L3_2 = L3_2.getPlayerCharIdentifier
  L4_2 = L2_2
  L3_2 = L3_2(L4_2)
  L4_2 = MySQL
  L4_2 = L4_2.Sync
  L4_2 = L4_2.insert
  L5_2 = "INSERT INTO jobs_wardrobes(identifier, label, outfit) VALUES(@identifier, @label, @outfit)"
  L6_2 = {}
  L6_2["@identifier"] = L3_2
  L6_2["@label"] = A1_2
  L7_2 = json
  L7_2 = L7_2.encode
  L8_2 = A0_2
  L7_2 = L7_2(L8_2)
  L6_2["@outfit"] = L7_2
  L4_2 = L4_2(L5_2, L6_2)
  if not L4_2 or L4_2 <= 0 then
    return
  end
  L5_2 = L0_1
  L5_2 = L5_2[L3_2]
  if not L5_2 then
    L5_2 = L0_1
    L6_2 = {}
    L5_2[L3_2] = L6_2
  end
  L5_2 = L0_1
  L5_2 = L5_2[L3_2]
  L6_2 = {}
  L6_2.outfit = A0_2
  L6_2.label = A1_2
  L5_2[L4_2] = L6_2
end
L2_1(L3_1, L4_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = Framework
  L1_2 = L1_2.getPlayerCharIdentifier
  L2_2 = A0_2
  L1_2 = L1_2(L2_2)
  L2_2 = L0_1
  L2_2 = L2_2[L1_2]
  if not L2_2 then
    L2_2 = {}
  end
  L3_2 = config
  L3_2 = L3_2.enablePropertyOutfits
  if L3_2 then
    L3_2 = L1_1
    L4_2 = A0_2
    L3_2 = L3_2(L4_2)
    L4_2 = L2_2
    L5_2 = L3_2
    return L4_2, L5_2
  else
    L3_2 = L2_2
    L4_2 = {}
    return L3_2, L4_2
  end
end
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = {}
  L3_2 = {}
  L4_2 = CLOTHING_TO_USE
  if "framework" == L4_2 then
    L4_2 = L2_1
    L5_2 = A0_2
    L4_2, L5_2 = L4_2(L5_2)
    L3_2 = L5_2
    L2_2 = L4_2
  else
    L4_2 = print
    L5_2 = "^1The clothing script "
    L6_2 = tostring
    L7_2 = CLOTHING_TO_USE
    L6_2 = L6_2(L7_2)
    L7_2 = " defined in jobs_creator/integrations/sh_integrations.lua is not valid!^7"
    L5_2 = L5_2 .. L6_2 .. L7_2
    L4_2(L5_2)
  end
  L4_2 = A1_2
  L5_2 = {}
  L5_2.outfits = L2_2
  L5_2.propertyOutfits = L3_2
  L4_2(L5_2)
end
L4_1 = RegisterServerCallback
L5_1 = Utils
L5_1 = L5_1.eventsPrefix
L6_1 = ":getPlayerWardrobe"
L5_1 = L5_1 .. L6_1
L6_1 = L3_1
L4_1(L5_1, L6_1)
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerCharIdentifier
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = L0_1
  L3_2 = L3_2[L2_2]
  L3_2[A0_2] = nil
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.execute
  L4_2 = "DELETE FROM jobs_wardrobes WHERE id=@id"
  L5_2 = {}
  L5_2["@id"] = A0_2
  L3_2(L4_2, L5_2)
end
L5_1 = RegisterNetEvent
L6_1 = Utils
L6_1 = L6_1.eventsPrefix
L7_1 = ":wardrobe:deleteOutfit"
L6_1 = L6_1 .. L7_1
L7_1 = L4_1
L5_1(L6_1, L7_1)
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = source
  L2_2 = Framework
  L2_2 = L2_2.getPlayerCharIdentifier
  L3_2 = L1_2
  L2_2 = L2_2(L3_2)
  L3_2 = Framework
  L3_2 = L3_2.getFramework
  L3_2 = L3_2()
  if "ESX" == L3_2 then
    L3_2 = TriggerEvent
    L4_2 = EXTERNAL_EVENTS_NAMES
    L4_2 = L4_2["esx_datastore:getDataStore"]
    L5_2 = "property"
    L6_2 = L2_2
    function L7_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      if not A0_3 then
        return
      end
      L1_3 = A0_3.get
      L2_3 = "dressing"
      L1_3 = L1_3(L2_3)
      L2_3 = table
      L2_3 = L2_3.remove
      L3_3 = L1_3
      L4_3 = A0_2
      L2_3(L3_3, L4_3)
      L2_3 = A0_3.set
      L3_3 = "dressing"
      L4_3 = L1_3
      L2_3(L3_3, L4_3)
    end
    L3_2(L4_2, L5_2, L6_2, L7_2)
  else
    L3_2 = Framework
    L3_2 = L3_2.getFramework
    L3_2 = L3_2()
    if "QB-core" == L3_2 then
      L3_2 = MySQL
      L3_2 = L3_2.Async
      L3_2 = L3_2.execute
      L4_2 = "DELETE FROM player_outfits WHERE citizenid = @citizenId AND id = @outfitId"
      L5_2 = {}
      L5_2["@citizenId"] = L2_2
      L5_2["@outfitId"] = A0_2
      L3_2(L4_2, L5_2)
    end
  end
end
L6_1 = RegisterNetEvent
L7_1 = Utils
L7_1 = L7_1.eventsPrefix
L8_1 = ":wardrobe:deletePropertyOutfit"
L7_1 = L7_1 .. L8_1
L8_1 = L5_1
L6_1(L7_1, L8_1)
