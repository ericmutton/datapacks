execute store result entity @s Pos[0] double 1 run scoreboard players get #current anchor.PosX
execute store result entity @s Pos[1] double 1 run scoreboard players get #current anchor.PosY
execute store result entity @s Pos[2] double 1 run scoreboard players get #current anchor.PosZ
execute at @s run teleport @a[tag=spawnpoint] @s