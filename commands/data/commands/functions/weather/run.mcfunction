loot spawn ~ -1 ~ loot commands:weather
execute positioned ~ -1 ~ run data modify storage server status.weather set from entity @e[type=minecraft:item,distance=..1,limit=1] Item.tag.weather
tellraw @s [{"text":"The sky is currently ","color":"gray"},{"nbt":"status.weather","storage":"server"},"."]