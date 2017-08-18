-- ======================================
      -- Written By : Titch2000
	  -- Requested by LEO Community
      -- Free to use and edit but 
	  -- please give credit
-- ======================================

RegisterNetEvent('yt:jail');
RegisterNetEvent('yt:jail-help');
RegisterNetEvent('yt:unjail');
RegisterNetEvent('yt:unjail-help');

AddEventHandler('yt:jail-help', function()
	ped = GetPlayerPed(-1);
	
	if ped then
		TriggerEvent('chatMessage', "^3Server", {255, 0, 0}, "^0-------- /JAIL COMMAND HELP --------");
		TriggerEvent('chatMessage', "^3Server", {255, 0, 0}, "^0Usage: /jail <user-id> <time in seconds> <reason optional*>");
	end
end)

AddEventHandler('yt:unjail-help', function()
	ped = GetPlayerPed(-1);
	
	if ped then
		TriggerEvent('chatMessage', "^3Server", {255, 0, 0}, "^0-------- /UNJAIL COMMAND HELP --------");
		TriggerEvent('chatMessage', "^3Server", {255, 0, 0}, "^0Usage: /unjail <user-id> <reason optional*>");
	end
end)

AddEventHandler('yt:jail', function()
	ped = GetPlayerPed(-1);
	
	if ped then
		TriggerEvent('chatMessage', "^3Server", {255, 0, 0}, "^0-------- /JAIL COMMAND HELP --------");
		TriggerEvent('chatMessage', "^3Server", {255, 0, 0}, "^0Usage: /jail <user-id> <time in seconds> <reason optional*>");
	end
end)

AddEventHandler('yt:unjail', function()
	ped = GetPlayerPed(-1);
	
	if ped then
		TriggerEvent('chatMessage', "^3Server", {255, 0, 0}, "^0-------- /JAIL COMMAND HELP --------");
		TriggerEvent('chatMessage', "^3Server", {255, 0, 0}, "^0Usage: /jail <user-id> <time in seconds> <reason optional*>");
	end
end)