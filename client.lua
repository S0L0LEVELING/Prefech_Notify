--[[
########################################################################
#                  _____           __          _                       #
#                 |  __ \         / _|        | |                      #
#                 | |__) | __ ___| |_ ___  ___| |__                    #
#                 |  ___/ '__/ _ \  _/ _ \/ __| '_ \                   #
#                 | |   | | |  __/ ||  __/ (__| | | |                  #
#                 |_|   |_|  \___|_| \___|\___|_| |_|                  #
#                                                                      #
#                        Created on 2-11-2021                         #
#                         discord.gg/prefech                           #
#                           www.prefech.com                            #
#                                                                      #
########################################################################
--]]

RegisterNetEvent('Prefech:SendNotify')
AddEventHandler('Prefech:SendNotify', function(args)
    msg = split(args['message'], "\n")
    args['message'] = table.concat(msg, "<br>")
    SendNUIMessage({
        createNew = true,
        data = args
    })
end)

exports('Notify', function(args)
    msg = split(args['message'], "\n")
    args['message'] = table.concat(msg, "<br>")
	SendNUIMessage({
        createNew = true,
        data = args
    })
end)

function split(inputstr, sep)
    local t={}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            table.insert(t, str)
    end
    return t
end
