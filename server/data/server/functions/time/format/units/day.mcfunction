execute unless score #epoch.day query.time matches 1.. run scoreboard players reset #epoch.day
execute if score #epoch.day query.time matches 1 run data modify storage minecraft:server time.epoch.day set value " day"
execute if score #epoch.day query.time matches 2.. run data modify storage minecraft:server time.epoch.day set value " days"