execute if score @s gamerule.void matches 1.. if score $void gamerules matches 0 run function gamerules:void/enable
execute if score @s gamerule.void matches 1.. if score $void gamerules matches 1 run function gamerules:void/disable
scoreboard players enable @s gamerule.void