execute if score @s gamerule.sleep matches 1.. if score $sleep gamerules matches 0 run function gamerules:sleep/enable
execute if score @s gamerule.sleep matches 1.. if score $sleep gamerules matches 1 run function gamerules:sleep/disable
scoreboard players enable @s gamerule.sleep