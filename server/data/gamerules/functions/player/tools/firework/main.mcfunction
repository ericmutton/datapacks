execute if score @s gamerule.rockets matches 1.. if score $fireworks gamerules matches 0 run function commands:player/tools/firework/damage/disable
execute if score @s gamerule.rockets matches 1.. if score $fireworks gamerules matches 1 run function commands:player/tools/firework/damage/enable
scoreboard players enable @s gamerule.rockets