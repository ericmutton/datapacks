setblock ^ ^-1 ^ minecraft:air
teleport @s ^ ^-1 ^
execute positioned as @s rotated as @s if block ^ ^-1 ^ #minecraft:logs run function entity:ray/down