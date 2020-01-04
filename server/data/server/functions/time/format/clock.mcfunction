scoreboard players operation #minute query.time = $daytime query.time
scoreboard players operation #minute query.time %= #1000 int
scoreboard players operation #minute query.time *= #6 int
scoreboard players operation #minute query.time /= #100 int
scoreboard players operation #hour query.time = $daytime query.time
scoreboard players operation #hour query.time /= #1000 int
scoreboard players add #hour query.time 6


execute if score @s time.format matches 24 if score #hour query.time matches 24.. run scoreboard players operation #hour query.time -= #24 int
execute if score @s time.format matches 12 run function server:time/format/english
execute if score #minute query.time matches ..9 run data modify storage minecraft:server time.minute set value "0"
execute if score #hour query.time matches ..9 run data modify storage minecraft:server time.hour set value "0"