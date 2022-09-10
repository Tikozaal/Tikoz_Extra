ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local PlayerData = {}

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
     PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)  
	PlayerData.job = job  
	Citizen.Wait(5000) 
end)

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(10)
    end
    while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
    end
    if ESX.IsPlayerLoaded() then

		ESX.PlayerData = ESX.GetPlayerData()

    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)

RegisterNetEvent('esx:setJob2')
AddEventHandler('esx:setJob2', function(job2)
    ESX.PlayerData.job2 = job2
end)

menuextra = {
    Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {0, 251, 255}, Title = "Menu Extra"},
    Data = { currentMenu = "Menu :"},
    Events = {
        onSelected = function(self, _, btn, PMenu, menuData, result)


            if btn.name == "Extras" then
                OpenMenu('Extras')
            elseif btn.name == "Liveries" then
                OpenMenu('Liveries')
            end


            if btn.name == "Extra 1" and btn.checkbox == true then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleExtra(tikozal, 1, false)
            elseif btn.name == "Extra 1" and btn.checkbox == false then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleExtra(tikozal, 1, true)
            elseif btn.name == "Extra 2" and btn.checkbox == true then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleExtra(tikozal, 2, false)
            elseif btn.name == "Extra 2" and btn.checkbox == false then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleExtra(tikozal, 2, true)
            elseif btn.name == "Extra 3" and btn.checkbox == true then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleExtra(tikozal, 3, false)
            elseif btn.name == "Extra 3" and btn.checkbox == false then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleExtra(tikozal, 3, true)
            elseif btn.name == "Extra 4" and btn.checkbox == true then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleExtra(tikozal, 4, false)
            elseif btn.name == "Extra 4" and btn.checkbox == false then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleExtra(tikozal, 4, true)
            elseif btn.name == "Extra 5" and btn.checkbox == true then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleExtra(tikozal, 5, false)
            elseif btn.name == "Extra 5" and btn.checkbox == false then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleExtra(tikozal, 5, true)
            elseif btn.name == "Extra 6" and btn.checkbox == true then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleExtra(tikozal, 6, false)
            elseif btn.name == "Extra 6" and btn.checkbox == false then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleExtra(tikozal, 6, true)
            elseif btn.name == "Extra 7" and btn.checkbox == true then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleExtra(tikozal, 7, false)
            elseif btn.name == "Extra 7" and btn.checkbox == false then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleExtra(tikozal, 7, true)
            elseif btn.name == "Extra 8" and btn.checkbox == true then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleExtra(tikozal, 8, false)
            elseif btn.name == "Extra 8" and btn.checkbox == false then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleExtra(tikozal, 8, true)
            elseif btn.name == "Extra 9" and btn.checkbox == true then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleExtra(tikozal, 9, false)
            elseif btn.name == "Extra 9" and btn.checkbox == false then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleExtra(tikozal, 9, true)
            end


            if btn.name == "Liverie 1" and btn.checkbox == true then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleLivery(tikozal, 1)
            elseif btn.name == "Liverie 2" and btn.checkbox == true then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleLivery(tikozal, 2)
            elseif btn.name == "Liverie 3" and btn.checkbox == true then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleLivery(tikozal, 3)
            elseif btn.name == "Liverie 4" and btn.checkbox == true then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleLivery(tikozal, 4)
            elseif btn.name == "Liverie 5" and btn.checkbox == true then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleLivery(tikozal, 5)
            elseif btn.name == "Liverie 6" and btn.checkbox == true then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleLivery(tikozal, 6)
            elseif btn.name == "Liverie 7" and btn.checkbox == true then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleLivery(tikozal, 7)
            elseif btn.name == "Liverie 8" and btn.checkbox == true then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleLivery(tikozal, 8)
            elseif btn.name == "Liverie 9" and btn.checkbox == true then
                local ped = PlayerPedId()
                local tikozal = GetVehiclePedIsIn(ped, true)
                SetVehicleLivery(tikozal, 9)
            end

        end,
},
    Menu = {
        ["Menu :"] = {
            b = {
                {name = "Extras", ask = ">", askX = true},
                {name = "Liveries", ask = ">", askX = true},
            }
        },
        ["Extras"] = {
            b = {
                {name = "Extra 1", checkbox = false},
                {name = "Extra 2", checkbox = false},
                {name = "Extra 3", checkbox = false},
                {name = "Extra 4", checkbox = false},
                {name = "Extra 5", checkbox = false},
                {name = "Extra 6", checkbox = false},
                {name = "Extra 7", checkbox = false},
                {name = "Extra 8", checkbox = false},
                {name = "Extra 9", checkbox = false},
            }
        },
        ["Liveries"] = {
            b = {
                {name = "Liverie 1", checkbox = false},
                {name = "Liverie 2", checkbox = false},
                {name = "Liverie 3", checkbox = false},
                {name = "Liverie 4", checkbox = false},
                {name = "Liverie 5", checkbox = false},
                {name = "Liverie 6", checkbox = false},
                {name = "Liverie 7", checkbox = false},
                {name = "Liverie 8", checkbox = false},
                {name = "Liverie 9", checkbox = false},
            }
        },
    }
}

RegisterCommand(Config.Commande, function()
    for i=1, #Listejob, 1 do
        if ESX.PlayerData.job.name == Listejob[i] then
            CreateMenu(menuextra)
        end
    end
end, false)
