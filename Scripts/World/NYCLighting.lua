-- NYCLighting.lua

-- Configuration for realistic NYC lighting and night atmosphere

local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")

-- Set lighting properties
Lighting.Ambient = Color3.fromRGB(35, 35, 35)
Lighting.Brightness = 2
Lighting.FogColor = Color3.fromRGB(50, 50, 60)
Lighting.FogStart = 0
Lighting.FogEnd = 100

-- Create a function to simulate time of day
local function simulateNight()
    while true do
        Lighting.TimeOfDay = "20:00:00"
        RunService.RenderStepped:Wait()
    end
end

simulateNight()