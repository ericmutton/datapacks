execute store result entity @s Pos[0] double 1 run scoreboard players get #current position.x
execute store result entity @s Pos[1] double 1 run scoreboard players get #current position.y
execute store result entity @s Pos[2] double 1 run scoreboard players get #current position.z
execute at @s run teleport @a[tag=spawnpoint] @s