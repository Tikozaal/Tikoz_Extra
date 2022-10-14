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

local menuextra = {}
menuextra.Base = {Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {0, 251, 255}, Title = "Menu Extra"}
menuextra.Data = {currentMenu = "modification véhicule"}
menuextra.Events = {
	onSelected = function(self, Data, btn, PMenu, menuData, result)
		local lower = btn.name:lower()
		local plyVeh = GetVehiclePedIsIn(GetPlayerPed(-1), true)

		if Data.currentMenu == "extras" and lower then
			SetVehicleExtra(plyVeh, btn.key, not btn.checkbox)
		end

		if Data.currentMenu == "liveries" and lower then
			for k, v in pairs(menuData) do
				if k ~= PMenu then
					menuData[k].checkbox = false
				end
			end
			SetVehicleLivery(plyVeh, btn.key)
		end
	end,
}
menuextra.Menu = {
	["modification véhicule"] = {
		b = {
			{name = "Extras", ask = ">", askX = true},
			{name = "Liveries", ask = ">", askX = true},
		}
	},
	["extras"] = {
		b = function()
			local result = {}
			local plyVeh = GetVehiclePedIsIn(GetPlayerPed(-1), true)
			for index = 1, 12 do
				if DoesExtraExist(plyVeh, index) then
					result[#result + 1] = {
						name = ("Extra %s"):format(index), key = index,
						checkbox = IsVehicleExtraTurnedOn(plyVeh, index) and true or false
					}
				end
			end
			return result
		end
	},
	["liveries"] = {
		b = function()
			local result = {}
			local plyVeh = GetVehiclePedIsIn(GetPlayerPed(-1), true)
			for index = 1, 9 do
				result[#result + 1] = {
					name = ("Liverie %s"):format(index), key = index,
					checkbox = GetVehicleLivery(plyVeh) == index and true or false
				}
			end
			return result
		end
	}
}

RegisterCommand(Config.Commande, function()
    if IsPedInAnyVehicle(GetPlayerPed(-1)) then
        for i=1, #Config.Listejob, 1 do
            if ESX.PlayerData.job.name == Config.Listejob[i] then
                CreateMenu(menuextra)
            end
        end
    else ESX.ShowNotification("Vous n'êtes pas dans un véhicule") end
end, false)