scoreboard players reset @s gamerule.heads
scoreboard players set $heads gamerules 1
datapack enable "file/toggle.heads"
advancement grant @s only gamerules:player/heads
tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},"Enabled player head drops"]