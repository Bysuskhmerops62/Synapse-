-- safeBaby.lua
-- "Anti Script Execution" prank

-- 1. Clear some global variables
getgenv = nil
getfenv = nil
setfenv = nil
hookfunction = function(...) return function() end end
newcclosure = function(...) return function() end end

-- 2. Block dangerous functions
require = function() error("[safeBaby] require() is blocked!") end
loadstring = function() error("[safeBaby] loadstring() is blocked!") end
load = function() error("[safeBaby] load() is blocked!") end

-- 3. Destroy Roblox core globals
game = nil
workspace = nil
Instance = nil
script = nil
shared = nil

-- 4. Override Instance.new
Instance = {
    new = function() error("[safeBaby] Instance.new is blocked!") end
}

-- 5. Block getconnections
getconnections = function() return {} end

-- 6. Block fire* functions
firetouchinterest = function() error("[safeBaby] firetouchinterest is blocked!") end
fireclickdetector = function() error("[safeBaby] fireclickdetector is blocked!") end

-- 7. Spam console for annoyance
spawn(function()
    while true do
        warn("[safeBaby] protected environment active")
        task.wait(0.1)
    end
end)

-- 8. Loop to attempt cleaning function in gc
spawn(function()
    while true do
        for i,v in next, getgc(true) do
            if typeof(v) == "function" then
                pcall(function()
                    debug.setupvalue(v, 1, nil)
                end)
            end
        end
        task.wait(1)
    end
end)

-- 9. Fake identity function
identifyexecutor = function() return "safeBaby v1.0" end

-- 10. Block hookmetamethod
hookmetamethod = function(...) return function() end end

print("[safeBaby] initialized & running")
