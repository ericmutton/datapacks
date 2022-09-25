scoreboard players reset @s gamerule.enders
scoreboard players set $enderman gamerules 1
datapack disable "file/toggle.enderman"
advancement revoke @s only gamerules:enderman
tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},"Enabled enderman griefing"]