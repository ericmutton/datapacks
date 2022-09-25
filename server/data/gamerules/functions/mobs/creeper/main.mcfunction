execute if score @s gamerule.creeper matches 1.. if score creeper gamerules matches 0 run function gamerules:mobs/creeper/enable/main
execute if score @s gamerule.creeper matches 1.. if score creeper gamerules matches 1 run function gamerules:mobs/creeper/disable/main
scoreboard players enable @s gamerule.creeper