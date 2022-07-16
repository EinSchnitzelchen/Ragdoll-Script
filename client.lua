Citizen.CreateThread(function()
    while true do
        Wait(0)
        if ragdoll then
            SetPedToRagdoll(PlayerPedId(),1000,1000,0,true,true,false)
        end
    end
end)

if Config.ragdolled then
    RegisterCommand('rdoll', function() --Register our ragdoll command
        if not IsPedInAnyVehicle(PlayerPedId(), false) then
            ragdoll = not ragdoll
        end
    end,false)
end

RegisterKeyMapping('rdoll', 'Ragdoll', 'keyboard', Config.Controls.Ragdoll)