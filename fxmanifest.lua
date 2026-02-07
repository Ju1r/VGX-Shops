fx_version 'cerulean'
game 'gta5'

description 'VGX Shops'
author 'VGX DEV'
version '1.0.0'

shared_script {
    'config.lua',
    'locales/locales.lua'
}

client_script 'client/*.lua'
server_scripts {
    'server/*.lua',
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/script.js',
    'html/sounds/*.mp3'
}

