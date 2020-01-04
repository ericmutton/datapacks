execute at @s align xyz run teleport ~0.5 ~ ~0.5
function entity:position
#up
execute at @s rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute rotated as @s if block ^ ^1 ^ #minecraft:logs run function entity:ray/follow
function entity:ray/return
#down
execute rotated as @s if block ^ ^-1 ^ #minecraft:logs run function entity:ray/down
function entity:ray/return

#north
execute at @s rotated 180 180 run teleport @s ~ ~ ~ ~ ~
execute rotated as @s if block ^ ^1 ^ #minecraft:logs run function entity:ray/follow
function entity:ray/return
#east
execute at @s rotated 270 ~ run teleport @s ~ ~ ~ ~ ~
execute rotated as @s if block ^ ^1 ^ #minecraft:logs run function entity:ray/follow
function entity:ray/return
#south
execute at @s rotated 0 ~ run teleport @s ~ ~ ~ ~ ~
execute rotated as @s if block ^ ^1 ^ #minecraft:logs run function entity:ray/follow
function entity:ray/return
#west
execute at @s rotated 90 ~ run teleport @s ~ ~ ~ ~ ~
execute rotated as @s if block ^ ^1 ^ #minecraft:logs run function entity:ray/follow
function entity:ray/return

execute rotated as @s if block ~ ~ ~ #minecraft:logs run setblock ~ ~ ~ minecraft:air