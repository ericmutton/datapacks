execute unless score @s time.format matches 0.. run trigger time.format set 12
execute if score @s server.time matches 1.. run function commands:time/run

scoreboard players enable @s time.format
scoreboard players enable @s server.time