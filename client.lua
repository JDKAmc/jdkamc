ESX                             = nil
local msg						= ''

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getShGeGenesisRParedObjGeGenesisRPect', function(obj) ESX = obj end)
		Citizen.Wait(0)
    end
end)

RegisterNetEvent("jota:send_chat_msg")
AddEventHandler("jota:send_chat_msg", function (msg)
    TriggerEvent("chatMessage", "", {0, 0, 0}, msg)
end)

RegisterNetEvent("jota:textsent")
AddEventHandler('jota:textsent', function(tPID, names2)
		TriggerEvent("chatMessage", "^7[^5MENSAJE PRIVADO^7]", {0, 0, 0}, "¡Su mensaje se está ^1enviando^7!" .. msg)
		Citizen.Wait("5000")
		TriggerEvent("chatMessage", "^7[^5MENSAJE PRIVADO^7]", {0, 0, 0}, "¡Su mensaje ^1ha sido ^7enviado correctamente a ^1".. names2 .." ^3[".. tPID .."]" .. msg)
end)

RegisterNetEvent("jota:textmsg")
AddEventHandler('jota:textmsg', function(tPID, textmsg, names2, names3 )
		textData.hasRecievedMessage = true
		textData.lastPlayerMessage = textmsg
		textData.lastPlayermessageRecieved = source
		textData.lastMessagenames2 = names3
		AddTextComponentString(textmsg)
		Citizen.Wait("5000")
		TriggerEvent("chatMessage", "^7[^5MENSAJE PRIVADO^7]", {0, 0, 0}, "Ha recibido un mensaje de ^1".. names3 .."^3[".. tPID .. "] ^7Mensaje: ^2".. textmsg .."^5" .. msg)
end)