execute in overworld run teleport @s @e[type=minecraft:area_effect_cloud,tag=spawnpoint,limit=1]
tellraw @s[tag=spawn] {"text":"You have returned to spawn.","color":"gray"}
title @s[tag=inVoid] actionbar {"text":"Woah! How'd you get there?","color":"yellow"}