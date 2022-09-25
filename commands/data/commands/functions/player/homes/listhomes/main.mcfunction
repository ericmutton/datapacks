tag @s add listhomes
tellraw @s {"text":"------------------------------------","color":"dark_gray","bold":true}

execute if score @s homes.max matches 2.. run tellraw @s [{"text":"You can have up to ","color":"yellow"},{"score":{"name":"@s","objective":"homes.max"},"color":"gold"},{"text":" homes."}]
execute if score @s homes.max matches 1 run tellraw @s [{"text":"You can have up to ","color":"yellow"},{"score":{"name":"@s","objective":"homes.max"},"color":"gold"},{"text":" home."}]

tellraw @s [{"text":"","color":"dark_gray"},{"text":"[","bold":true},{"text":"#","color":"yellow"},{"text":"] ","bold":true},{"text":"||","bold":true},{"text":"  dimension ","color":"yellow"},{"text":"||","bold":true},{"text":" coordinates ","color":"yellow"},{"text":"||","bold":true}]

execute as @e[type=area_effect_cloud,tag=homes.anchor] if score @s anchor.id = #current player.id run function commands:player/homes/listhomes/tellraw

tellraw @s {"text":"------------------------------------","color":"dark_gray","bold":true}
tag @s remove listhomes