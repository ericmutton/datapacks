scoreboard players reset @s gamerule.actions
scoreboard players set $actions gamerules 0
advancement revoke @s only gamerules:player/actions
tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},"Disabled player actions"]