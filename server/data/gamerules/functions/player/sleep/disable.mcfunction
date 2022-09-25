scoreboard players reset @s gamerule.sleep
scoreboard players set $sleep gamerules 0
advancement revoke @s only gamerules:player/sleep
tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},"Disabled sleepless nights"]