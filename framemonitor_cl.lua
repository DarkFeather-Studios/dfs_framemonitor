local LowFrame = 256
local HighFrame = 0
local Frames = {}
local _TotalAvgFrames = 0
local LastUpload = GetGameTimer()



AddEventHandler("kashacters:PlayerSpawned", function ()
    local FPS = -1
    local LastCheck = GetGameTimer()
    while true do
        FPS = FPS + 1
        if LastUpload + 600000 < GetGameTimer() then
            for k, v in pairs(Frames) do _TotalAvgFrames = _TotalAvgFrames + v end
            if math.floor(_TotalAvgFrames/#Frames) == math.floor(_TotalAvgFrames/#Frames) then
                TriggerServerEvent("framemonitor:upload", LowFrame, math.floor(_TotalAvgFrames/#Frames), HighFrame)
            end
            LastUpload = GetGameTimer()
            LowFrame = 256
            HighFrame = 0
            Frames = {}
            _TotalAvgFrames = 0
        end
        if LastCheck + 1000 <= GetGameTimer() then 
            LastCheck = GetGameTimer()
            table.insert(Frames, #Frames+1, FPS)
            if FPS < LowFrame then LowFrame = FPS end
            if FPS > HighFrame then HighFrame = FPS end
            FPS = 0
        end
        Wait(0)
    end
end)