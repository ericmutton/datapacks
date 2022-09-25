scoreboard players reset @s gamerule.enders
scoreboard players set $enderman gamerules 0
datapack enable "file/toggle.enderman"
advancement grant @s only gamerules:enderman
tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},"Disabled enderman griefing"]