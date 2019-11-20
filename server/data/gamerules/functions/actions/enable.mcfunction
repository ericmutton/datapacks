scoreboard players reset @s gamerule.actions
scoreboard players set $actions gamerules 1
advancement grant @s only gamerules:player/actions
tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},"Enabled player actions"]