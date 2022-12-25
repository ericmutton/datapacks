# DEPRECIATE #
# Enables server interactions through worldly game mechanics 
execute store result score #forceloaded gamerules run forceload query 64 64
execute unless score #forceloaded gamerules matches 0 run forceload add 64 64

execute unless entity @e[tag=server.anchor,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["server.anchor"],Duration:-1,WaitTime:-2147483648,Age:-2147483648}

setblock ~ ~ ~ minecraft:oak_wall_sign[facing=north]
# setblock ~1 ~ ~1 minecraft:lectern
# fill ~ 1 ~ ~1 1 ~1 minecraft:bedrock