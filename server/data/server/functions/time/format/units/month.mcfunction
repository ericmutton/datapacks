execute unless score #epoch.month server.time matches 1.. run scoreboard players reset #epoch.month
execute if score #epoch.month server.time matches 1 run data modify storage server time.epoch.month set value " month "
execute if score #epoch.month server.time matches 2.. run data modify storage server time.epoch.month set value " months "