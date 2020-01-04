summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["raymarcher"],Duration:-1,WaitTime:-2147483648,Age:-2147483648}
teleport @e[type=minecraft:area_effect_cloud,tag=raymarcher,sort=nearest,limit=1]
execute as @e[type=minecraft:area_effect_cloud,tag=raymarcher,sort=nearest,limit=1] run function entity:ray/do