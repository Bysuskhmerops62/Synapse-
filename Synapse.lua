-- Anti-Vage.lua (Anti bypass script)

print("[Anti-Vage] Anti-execution script loaded.")

-- Block dangerous functions (require, loadstring, etc.)
local blockedFunctions = {
    "require", 
    "loadstring", 
    "Instance.new",
    "hookfunction",
    "getfenv",
    "setfenv"
}

-- Function to block any method
local function blockMethod(funcName)
    local oldFunc = _G[funcName] or getfenv()[funcName]
    _G[funcName] = function(...)
        warn("[Anti-Vage] " .. funcName .. "() is blocked!")
        return nil
    end
end

-- Block all predefined dangerous functions
for _, funcName in ipairs(blockedFunctions) do
    blockMethod(funcName)
end

-- Block game and workspace globals
rawset(_G, "game", nil)
rawset(getfenv(), "game", nil)
rawset(_G, "workspace", nil)
rawset(getfenv(), "workspace", nil)

-- Check for unwanted scripts and stop them (by script name or specific signature)
spawn(function()
    while true do
        for _, script in pairs(game:GetDescendants()) do
            if script:IsA("Script") or script:IsA("LocalScript") then
                -- Check script name or signature
                if string.match(script.Name, "Vage") then
                    script:Destroy()
                    warn("[Anti-Vage] Blocked and destroyed unauthorized script: " .. script.Name)
                end
            end
        end
        task.wait(1) -- Check every 1 second
    end
end)

-- Further blocking of specific methods used in Vage or exploits
spawn(function()
    while true do
        if isthreadsafe() then
            warn("[Anti-Vage] Detected unsafe thread execution, blocking.")
            game:Shutdown() -- Forces shutdown to prevent execution
        end
        task.wait(3) -- Check every 3 seconds
    end
end)

print("[Anti-Vage] Protection enabled!")
