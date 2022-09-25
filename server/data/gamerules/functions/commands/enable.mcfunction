scoreboard players reset @s gamerule.cmds
scoreboard players set $commands gamerules 1
datapack enable "file/commands"
advancement grant @s only gamerules:commands
tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},"Enabled commands"]