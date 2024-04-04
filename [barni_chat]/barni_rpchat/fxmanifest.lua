fx_version 'cerulean'
game 'gta5'

author 'Barni'
description 'Rp chat for roleplay servers <3'
version '2.0'
lua54 'true'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'server/*.lua'
}

client_scripts {
	'client/*.lua'
}

shared_scripts {
	'@ox_lib/init.lua', 
	'configs/*.lua'
}