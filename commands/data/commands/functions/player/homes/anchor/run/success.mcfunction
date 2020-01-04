teleport @a[tag=home,limit=1] @s
function commands:player/homes/anchor/gateway
tellraw @a[tag=home,scores={homes.max=2..},limit=1] [{"text":"You have returned to your ","color":"gray"},{"score":{"name":"#current","objective":"home"}},{"nbt":"text.ordinal","storage":"minecraft:server"}," ",{"selector":"@s"}," home."]
tellraw @a[tag=home,scores={homes.max=1},limit=1] [{"text":"You have returned to your ","color":"gray"},{"selector":"@s"}," home."]