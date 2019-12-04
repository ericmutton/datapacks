kill @e[type=minecraft:area_effect_cloud,tag=spawnpoint]
execute align xyz run summon minecraft:area_effect_cloud ~0.5 ~ ~0.5 {CustomName:'"spawn"',Tags:["spawnpoint"],Duration:-1,WaitTime:-2147483648,Age:-2147483648}
function entity:rotation
execute as @e[type=minecraft:area_effect_cloud,tag=spawnpoint,limit=1] run function commands:staff/spawn/set
tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},"Set server spawn to current location"]
scoreboard players reset @s server.spawn