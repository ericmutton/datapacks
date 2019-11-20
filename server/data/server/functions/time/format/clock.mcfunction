scoreboard players operation #minute server.time = $daytime server.time
scoreboard players operation #minute server.time %= #1000 int
scoreboard players operation #minute server.time *= #6 int
scoreboard players operation #minute server.time /= #100 int
scoreboard players operation #hour server.time = $daytime server.time
scoreboard players operation #hour server.time /= #1000 int
scoreboard players add #hour server.time 6


execute if score @s time.format matches 24 if score #hour server.time matches 24.. run scoreboard players operation #hour server.time -= #24 int
execute if score @s time.format matches 12 run function server:time/format/english
execute if score #minute server.time matches ..9 run data modify storage server time.minute set value "0"
execute if score #hour server.time matches ..9 run data modify storage server time.hour set value "0"