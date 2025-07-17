--[[ FX Information ]]--
fx_version   'cerulean'
use_fxv2_oal 'yes'
lua54        'yes'
game         'gta5'

--[[ Resource Information ]]--
name         'LOTUS_DESIGNS_CHAT'
version      'v1.0.0'
description  'Roleplay chat script.'
author       'Jaelix'

dependencies {
	'chat',
}

shared_scripts {
	'@ox_lib/init.lua',
	'config.lua',
	'locales.lua',
	'locales/*.lua',
	'shared/*.lua',
}

client_scripts {
	'client/framework/*.lua',
	'client/*.lua',
	'modules/**/client.lua',
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/framework/*.lua',
	'sv_utils.lua',
	'server/*.lua',
	'modules/**/server.lua',
}

escrow_ignore {
	'config.lua',

	'client/framework/*.lua',
	'client/menu.lua',

	'server/framework/*.lua',
	'sv_utils.lua',

	'locales/*.lua',
}
dependency '/assetpacks'