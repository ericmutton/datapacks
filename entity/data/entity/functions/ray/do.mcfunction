execute store result entity @s Rotation[1] float 1 run scoreboard players get #current rotation.x
execute store result entity @s Rotation[0] float 1 run scoreboard players get #current rotation.y
scoreboard players set #length int 0
function entity:ray/find
#function entity:ray/step
kill @s