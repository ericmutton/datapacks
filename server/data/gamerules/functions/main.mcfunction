function gamerules:mobs/enderman/main
function gamerules:mobs/creeper/main
function gamerules:commands/main
function gamerules:actions/main
function gamerules:tools/main
function gamerules:heads/main
function gamerules:sleep/main
function gamerules:void/main
function gamerules:boat/main
execute if score $void gamerules matches 0 if entity @s[tag=protected,tag=inVoid] run function commands:player/warps/spawn
execute if score $actions gamerules matches 1 if entity @s[tag=!spectator,tag=!inVoid,tag=!isDead] run function player:actions/bar
execute if score $boat gamerules matches 1 positioned 0 64 0 if entity @s[distance=..33] run function player:give/boat
execute if score $sleep gamerules matches 1 if entity @s[tag=player,nbt=!{SleepTimer:0s}] run function player:sleep/run
execute if score $enderpearl gamerules matches 0 run kill @e[type=ender_pearl]
execute if score $creeper gamerules matches 1 run function gamerules:mobs/creeper/explosions/enable/run
execute if score $creeper gamerules matches 0 run function gamerules:mobs/creeper/explosions/disable/run
execute if score $bombs gamerules matches 0 run function gamerules:tools/explosions/disable/damage/run
execute if score $bombs gamerules matches 1 run function gamerules:tools/explosions/enable/damage/run
execute if score $firework gamerules matches 0 run data merge entity @e[type=firework_rocket,tag=!implodes,limit=1] {Tags:["implodes"],ExplosionRadius:0}
execute if score $firework gamerules matches 1 as @e[type=firework_rocket,tag=implodes,limit=1] run function gamerules:tools/firework/damage/explode
execute if score $commands gamerules matches 0 run function player:triggers/reset

advancement grant @s[team=founder] only gamerules:root