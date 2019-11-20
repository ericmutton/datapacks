execute if score @s gamerule.actions matches 1.. if score $actions gamerules matches 0 run function gamerules:actions/enable/main
execute if score @s gamerule.actions matches 1.. if score $actions gamerules matches 1 run function gamerules:actions/disable/main
scoreboard players enable @s gamerule.actions