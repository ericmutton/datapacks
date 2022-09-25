execute if score @s gamerule.heads matches 1.. run scoreboard players set #message.reload gamerules 0
execute if score @s gamerule.heads matches 1.. if score $heads gamerules matches 0 run function gamerules:player/heads/enable
execute if score @s gamerule.heads matches 1.. if score $heads gamerules matches 1 run function gamerules:player/heads/disable
scoreboard players enable @s gamerule.heads