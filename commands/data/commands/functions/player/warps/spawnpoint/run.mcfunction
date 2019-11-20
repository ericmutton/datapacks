execute unless data entity @s SpawnX unless data entity @s SpawnY unless data entity @s SpawnZ run tag @s remove spawnpoint
execute store result score #current anchor.PosX run data get entity @s[tag=spawnpoint] SpawnX
execute store result score #current anchor.PosY run data get entity @s[tag=spawnpoint] SpawnY
execute store result score #current anchor.PosZ run data get entity @s[tag=spawnpoint] SpawnZ
execute if entity @s[tag=spawnpoint] run summon area_effect_cloud ~ ~ ~ {Tags:["warp.anchor"]}
execute if entity @s[tag=spawnpoint] as @e[type=minecraft:area_effect_cloud,tag=warp.anchor,limit=1] run function commands:player/warps/spawnpoint/store
# execute at @e[type=minecraft:area_effect_cloud,tag=warp.anchor,limit=1] run teleport @s @e[type=minecraft:area_effect_cloud,tag=warp.anchor,limit=1]
execute at @s align xyz run teleport ~0.5 ~ ~0.5
execute at @s run playsound minecraft:entity.enderman.teleport master @s[tag=spawnpoint] ~ ~ ~
tellraw @s[tag=spawnpoint] {"text":"You have returned to your spawnpoint.","color":"gray"}
# tellraw @s[tag=!spawnpoint] {"text":"You don't have a spawnpoint!","color":"red"}
execute unless entity @s[tag=spawnpoint] run function commands:player/warps/spawn