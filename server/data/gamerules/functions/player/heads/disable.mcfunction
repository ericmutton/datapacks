scoreboard players reset @s gamerule.heads
scoreboard players set $heads gamerules 0
datapack disable "file/toggle.heads"
advancement revoke @s only gamerules:player/heads
tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},"Disabled player head drops"]