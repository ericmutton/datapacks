execute if score @s explosions matches 1.. if score explosions gamerules matches 0 run function commands:tools/explosions/damage/disable
execute if score @s explosions matches 1.. if score explosions gamerules matches 1 run function commands:tools/explosions/damage/enable
scoreboard players enable @s explosions