function commands:player/homes/select
execute as @e[type=area_effect_cloud,tag=homes.anchor] if score @s anchor.id = #current player.id run function commands:player/homes/anchor/run/main