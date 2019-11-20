#breath and hunger
execute unless score @s player.hunger matches ..2 run title @s[scores={player.breath=..30}] actionbar {"text":"You're drowning, swim to the surface!","color":"yellow","bold":true}
execute unless score @s player.breath matches ..30 run title @s[scores={player.hunger=..2}] actionbar {"text":"You're starving, find some food to eat!","color":"yellow","bold":true}
title @s[scores={player.breath=..30,player.hunger=..2}] actionbar {"text":"You're drowning and starving, swim to the surface and find some food to eat!","color":"yellow","bold":true}
#sleep
execute if score @s time.since_rest matches 1 unless entity @s[tag=sleeping] run title @s actionbar [{"text":"Rise and shine, ","color":"yellow"},{"selector":"@s","color":"gold"},"!"]