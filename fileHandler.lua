-----------------------------------------------------------------------------------------
--
-- fileHandler.lua
--
-----------------------------------------------------------------------------------------
local M = {}

local fileName = "recordsPlatformer.txt"
local fileName2 = "currentLevel.txt"
local level 
local iCloud = require( "plugin.iCloud" )

M.generateKVS = function()
  if (iCloud.get("1") == nil) then
    for i = 1,10 do
      iCloud.set(tostring(i),-1)
    end
    iCloud.set("currentLevel",0)
  end
end

M.getRecord = function(lvl)
    return iCloud.get(tostring(lvl))
end

M.writeRecord = function(record,level)
    iCloud.set(tostring(level),record)
end

M.getCurrentLevel = function()
    return iCloud.get("currentLevel")
end

M.updateCurrentLevel = function()
    iCloud.set("currentLevel",iCloud.get("currentLevel")+1)
end

return M