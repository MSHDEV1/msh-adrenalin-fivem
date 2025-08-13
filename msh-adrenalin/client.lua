local id = GetPlayerServerId(PlayerId())


AddEventHandler("msh-adrenalin:useadrenalin", function ()
       print(id)
local tamam = lib.progressBar({
    duration = 7000,
    label = 'Adrenalin Hapı Kullanıyorsunuz....',
    useWhileDead = false,
    canCancel = true,
    disable = {
        car = true,
    },
    anim = {
        dict = 'mp_player_intdrink',
            clip = 'loop_bottle'
    },
    prop = {
        model = `v_club_vu_pills`,
        pos = vec3(0.03, 0.03, 0.02),
        rot = vec3(0.0, 0.0, -1.5)
    },
})
if tamam == true then
  TriggerServerEvent("msh-adrenalin:adrenalinsil",id)
      SetTimecycleModifier("BulletTimeDark")
  SetPlayerStamina(PlayerId(),100.0)
local sayi = GetPlayerStamina(PlayerId())
Citizen.CreateThread(function()
SetPedMoveRateOverride(PlayerId(),25.0)
SetRunSprintMultiplierForPlayer(PlayerId(),1.15)
print(sayi)
end)
       
Wait(10000)
      SetTimecycleModifier("rply_vignette_neg")
SetPedMoveRateOverride(PlayerId(),10.0)
SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
 SetPlayerStamina(PlayerId() , 25.0)
print("bitti")
else
    lib.notify({
    title = 'Adrenalin',
    description = 'Eşyayı Kullanamadınız',
    type = 'error',
    duration = 3000,
    position = 'bottom'
})
end    
end)

Citizen.CreateThread(function()
    while true do
        Wait(0)
        local playerPed = PlayerPedId()
        local shooting = IsPedShooting(playerPed)
                
        if shooting then
           TriggerEvent("msh-adrenalin:aktif")
            
       end
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(0)
                
        if IsPedShooting(GetPlayerPed(-1)) then
           TriggerEvent("msh-adrenalin:aktif")

       end
    end
end)

AddEventHandler("msh-adrenalin:aktif" ,function ()
  SetPedMoveRateOverride(PlayerId(),25.0)
SetRunSprintMultiplierForPlayer(PlayerId(),1.12)


 Wait(8000)
 SetPlayerStamina(PlayerId() , 25.0)
        SetPedMoveRateOverride(PlayerId(),10.0)
        SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
end)



--exports
function adrenalinkullan()
        TriggerEvent("msh-adrenalin:useadrenalin")
end
exports('adrenalinkullan', adrenalinkullan)