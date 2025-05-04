-- safeBaby.lua (optimized version)
print("[safeBaby] Anti-execution script loaded.")

-- Block function require
local oldRequire = require
require = function(...)
    warn("[safeBaby] require() is blocked!")
    return nil
end

-- Block function loadstring
local oldLoadstring = loadstring
loadstring = function(...)
    warn("[safeBaby] loadstring() is blocked!")
    return nil
end

-- Block Instance.new
local oldInstanceNew = Instance.new
Instance.new = function(...)
    warn("[safeBaby] Instance.new is blocked!")
    return nil
end

-- Block game global
rawset(_G, "game", nil)
rawset(getfenv(), "game", nil)

-- Block workspace global
rawset(_G, "workspace", nil)
rawset(getfenv(), "workspace", nil)

-- Block hookfunction
local oldHookfunction = hookfunction
hookfunction = function(...)
    warn("[safeBaby] hookfunction() is blocked!")
    return nil
end

-- Optional: mute warn itself if don't want to see warn
-- warn = function(...) end

-- Minimal loop cleaning (every 3 seconds, not fast)
spawn(function()
    while true do
        for _, v in next, getgc(true) do
            if typeof(v) == "function" then
                pcall(function()
                    -- remove upvalues to break exploit scripts
                    debug.setupvalue(v, 1, nil)
                end)
            end
        end
        task.wait(3) -- every 3 seconds to reduce lag
    end
end)

print("[safeBaby] Environment protected.")
