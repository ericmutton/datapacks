execute if score @s gamerule.enders matches 1.. run scoreboard players set #message.reload gamerules 0
execute if score @s gamerule.enders matches 1.. if score $enderman gamerules matches 0 run function gamerules:mobs/enderman/enable
execute if score @s gamerule.enders matches 1.. if score $enderman gamerules matches 1 run function gamerules:mobs/enderman/disable
scoreboard players enable @s gamerule.enders