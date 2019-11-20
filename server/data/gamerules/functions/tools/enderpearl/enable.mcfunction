execute if score @s gamerule.pearls matches 1.. if score $enderpearl gamerules matches 0 run function commands:tools/enderpearl/enable/main
execute if score @s gamerule.pearls matches 1.. if score $enderpearl gamerules matches 1 run function commands:tools/enderpearl/disable/main
scoreboard players enable @s gamerule.pearls