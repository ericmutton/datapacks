execute if entity @a[tag=delhome,scores={homes.max=2..},limit=1] run scoreboard players operation #current int = #current delhome
execute if entity @a[tag=delhome,scores={homes.max=2..},limit=1] run function server:ordinals
tellraw @a[tag=delhome,scores={homes.max=2..},limit=1] [{"text":"You have reset your ","color":"gray"},{"score":{"name":"#current","objective":"delhome"}},{"nbt":"text.ordinal","storage":"minecraft:server"}," ",{"selector":"@s"}," home."]
tellraw @a[tag=delhome,scores={homes.max=1},limit=1] [{"text":"You have reset your ","color":"gray"},{"selector":"@s"}," home."]
execute as @a unless entity @s[tag=!sethome,tag=!delhome] run scoreboard players remove @s homes.set 1
tag @a[tag=delhome,limit=1] remove delhome
kill @s