print("rejoiner executedd")

local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")

local player = Players.LocalPlayer
local PlaceId = game.PlaceId
local JobId = game.JobId

local reconnectTime = 860 -- Tiempo en segundos después del cual el jugador será reconectado
local lastReconnect = 0 -- Contador para llevar la cuenta del tiempo

-- Reconectar después de 'reconnectTime' segundos
while true do
    lastReconnect = lastReconnect + 1 -- Incrementar el contador de tiempo

    -- Si han pasado 2000 segundos, reconectar al jugador
    if lastReconnect >= reconnectTime then
        player:Kick("\nReingresando automáticamente después de 2000 segundos...")
        wait(1) -- Esperar un segundo antes de reconectar
        TeleportService:Teleport(PlaceId, player) -- Reconectar al jugador al mismo lugar
        lastReconnect = 0 -- Reiniciar el temporizador
    end

    wait(1) -- Esperar 1 segundo antes de continuar el ciclo
end
