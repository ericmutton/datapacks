execute unless score #epoch.year server.time matches 1.. run scoreboard players reset #epoch.year
execute if score #epoch.year server.time matches 1 run data modify storage server time.epoch.year set value " year "
execute if score #epoch.year server.time matches 2.. run data modify storage server time.epoch.year set value " years "