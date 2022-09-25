scoreboard players reset @s gamerule.boat
scoreboard players set $boat gamerules 1
advancement grant @s only gamerules:loot/boat
tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},"Enabled boat handouts"]