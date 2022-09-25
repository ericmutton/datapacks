tag @s add delhome
execute as @e[type=minecraft:area_effect_cloud,tag=homes.anchor] if score @s anchor.num = #current delhome if score @s anchor.id = #current player.id run function commands:player/homes/anchor/reset
tellraw @s[tag=delhome] {"text":"Unrecognized home.","color":"red"}