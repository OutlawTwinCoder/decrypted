local moduleType = "logs" -- Module category
local moduleName = "outlawtwincoder" -- THIS module name

-- Don't touch, required to appear in in-game settings
Integrations.modules = Integrations.modules or {}
Integrations.modules[moduleType] = Integrations.modules[moduleType] or {}
table.insert(Integrations.modules[moduleType], moduleName)
