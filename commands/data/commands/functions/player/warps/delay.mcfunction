tellraw @s[tag=inMotion] {"text":"You cannot teleport while in motion.","color":"gray"}

scoreboard players operation #warning warp.delay = #current warp.delay
scoreboard players operation #warning warp.delay -= #20 int

scoreboard players operation #seconds warp.delay = #current warp.delay
scoreboard players operation #seconds warp.delay /= #20 int
data remove storage minecraft:server warp.plurality
execute if entity @s[tag=!warp,tag=!inMotion] if score #seconds warp.delay matches 2.. run data modify storage minecraft:server warp.plurality set value "s"
tellraw @s[tag=!warp,tag=!inMotion] [{"text":"Teleportation will commence in ","color":"yellow"},{"score":{"name":"#seconds","objective":"warp.delay"},"color":"gold","bold":true},{"text":" second","color":"gold","bold":true},{"nbt":"warp.plurality","storage":"minecraft:server","color":"gold","bold":true},". Don't move."]
execute if score @s warp.delay = #warning warp.delay run tellraw @s[tag=warp,tag=!inMotion] {"text":"Teleporting...","color":"yellow"}