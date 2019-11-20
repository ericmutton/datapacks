scoreboard players set #current anchor.RotX 0
execute if entity @s[x_rotation=-90] run scoreboard players set #current anchor.RotX -90
execute if entity @s[x_rotation=90] run scoreboard players set #current anchor.RotX 90
execute if entity @s[y_rotation=337.6..22.4] run scoreboard players set #current anchor.RotY 0
execute if entity @s[y_rotation=292.6..337.5] run scoreboard players set #current anchor.RotY -45
execute if entity @s[y_rotation=247.6..292.5] run scoreboard players set #current anchor.RotY -90
execute if entity @s[y_rotation=202.6..247.5] run scoreboard players set #current anchor.RotY -135
execute if entity @s[y_rotation=157.5..202.5] run scoreboard players set #current anchor.RotY 180
execute if entity @s[y_rotation=112.5..157.4] run scoreboard players set #current anchor.RotY 135
execute if entity @s[y_rotation=67.5..112.5] run scoreboard players set #current anchor.RotY 90
execute if entity @s[y_rotation=22.5..67.5] run scoreboard players set #current anchor.RotY 45

summon area_effect_cloud 64 0 64 {Tags:["homes.anchor"],Duration:-1,WaitTime:-2147483648,Age:-2147483648}
execute as @e[type=minecraft:area_effect_cloud,tag=homes.anchor,tag=!homes.anchor.set,limit=1] run function commands:player/homes/anchor/update
scoreboard players add @s homes.set 1