ESX                			 = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterCommand('msg', function(source, args, raw)
	cm = stringsplit(raw, " ")
	local tPID = tonumber(args[1])
	local names2 = GetPlayerName(tPID)
	local names3 = GetPlayerName(source)
	local msgVar = {}
	local textmsg = ""
	for i=1, #cm do
		if i ~= 1 and i ~= 2 then
			textmsg = (textmsg .. " " .. tostring(cm[i]))
		end
	end	
	TriggerClientEvent('jota:textmsg', tPID, source, textmsg, names2, names3)
	TriggerClientEvent('jota:textsent', source, tPID, names2)
end)

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

function tablelength(T)
	local count = 0
	for _ in pairs(T) do count = count + 1 end
	return count
end
