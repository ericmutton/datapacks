scoreboard players operation @s anchor.id = #current player.id
scoreboard players operation @s anchor.num = #current sethome
scoreboard players operation @s dimension = #current dimension
scoreboard players operation @s anchor.PosX = #current player.PosX
scoreboard players operation @s anchor.PosY = #current player.PosY
scoreboard players operation @s anchor.PosZ = #current player.PosZ
execute store result entity @s Rotation[1] float 1 run scoreboard players get #current anchor.RotX
execute store result entity @s Rotation[0] float 1 run scoreboard players get #current anchor.RotY

data merge entity @s[scores={dimension=1}] {CustomName:'"end"'}
data merge entity @s[scores={dimension=0}] {CustomName:'"overworld"'}
data merge entity @s[scores={dimension=-1}] {CustomName:'"nether"'}

scoreboard players operation #current ordinal = #current sethome
function server:ordinals
execute in minecraft:overworld run tellraw @a[tag=sethome,scores={homes.max=2..},limit=1] [{"text":"You have set your ","color":"gray"},{"score":{"name":"#current","objective":"sethome"}},{"nbt":"text.ordinal","storage":"server"}," ",{"selector":"@s"}," home at (",{"score":{"name":"#current","objective":"player.PosX"},"color":"gold"},", ",{"score":{"name":"#current","objective":"player.PosY"},"color":"gold"},", ",{"score":{"name":"#current","objective":"player.PosZ"},"color":"gold"},")."]
tellraw @a[tag=sethome,scores={homes.max=1},limit=1] [{"text":"You have set your ","color":"gray"},{"selector":"@s"}," home at (",{"score":{"name":"#current","objective":"player.PosX"},"color":"gold"},", ",{"score":{"name":"#current","objective":"player.PosY"},"color":"gold"},", ",{"score":{"name":"#current","objective":"player.PosZ"},"color":"gold"},")."]
tag @s add homes.anchor.set