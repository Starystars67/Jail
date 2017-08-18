-- ======================================
      -- Written By : Titch2000
	  -- Requested by : LEO Community
      -- Free to use and edit but 
	  -- please give credit
-- ======================================

local adminAmount = 0;
local admins = {
    {['i'] = 1, ['IP'] = ""},
    {['i'] = 2, ['IP'] = ""}
}

for k,v in ipairs(admins) do
    adminAmount = adminAmount + 1;
end
print("Jail Script v1.0 Loaded with " .. adminAmount .. " Admins....")

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

AddEventHandler("chatMessage", function(source, color, msg)
    if msg:sub(1, 1) == "/" then
        cmd = stringsplit(msg, " ")
		-- get ip of player
		
		-- check against our list
		for k,v in ipairs(admins) do
			if v.IP == -- player ip then
				notAdmin = 0
				if cmd[1] == "/jail" then
					if cmd[2] ~= nil then
						TriggerClientEvent("yt:jail", source)
						-- get player from name or id? if its int then go if its string then get id as int
						TriggerServerEvent("yt:jail", source)
						CancelEvent()
					else
						TriggerClientEvent("yt:jail-help", source)
						CancelEvent()
					end
					CancelEvent()
				else if cmd[1] == "/unjail" then
					if cmd[2] ~= nil then
						TriggerClientEvent("yt:unjail", source)
						-- get player from name or id? if its int then go if its string then get id as int
						TriggerServerEvent("yt:unjail", source)
						CancelEvent()
					else
						TriggerClientEvent("yt:unjail-help", source)
						CancelEvent()
					end
					CancelEvent()
				end
			else
				notAdmin = 1
			end
		end
		
		if notAdmin == 1 then
			TriggerClientEvent("yt:jail-help-not-admin", source)
		end
    end
end)