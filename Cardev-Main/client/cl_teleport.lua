RegisterCommand("speed",function(source)
    local ped = GetPlayerPed(-1)
    local car = GetVehiclePedIsUsing(ped)
    DoScreenFadeOut(300)
    Citizen.Wait(300)
    if GetVehiclePedIsIn(ped, true) == 0 then
            SetEntityCoords(ped,2370.8,2856.58,40.46)
    else
            SetEntityCoords(car,2370.8,2856.58,40.46)
            SetEntityHeading(car, 307.0)
    end
    Citizen.Wait(300)
    DoScreenFadeIn(300)
end)

RegisterCommand("drift",function(source)
    local ped = GetPlayerPed(-1)
    local car = GetVehiclePedIsUsing(ped)
    DoScreenFadeOut(300)
    Citizen.Wait(300)
    if GetVehiclePedIsIn(ped, true) == 0 then
            SetEntityCoords(ped,974.58,-3006.6,5.9)
    else
            SetEntityCoords(car,974.58,-3006.6,5.9)
            SetEntityHeading(ped, 330)
    end
    Citizen.Wait(300)
    DoScreenFadeIn(300)
end)

RegisterCommand("handling",function(source)
    local ped = GetPlayerPed(-1)
    local car = GetVehiclePedIsUsing(ped)
    DoScreenFadeOut(300)
    Citizen.Wait(300)
    if GetVehiclePedIsIn(ped, true) == 0 then
            SetEntityCoords(ped,1894.57,3823.71,31.98)
    else
            SetEntityCoords(car,1894.57,3823.71,31.98)
            SetEntityHeading(ped, 330)
    end
    Citizen.Wait(300)
    DoScreenFadeIn(300)
end)

RegisterCommand("bend",function(source)
        local ped = GetPlayerPed(-1)
        local car = GetVehiclePedIsUsing(ped)
        DoScreenFadeOut(300)
        Citizen.Wait(300)
        if GetVehiclePedIsIn(ped, true) == 0 then
                SetEntityCoords(ped,2642.60,5112.80,44.80)
        else
                SetEntityCoords(car,2642.60,5112.80,44.80)
                SetEntityHeading(ped, 330)
        end
        Citizen.Wait(300)
        DoScreenFadeIn(300)
    end)
   
    RegisterCommand("diner",function(source)
        local ped = GetPlayerPed(-1)
        local car = GetVehiclePedIsUsing(ped)
        DoScreenFadeOut(300)
        Citizen.Wait(300)
        if GetVehiclePedIsIn(ped, true) == 0 then
                SetEntityCoords(ped,1581.81,6447.20,25.10)
        else
                SetEntityCoords(car,1581.81,6447.20,25.10)
                SetEntityHeading(ped, 330)
        end
        Citizen.Wait(300)
        DoScreenFadeIn(300)
    end)

    RegisterCommand("shank",function(source)
        local ped = GetPlayerPed(-1)
        local car = GetVehiclePedIsUsing(ped)
        DoScreenFadeOut(300)
        Citizen.Wait(300)
        if GetVehiclePedIsIn(ped, true) == 0 then
                SetEntityCoords(ped,-3153.75,1079.52,20.69)
        else
                SetEntityCoords(car,-3153.75,1079.52,20.69)
                SetEntityHeading(ped, 330)
        end
        Citizen.Wait(300)
        DoScreenFadeIn(300)
    end)

    RegisterCommand("airport",function(source)
        local ped = GetPlayerPed(-1)
        local car = GetVehiclePedIsUsing(ped)
        DoScreenFadeOut(300)
        Citizen.Wait(300)
        if GetVehiclePedIsIn(ped, true) == 0 then
                SetEntityCoords(ped,-902.1,-3295.7,13.94)
        else
                SetEntityCoords(car,-902.1,-3295.7,13.94)
                SetEntityHeading(ped, 330)
        end
        Citizen.Wait(300)
        DoScreenFadeIn(300)
    end)

RegisterCommand("row",function(source)
    local ped = GetPlayerPed(-1)
    local car = GetVehiclePedIsUsing(ped)
    DoScreenFadeOut(300)
    Citizen.Wait(300)
    if GetVehiclePedIsIn(ped, true) == 0 then
            SetEntityCoords(ped,426.50128173828,-979.33557128906,30.709985733032)
    else
            SetEntityCoords(car,426.50128173828,-979.33557128906,30.709985733032)
            SetEntityHeading(car, 307.0)
    end
    Citizen.Wait(300)
    DoScreenFadeIn(300)
end)
RegisterCommand("faded",function(source)
    local k=PlayerPedId()
    NetworkFadeOutEntity(k,true,false)
    SetEntityCoords(k,426.50128173828,-979.33557128906,30.709985733032,1,0,0,1)
    Wait(500)
    NetworkFadeInEntity(k,0)
end)