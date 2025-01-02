fx_version 'cerulean'
game 'gta5'
lua54 'yes'
use_experimental_fxv2_oal 'yes'
name 'zn-ammobox'
author 'Haxalott'
version '1.0.0'
description 'ammo boxes'

dependencies {
    '/server:7290',
    '/onesync',
    'ox_inventory',
    'es_extended',
}

shared_scripts { '@ox_lib/init.lua', 'config.lua' }

server_scripts { 'server/*.lua' }

client_scripts { 'client/*.lua' }