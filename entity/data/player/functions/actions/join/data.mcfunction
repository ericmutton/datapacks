loot spawn ~ -1 ~ loot player:head
data modify storage minecraft:players list append value []
execute positioned ~ -1 ~ run data modify storage minecraft:players list[-1] append from entity @e[type=minecraft:item,distance=..1,limit=1] Item.tag.SkullOwner.Name
execute positioned ~ -1 ~ run data modify storage minecraft:players list[-1] append from entity @e[type=minecraft:item,distance=..1,limit=1] Item.tag.SkullOwner.Id
execute store result score $players int run data get storage minecraft:players list