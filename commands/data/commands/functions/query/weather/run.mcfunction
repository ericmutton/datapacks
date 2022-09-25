execute if predicate commands:weather/clear run data modify storage minecraft:server status.weather set value "clear"
execute if predicate commands:weather/raining run data modify storage minecraft:server status.weather set value "raining"
execute if predicate commands:weather/thundering run data modify storage minecraft:server status.weather set value "thundering"
execute if predicate commands:weather/thunderstorming run data modify storage minecraft:server status.weather set value "thunderstorming"
tellraw @s [{"text":"The sky is currently ","color":"gray"},{"nbt":"status.weather","storage":"minecraft:server"},"."]