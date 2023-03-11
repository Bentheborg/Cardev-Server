a = {
    maxSpeeds = {
        ["30"] = 13.0,
        ["50"] = 22.3,
        ["100"] = 44.6,
        ["150"] = 66.9,
        ["175"] = 78.05,
        ["200"] = 89.5,
        ["250"] = 111.5,
        ["300"] = 44.6 * 3,
        ["1000"] = 11001.5
    },
    vehicleMaxSpeeds = {
        [`faketaxi`] = "175",
    }
}

Citizen.CreateThread(function()
	local model = GetEntityModel()
	while true do
        if GetVehiclePedIsIn(PlayerPedId(), false) ~= 0 then
            local C=GetVehiclePedIsIn(GetPlayerPed(-1),false)
            local I=GetEntityModel(C)
            if a.vehicleMaxSpeeds[I]~=nil then 
                SetEntityMaxSpeed(C,a.maxSpeeds[a.vehicleMaxSpeeds[I]])
            else 
                SetEntityMaxSpeed(C,a.maxSpeeds["250"])
            end
        end
        Wait(0)
    end
end)