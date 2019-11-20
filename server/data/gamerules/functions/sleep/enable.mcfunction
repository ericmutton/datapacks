scoreboard players reset @s gamerule.sleep
scoreboard players set $sleep gamerules 1
advancement grant @s only gamerules:player/sleep
tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},"Enabled sleepless nights"]