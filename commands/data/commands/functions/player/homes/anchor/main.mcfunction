function entity:rotation
function entity:position
execute at @e[type=minecraft:area_effect_cloud,tag=server.anchor,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["homes.anchor"],Duration:-1,WaitTime:-2147483648,Age:-2147483648}
execute as @e[type=minecraft:area_effect_cloud,tag=homes.anchor,tag=!homes.anchor.set,limit=1] run function commands:player/homes/anchor/update
scoreboard players add @s homes.set 1