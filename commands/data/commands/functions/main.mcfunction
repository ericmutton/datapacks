execute if entity @s[tag=staff] run function commands:staff
function commands:weather/main
function commands:player/sound/main
function commands:player/homes/main
function commands:player/warps/main
function commands:player/mail/main
function commands:player/afk/main

execute if score @s server.website matches 1.. run function commands:website

function commands:info
function commands:help
#function commands:reset