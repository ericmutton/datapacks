scoreboard players reset @s gamerule.cmds
scoreboard players set $commands gamerules 0
datapack disable "file/commands"
advancement revoke @s only gamerules:commands
tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},"Disabled commands"]