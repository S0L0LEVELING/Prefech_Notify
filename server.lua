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

exports('Notify', function(args)
	TriggerClientEvent('Prefech:SendNotify', args.target, args)
end)

-- version check
Citizen.CreateThread( function()
    if GetResourceMetadata(GetCurrentResourceName(), 'version') then
        PerformHttpRequest(
            'https://raw.githubusercontent.com/Prefech/Prefech_Notify/master/version.json',
            function(code, res, headers)
                if code == 200 then
                    local rv = json.decode(res)
                    if rv.version ~= GetResourceMetadata(GetCurrentResourceName(), 'version') then
                        print(
                            ([[^1-------------------------------------------------------
                            Prefech_Notify
UPDATE: %s AVAILABLE
CHANGELOG: %s
-------------------------------------------------------^0]]):format(
                                rv.version,
                                rv.changelog
                            )
                        )
                    end
                else
                    print('Prefech_Notify unable to check version')
                end
            end,
            'GET'
        )
    end
end
)