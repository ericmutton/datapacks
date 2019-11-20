execute if score @s gamerule.cmds matches 1.. run scoreboard players set #message.reload gamerules 0
execute if score @s gamerule.cmds matches 1.. if score $commands gamerules matches 0 run function gamerules:commands/enable
execute if score @s gamerule.cmds matches 1.. if score $commands gamerules matches 1 run function gamerules:commands/disable
scoreboard players enable @s gamerule.cmds