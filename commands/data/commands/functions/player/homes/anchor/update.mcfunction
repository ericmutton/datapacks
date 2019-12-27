scoreboard players operation @s anchor.id = #current player.id
scoreboard players operation @s anchor.num = #current sethome
scoreboard players operation @s dimension = #current dimension
execute store result entity @s Pos[0] double 1 run scoreboard players get #current position.x
execute store result entity @s Pos[1] double 1 run scoreboard players get #current position.y
execute store result entity @s Pos[2] double 1 run scoreboard players get #current position.z
execute store result entity @s Rotation[1] float 1 run scoreboard players get #current rotation.x
execute store result entity @s Rotation[0] float 1 run scoreboard players get #current rotation.y
execute at @s align xyz run teleport ~0.5 ~ ~0.5

execute if data entity @s {Dimension:1} run data merge entity @s {CustomName:'"end"'}
execute if data entity @s {Dimension:0} run data merge entity @s {CustomName:'"overworld"'}
execute if data entity @s {Dimension:-1} run data merge entity @s {CustomName:'"nether"'}

scoreboard players operation #current ordinal = #current sethome
function server:ordinals
tellraw @a[tag=sethome,scores={homes.max=2..},limit=1] [{"text":"You have set your ","color":"gray"},{"score":{"name":"#current","objective":"sethome"}},{"nbt":"text.ordinal","storage":"server"}," ",{"selector":"@s"}," home at (",{"score":{"name":"#current","objective":"position.x"},"color":"gold"},", ",{"score":{"name":"#current","objective":"position.y"},"color":"gold"},", ",{"score":{"name":"#current","objective":"position.z"},"color":"gold"},")."]
tellraw @a[tag=sethome,scores={homes.max=1},limit=1] [{"text":"You have set your ","color":"gray"},{"selector":"@s"}," home at (",{"score":{"name":"#current","objective":"position.x"},"color":"gold"},", ",{"score":{"name":"#current","objective":"position.y"},"color":"gold"},", ",{"score":{"name":"#current","objective":"position.z"},"color":"gold"},")."]
tag @s add homes.anchor.set