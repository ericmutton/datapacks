execute if score @s gamerule.actions matches 1.. if score $actions gamerules matches 0 run function gamerules:actions/enable
execute if score @s gamerule.actions matches 1.. if score $actions gamerules matches 1 run function gamerules:actions/disable
scoreboard players enable @s gamerule.actions