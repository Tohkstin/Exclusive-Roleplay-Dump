shared_script "@ReaperV4/bypass.lua"
lua54 "yes" -- needed for Reaper








fx_version 'cerulean'
game 'gta5'

description 'QB-Core'
version '1.1.0'

shared_scripts {
    "@mc9-lib/import.lua",
    "@ox_lib/init.lua",
    '@mc9-abgm/shared/log.lua',
    'config.lua',
    'shared/locale.lua',
	'locale/en.lua', -- replace with desired language
	'shared/main.lua',
	'shared/items.lua',
	'shared/items/**/*.lua',
	'shared/jobs.lua',
	'shared/gangs.lua',
	'shared/weapons.lua',
	'shared/weapons/*.lua',
}

client_scripts {
	'client/main.lua',
	'client/functions.lua',
    "client/security.lua",
	'client/loops.lua',
	'client/events.lua',
	'client/drawtext.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    "config_server.lua",
    'server/db.lua',
    'server/main.lua',
    'server/functions.lua',
    'server/player.lua',
    'server/events.lua',
    'server/commands.lua',
    'server/exports.lua',
    'server/callbacks.lua',
    'server/vehicles.lua',
    'server/debug.lua',
    "server/security.lua",
    "server/security.cli.lua",
}

ui_page 'ui/index.html'

files {
	'ui/index.html',
	'ui/css/main.css',
	'ui/css/drawtext.css',
	'ui/js/*.js',
	'ui/img/*.png'
}

dependency 'oxmysql'

lua54 'yes'
