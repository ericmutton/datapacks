execute if score $void gamerules matches 0 if entity @s[tag=protected,tag=inVoid] run function commands:player/warps/spawn/run
execute if score $actions gamerules matches 1 if entity @s[tag=!spectator,tag=!inVoid,tag=!isDead] run function player:actions/bar
execute if score $boat gamerules matches 1 at @e[type=minecraft:area_effect_cloud,tag=server.anchor,limit=1] if entity @s[distance=..33] run function player:give/boat
execute if score $sleep gamerules matches 1 if entity @s[tag=player,nbt=!{SleepTimer:0s}] run function player:sleep/run
execute if score $enderpearl gamerules matches 0 run kill @e[type=ender_pearl]
execute if score $creeper gamerules matches 1 run function gamerules:mobs/creeper/explosions/enable/run
execute if score $creeper gamerules matches 0 run function gamerules:mobs/creeper/explosions/disable/run
execute if score $bombs gamerules matches 1 run function gamerules:player/tools/explosions/enable/damage/run
execute if score $bombs gamerules matches 0 run function gamerules:player/tools/explosions/disable/damage/run
execute if score $firework gamerules matches 0 run data merge entity @e[type=firework_rocket,tag=!implodes,limit=1] {Tags:["implodes"],ExplosionRadius:0}
execute if score $firework gamerules matches 1 as @e[type=firework_rocket,tag=implodes,limit=1] run function gamerules:player/tools/firework/damage/explode
execute if score $commands gamerules matches 0 run function player:triggers/reset