execute if score @s gamerule.boat matches 1.. if score $boat gamerules matches 0 run function gamerules:boat/enable
execute if score @s gamerule.boat matches 1.. if score $boat gamerules matches 1 run function gamerules:boat/disable
scoreboard players enable @s gamerule.boat