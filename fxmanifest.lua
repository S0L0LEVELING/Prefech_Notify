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

author 'Prefech'
description 'Prefech Notify'
version '1.0.0'
url 'https://prefech.com'

-- Server Scripts
server_scripts {
    'server.lua'
} 

--Client Scripts
client_scripts {
    'client.lua'
}

--Files
files {
    'ui/app.js',
    'ui/ui.html',
    'ui/app.css'
}

--UI
ui_page 'ui/ui.html'

game 'gta5'
fx_version 'cerulean'
