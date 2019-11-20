scoreboard players operation #current ordinal = #current delhome
function server:ordinals
execute in minecraft:overworld run tellraw @a[tag=delhome,scores={homes.max=2..},limit=1] [{"text":"You have reset your ","color":"gray"},{"score":{"name":"#current","objective":"delhome"}},{"nbt":"text.ordinal","storage":"server"}," ",{"selector":"@s"}," home."]
tellraw @a[tag=delhome,scores={homes.max=1},limit=1] [{"text":"You have reset your ","color":"gray"},{"selector":"@s"}," home."]
scoreboard players remove @a[tag=sethome,limit=1] homes.set 1
scoreboard players remove @a[tag=delhome,limit=1] homes.set 1
tag @a[tag=delhome,limit=1] remove delhome
kill @s