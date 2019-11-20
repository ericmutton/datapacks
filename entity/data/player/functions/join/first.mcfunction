scoreboard players operation @s player.id = player.id int
scoreboard players add player.id int 1
function player:join/data

tellraw @s [{"text":"Welcome, ","color":"yellow"},{"selector":"@s","color":"gold"},", to ",{"nbt":"metadata.title","storage":"server","color":"gold"},"!\nTo get started, ",{"text":"Click Here!","bold":true,"clickEvent":{"action":"run_command","value":"/team join player @s"},"color":"gold"}]
teleport @s[tag=!staff] 0 64 0 180 0
spawnpoint @s 0 64 0
give @s minecraft:golden_carrot 16

#DEFAULTS#
execute unless score @s homes.max matches 0.. run scoreboard players set @s homes.max 0
execute unless score @s homes.set matches 0.. run scoreboard players set @s homes.set 0
tag @s add player.sound