tag @s remove coordinates
scoreboard players reset @s query.coords
tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},"Disabled coordinate display"]