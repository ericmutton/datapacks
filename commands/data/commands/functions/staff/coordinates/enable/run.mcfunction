function entity:position
execute if entity @s[y_rotation=337.6..22.4] run data modify storage player direction set value "[S]"
execute if entity @s[y_rotation=292.6..337.5] run data modify storage player direction set value "[SE]"
execute if entity @s[y_rotation=247.6..292.5] run data modify storage player direction set value "[E]"
execute if entity @s[y_rotation=202.6..247.5] run data modify storage player direction set value "[NE]"
execute if entity @s[y_rotation=157.5..202.5] run data modify storage player direction set value "[N]"
execute if entity @s[y_rotation=112.5..157.4] run data modify storage player direction set value "[NW]"
execute if entity @s[y_rotation=67.5..112.5] run data modify storage player direction set value "[W]"
execute if entity @s[y_rotation=22.5..67.5] run data modify storage player direction set value "[SW]"
title @s actionbar [{"text":"","color":"gray"},{"text":"X: ","bold":true},{"score":{"name":"#current","objective":"player.PosX"},"color":"gold"},{"text":" Y: ","bold":true},{"score":{"name":"#current","objective":"player.PosY"},"color":"gold"},{"text":" Z: ","bold":true},{"score":{"name":"#current","objective":"player.PosZ"},"color":"gold"}," ",{"nbt":"direction","storage":"player","bold":true}]