execute if entity @s[team=] run function player:actions/join/first
tellraw @s [{"text":"Welcome back, ","color":"yellow"},{"selector":"@s","color":"gold"},"!"]
tag @s remove afk