scoreboard players reset @s gamerule.boat
scoreboard players set $boat gamerules 0
advancement revoke @s only gamerules:loot/boat
tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},"Disabled boat handouts"]