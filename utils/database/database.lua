local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1, L11_1, L12_1, L13_1, L14_1, L15_1, L16_1, L17_1, L18_1, L19_1, L20_1, L21_1, L22_1, L23_1, L24_1, L25_1, L26_1, L27_1, L28_1, L29_1, L30_1, L31_1, L32_1, L33_1, L34_1, L35_1, L36_1
L0_1 = {}
Database = L0_1
L0_1 = {}
L1_1 = {}
L1_1.path = "sql/jobs_data.sql"
L2_1 = {}
L2_1.path = "sql/jobs_armories.sql"
L3_1 = {}
L3_1.path = "sql/jobs_garages.sql"
L4_1 = {}
L4_1.path = "sql/jobs_wardrobes.sql"
L5_1 = {}
L5_1.path = "sql/jobs_shops.sql"
L6_1 = {}
L6_1.path = "sql/jobs_columns.sql"
L6_1.framework = "ESX"
L7_1 = {}
L7_1.path = "sql/jobs.sql"
L8_1 = {}
L8_1.path = "sql/jobs_data_columns.sql"
L9_1 = {}
L9_1.path = "sql/job_grades_esx.sql"
L9_1.framework = "ESX"
L10_1 = {}
L10_1.path = "sql/job_grades_qbcore.sql"
L10_1.framework = "QB-core"
L11_1 = {}
L11_1.path = "job_grades_auto_increment.sql"
L12_1 = {}
L12_1.path = "jobs_data_specific_grades_fix.sql"
L13_1 = {}
L13_1.path = "sql/jobs_employee_hours.sql"
L0_1[1] = L1_1
L0_1[2] = L2_1
L0_1[3] = L3_1
L0_1[4] = L4_1
L0_1[5] = L5_1
L0_1[6] = L6_1
L0_1[7] = L7_1
L0_1[8] = L8_1
L0_1[9] = L9_1
L0_1[10] = L10_1
L0_1[11] = L11_1
L0_1[12] = L12_1
L0_1[13] = L13_1
L1_1 = {}
L2_1 = {}
L2_1.table = "jobs"
L2_1.column = "enable_billing"
L2_1.sql = "ALTER TABLE jobs ADD COLUMN enable_billing INT(1) DEFAULT 0"
L3_1 = {}
L3_1.table = "jobs"
L3_1.column = "can_rob"
L3_1.sql = "ALTER TABLE jobs ADD COLUMN can_rob INT(1) DEFAULT 0"
L4_1 = {}
L4_1.table = "jobs"
L4_1.column = "can_handcuff"
L4_1.sql = "ALTER TABLE jobs ADD COLUMN can_handcuff INT(1) DEFAULT 0"
L5_1 = {}
L5_1.table = "jobs"
L5_1.column = "whitelisted"
L5_1.sql = "ALTER TABLE jobs ADD COLUMN whitelisted INT(1) DEFAULT 0"
L6_1 = {}
L6_1.table = "jobs"
L6_1.column = "can_lockpick_cars"
L6_1.sql = "ALTER TABLE jobs ADD COLUMN can_lockpick_cars INT(1) DEFAULT 0"
L7_1 = {}
L7_1.table = "jobs"
L7_1.column = "can_wash_vehicles"
L7_1.sql = "ALTER TABLE jobs ADD COLUMN can_wash_vehicles INT(1) DEFAULT 0"
L8_1 = {}
L8_1.table = "jobs"
L8_1.column = "can_repair_vehicles"
L8_1.sql = "ALTER TABLE jobs ADD COLUMN can_repair_vehicles INT(1) DEFAULT 0"
L9_1 = {}
L9_1.table = "jobs"
L9_1.column = "can_impound_vehicles"
L9_1.sql = "ALTER TABLE jobs ADD COLUMN can_impound_vehicles INT(1) DEFAULT 0"
L10_1 = {}
L10_1.table = "jobs"
L10_1.column = "can_check_identity"
L10_1.sql = "ALTER TABLE jobs ADD COLUMN can_check_identity INT(1) DEFAULT 0"
L11_1 = {}
L11_1.table = "jobs"
L11_1.column = "can_check_vehicle_owner"
L11_1.sql = "ALTER TABLE jobs ADD COLUMN can_check_vehicle_owner INT(1) DEFAULT 0"
L12_1 = {}
L12_1.table = "jobs"
L12_1.column = "can_check_driving_license"
L12_1.sql = "ALTER TABLE jobs ADD COLUMN can_check_driving_license INT(1) DEFAULT 0"
L13_1 = {}
L13_1.table = "jobs"
L13_1.column = "can_check_weapon_license"
L13_1.sql = "ALTER TABLE jobs ADD COLUMN can_check_weapon_license INT(1) DEFAULT 0"
L14_1 = {}
L14_1.table = "jobs"
L14_1.column = "can_heal"
L14_1.sql = "ALTER TABLE jobs ADD COLUMN can_heal INT(1) DEFAULT 0"
L15_1 = {}
L15_1.table = "jobs"
L15_1.column = "can_revive"
L15_1.sql = "ALTER TABLE jobs ADD COLUMN can_revive INT(1) DEFAULT 0"
L16_1 = {}
L16_1.table = "jobs"
L16_1.column = "actions_menu_enabled"
L16_1.sql = "ALTER TABLE jobs ADD COLUMN actions_menu_enabled INT(1) DEFAULT 1"
L17_1 = {}
L17_1.table = "jobs"
L17_1.column = "placeable_objects"
L17_1.sql = "ALTER TABLE jobs ADD COLUMN placeable_objects LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_bin'"
L18_1 = {}
L18_1.table = "jobs"
L18_1.column = "options"
L18_1.sql = "ALTER TABLE jobs ADD COLUMN options LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_bin'"
L19_1 = {}
L19_1.table = "jobs_data"
L19_1.column = "blip_id"
L19_1.sql = "ALTER TABLE jobs_data ADD COLUMN `blip_id` INT(11) NULL DEFAULT NULL;"
L20_1 = {}
L20_1.table = "jobs_data"
L20_1.column = "blip_color"
L20_1.sql = "ALTER TABLE jobs_data ADD COLUMN `blip_color` INT(11) NULL DEFAULT '0';"
L21_1 = {}
L21_1.table = "jobs_data"
L21_1.column = "blip_scale"
L21_1.sql = "ALTER TABLE jobs_data ADD COLUMN `blip_scale` FLOAT(12) NULL DEFAULT '1';"
L22_1 = {}
L22_1.table = "jobs_data"
L22_1.column = "label"
L22_1.sql = "ALTER TABLE jobs_data ADD COLUMN `label` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci';"
L23_1 = {}
L23_1.table = "jobs_data"
L23_1.column = "marker_type"
L23_1.sql = "ALTER TABLE jobs_data ADD COLUMN `marker_type` INT(11) NULL DEFAULT '1';"
L24_1 = {}
L24_1.table = "jobs_data"
L24_1.column = "marker_scale_x"
L24_1.sql = "ALTER TABLE jobs_data ADD COLUMN `marker_scale_x` FLOAT(12) NULL DEFAULT '1.5';"
L25_1 = {}
L25_1.table = "jobs_data"
L25_1.column = "marker_scale_y"
L25_1.sql = "ALTER TABLE jobs_data ADD COLUMN `marker_scale_y` FLOAT(12) NULL DEFAULT '1.5';"
L26_1 = {}
L26_1.table = "jobs_data"
L26_1.column = "marker_scale_z"
L26_1.sql = "ALTER TABLE jobs_data ADD COLUMN `marker_scale_z` FLOAT(12) NULL DEFAULT '0.5';"
L27_1 = {}
L27_1.table = "jobs_data"
L27_1.column = "marker_color_red"
L27_1.sql = "ALTER TABLE jobs_data ADD COLUMN `marker_color_red` INT(3) NULL DEFAULT '150';"
L28_1 = {}
L28_1.table = "jobs_data"
L28_1.column = "marker_color_green"
L28_1.sql = "ALTER TABLE jobs_data ADD COLUMN `marker_color_green` INT(3) NULL DEFAULT '150';"
L29_1 = {}
L29_1.table = "jobs_data"
L29_1.column = "marker_color_blue"
L29_1.sql = "ALTER TABLE jobs_data ADD COLUMN `marker_color_blue` INT(3) NULL DEFAULT '0';"
L30_1 = {}
L30_1.table = "jobs_data"
L30_1.column = "marker_color_alpha"
L30_1.sql = "ALTER TABLE jobs_data ADD COLUMN `marker_color_alpha` INT(3) NULL DEFAULT '50';"
L31_1 = {}
L31_1.table = "jobs_data"
L31_1.column = "ped"
L31_1.sql = "ALTER TABLE jobs_data ADD COLUMN `ped` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci';"
L32_1 = {}
L32_1.table = "jobs_data"
L32_1.column = "ped_heading"
L32_1.sql = "ALTER TABLE jobs_data ADD COLUMN `ped_heading` FLOAT(12) NULL DEFAULT NULL;"
L33_1 = {}
L33_1.table = "jobs_data"
L33_1.column = "object"
L33_1.sql = "ALTER TABLE jobs_data ADD COLUMN `object` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci';"
L34_1 = {}
L34_1.table = "jobs_data"
L34_1.column = "object_heading"
L34_1.sql = "ALTER TABLE jobs_data ADD COLUMN `object_heading` FLOAT(12) NULL DEFAULT NULL;"
L35_1 = {}
L35_1.table = "jobs_data"
L35_1.column = "specific_grades"
L35_1.sql = "ALTER TABLE jobs_data ADD COLUMN `specific_grades` VARCHAR(255) DEFAULT NULL;"
L36_1 = {}
L36_1.table = "jobs_data"
L36_1.column = "grades_type"
L36_1.sql = "ALTER TABLE jobs_data ADD COLUMN `grades_type` VARCHAR(20) DEFAULT NULL;"
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
L1_1[5] = L6_1
L1_1[6] = L7_1
L1_1[7] = L8_1
L1_1[8] = L9_1
L1_1[9] = L10_1
L1_1[10] = L11_1
L1_1[11] = L12_1
L1_1[12] = L13_1
L1_1[13] = L14_1
L1_1[14] = L15_1
L1_1[15] = L16_1
L1_1[16] = L17_1
L1_1[17] = L18_1
L1_1[18] = L19_1
L1_1[19] = L20_1
L1_1[20] = L21_1
L1_1[21] = L22_1
L1_1[22] = L23_1
L1_1[23] = L24_1
L1_1[24] = L25_1
L1_1[25] = L26_1
L1_1[26] = L27_1
L1_1[27] = L28_1
L1_1[28] = L29_1
L1_1[29] = L30_1
L1_1[30] = L31_1
L1_1[31] = L32_1
L1_1[32] = L33_1
L1_1[33] = L34_1
L1_1[34] = L35_1
L1_1[35] = L36_1
function L2_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2
  L0_2 = promise
  L0_2 = L0_2.new
  L0_2 = L0_2()
  L1_2 = false
  L2_2 = pcall
  function L3_2()
    local L0_3, L1_3, L2_3, L3_3
    L0_3 = MySQL
    L0_3 = L0_3.Sync
    L0_3 = L0_3.fetchScalar
    L1_3 = "SELECT 1"
    L2_3 = {}
    L0_3 = L0_3(L1_3, L2_3)
    L1_3 = true
    L1_2 = L1_3
    L1_3 = L0_2
    L2_3 = L1_3
    L1_3 = L1_3.resolve
    L3_3 = L0_3
    L1_3(L2_3, L3_3)
  end
  L2_2(L3_2)
  L2_2 = SetTimeout
  L3_2 = 5000
  function L4_2()
    local L0_3, L1_3, L2_3
    L0_3 = L1_2
    if not L0_3 then
      L0_3 = L0_2
      L1_3 = L0_3
      L0_3 = L0_3.resolve
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
  end
  L2_2(L3_2, L4_2)
  L2_2 = Citizen
  L2_2 = L2_2.Await
  L3_2 = L0_2
  return L2_2(L3_2)
end
function L3_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L0_2 = 0
  L1_2 = 10
  while true do
    L0_2 = L0_2 + 1
    L2_2 = L2_1
    L2_2 = L2_2()
    if L2_2 then
      break
    end
    if L0_2 > 10 then
      L3_2 = print
      L4_2 = "^1"
      L3_2(L4_2)
      L3_2 = print
      L4_2 = "The database is not set up properly (or it's not started at all). Retrying connection in "
      L5_2 = L1_2
      L6_2 = " seconds..."
      L4_2 = L4_2 .. L5_2 .. L6_2
      L3_2(L4_2)
      L3_2 = print
      L4_2 = "This is NOT fault of '"
      L5_2 = GetCurrentResourceName
      L5_2 = L5_2()
      L6_2 = "' script, make sure to have a server ready before using this script"
      L4_2 = L4_2 .. L5_2 .. L6_2
      L3_2(L4_2)
      L3_2 = print
      L4_2 = "^7"
      L3_2(L4_2)
    end
    L3_2 = Citizen
    L3_2 = L3_2.Wait
    L4_2 = L1_2 * 1000
    L3_2(L4_2)
  end
end
function L4_1()
  local L0_2, L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2, L13_2
  L0_2 = L3_1
  L0_2()
  L0_2 = GetCurrentResourceName
  L0_2 = L0_2()
  L1_2 = print
  L2_2 = "^3Setting up database (it may take few seconds)...^7"
  L1_2(L2_2)
  L1_2 = pairs
  L2_2 = L0_1
  L1_2, L2_2, L3_2, L4_2 = L1_2(L2_2)
  for L5_2, L6_2 in L1_2, L2_2, L3_2, L4_2 do
    L7_2 = L6_2.framework
    if L7_2 then
      L7_2 = L6_2.framework
      L8_2 = Framework
      L8_2 = L8_2.getFramework
      L8_2 = L8_2()
      if L7_2 ~= L8_2 then
        goto lbl_43
      end
    end
    L7_2 = LoadResourceFile
    L8_2 = L0_2
    L9_2 = L6_2.path
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L8_2 = promise
      L8_2 = L8_2.new
      L8_2 = L8_2()
      L9_2 = MySQL
      L9_2 = L9_2.Async
      L9_2 = L9_2.execute
      L10_2 = L7_2
      L11_2 = {}
      function L12_2()
        local L0_3, L1_3
        L0_3 = L8_2
        L1_3 = L0_3
        L0_3 = L0_3.resolve
        L0_3(L1_3)
      end
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = Citizen
      L9_2 = L9_2.Await
      L10_2 = L8_2
      L9_2(L10_2)
    end
    ::lbl_43::
  end
  L1_2 = Database
  L1_2 = L1_2.getCurrentDatabaseName
  L1_2 = L1_2()
  L2_2 = pairs
  L3_2 = L1_1
  L2_2, L3_2, L4_2, L5_2 = L2_2(L3_2)
  for L6_2, L7_2 in L2_2, L3_2, L4_2, L5_2 do
    L8_2 = Database
    L8_2 = L8_2.doesColumnExist
    L9_2 = L1_2
    L10_2 = L7_2.table
    L11_2 = L7_2.column
    L8_2 = L8_2(L9_2, L10_2, L11_2)
    if not L8_2 then
      L8_2 = promise
      L8_2 = L8_2.new
      L8_2 = L8_2()
      L9_2 = MySQL
      L9_2 = L9_2.Async
      L9_2 = L9_2.execute
      L10_2 = L7_2.sql
      L11_2 = {}
      function L12_2()
        local L0_3, L1_3
        L0_3 = L8_2
        L1_3 = L0_3
        L0_3 = L0_3.resolve
        L0_3(L1_3)
      end
      L9_2(L10_2, L11_2, L12_2)
      L9_2 = Citizen
      L9_2 = L9_2.Await
      L10_2 = L8_2
      L9_2(L10_2)
    end
  end
  L2_2 = MySQL
  L2_2 = L2_2.Sync
  L2_2 = L2_2.fetchAll
  L3_2 = "SELECT * FROM jobs WHERE options IS NULL OR options = ''"
  L2_2 = L2_2(L3_2)
  L3_2 = pairs
  L4_2 = L2_2
  L3_2, L4_2, L5_2, L6_2 = L3_2(L4_2)
  for L7_2, L8_2 in L3_2, L4_2, L5_2, L6_2 do
    L9_2 = json
    L9_2 = L9_2.encode
    L10_2 = {}
    L11_2 = L8_2.enable_billing
    L11_2 = 1 == L11_2
    L10_2.enableBilling = L11_2
    L11_2 = L8_2.can_rob
    L11_2 = 1 == L11_2
    L10_2.canRob = L11_2
    L11_2 = L8_2.can_handcuff
    L11_2 = 1 == L11_2
    L10_2.canHandcuff = L11_2
    L11_2 = L8_2.whitelisted
    L11_2 = 1 == L11_2
    L10_2.whitelisted = L11_2
    L11_2 = L8_2.can_lockpick_cars
    L11_2 = 1 == L11_2
    L10_2.canLockpickCars = L11_2
    L11_2 = L8_2.can_wash_vehicles
    L11_2 = 1 == L11_2
    L10_2.canWashVehicles = L11_2
    L11_2 = L8_2.can_repair_vehicles
    L11_2 = 1 == L11_2
    L10_2.canRepairVehicles = L11_2
    L11_2 = L8_2.can_impound_vehicles
    L11_2 = 1 == L11_2
    L10_2.canImpoundVehicles = L11_2
    L11_2 = L8_2.can_check_identity
    L11_2 = 1 == L11_2
    L10_2.canCheckIdentity = L11_2
    L11_2 = L8_2.can_check_vehicle_owner
    L11_2 = 1 == L11_2
    L10_2.canCheckVehicleOwner = L11_2
    L11_2 = L8_2.can_check_driving_license
    L11_2 = 1 == L11_2
    L10_2.canCheckDrivingLicense = L11_2
    L11_2 = L8_2.can_check_weapon_license
    L11_2 = 1 == L11_2
    L10_2.canCheckWeaponLicense = L11_2
    L11_2 = L8_2.can_heal
    L11_2 = 1 == L11_2
    L10_2.canHeal = L11_2
    L11_2 = L8_2.can_revive
    L11_2 = 1 == L11_2
    L10_2.canRevive = L11_2
    L11_2 = L8_2.actions_menu_enabled
    L11_2 = 1 == L11_2
    L10_2.actionsMenuEnabled = L11_2
    L11_2 = L8_2.placeable_objects
    if L11_2 then
      L11_2 = json
      L11_2 = L11_2.decode
      L12_2 = L8_2.placeable_objects
      L11_2 = L11_2(L12_2)
      if L11_2 then
        goto lbl_194
      end
    end
    L11_2 = {}
    ::lbl_194::
    L10_2.placeableObjects = L11_2
    L9_2 = L9_2(L10_2)
    L10_2 = MySQL
    L10_2 = L10_2.Sync
    L10_2 = L10_2.execute
    L11_2 = "UPDATE jobs SET options=@options WHERE name=@name"
    L12_2 = {}
    L12_2["@options"] = L9_2
    L13_2 = L8_2.name
    L12_2["@name"] = L13_2
    L10_2(L11_2, L12_2)
  end
  L3_2 = print
  L4_2 = "^2Database ready^7"
  L3_2(L4_2)
  L3_2 = print
  L3_2()
  L3_2 = TriggerEvent
  L4_2 = Utils
  L4_2 = L4_2.eventsPrefix
  L5_2 = ":database:ready"
  L4_2 = L4_2 .. L5_2
  L3_2(L4_2)
  L3_2 = true
  return L3_2
end
setupDatabase = L4_1
L4_1 = Database
function L5_1()
  local L0_2, L1_2
  L0_2 = MySQL
  L0_2 = L0_2.Sync
  L0_2 = L0_2.fetchScalar
  L1_2 = "SELECT DATABASE();"
  L0_2 = L0_2(L1_2)
  return L0_2
end
L4_1.getCurrentDatabaseName = L5_1
L4_1 = Database
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = MySQL
  L3_2 = L3_2.Sync
  L3_2 = L3_2.fetchScalar
  L4_2 = "SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA = @databaseName AND TABLE_NAME = @tableName AND COLUMN_NAME = @columnName"
  L5_2 = {}
  L5_2["@databaseName"] = A0_2
  L5_2["@tableName"] = A1_2
  L5_2["@columnName"] = A2_2
  L3_2 = L3_2(L4_2, L5_2)
  return L3_2
end
L4_1.doesColumnExist = L5_1
