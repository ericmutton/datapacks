tag @s add sethome
execute as @e[type=minecraft:area_effect_cloud,tag=homes.anchor] if score @s anchor.num = #current sethome if score @s anchor.id = #current player.id run function commands:player/homes/anchor/reset
function commands:player/homes/anchor/main