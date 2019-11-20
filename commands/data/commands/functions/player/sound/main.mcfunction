execute if score @s[tag=!player.sound] player.sound matches 1.. run function commands:player/sound/enable
execute if score @s[tag=player.sound] player.sound matches 1.. run function commands:player/sound/disable
execute if entity @s[tag=player.sound] run function player:sound/main
scoreboard players enable @s player.sound