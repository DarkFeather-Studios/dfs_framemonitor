RegisterNetEvent("framemonitor:upload")
AddEventHandler("framemonitor:upload", function (Low, Avg, High)
    MySQL.Async.execute("INSERT INTO metrics_fps (`lowFrames`, `avgFrames`, `highFrames`, `source_id`) VALUES (@low, @avg, @high, @id)", {low = Low, avg = Avg, high = High, 
    id = GetPlayerIdentifiers(source)[1]} )
end)