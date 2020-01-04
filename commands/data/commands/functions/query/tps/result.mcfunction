scoreboard players operation oldBorder int -= currentBorder int

execute if score @s query.tps matches 1 run function commands:query/tps/places/default
execute if score @s query.tps matches 2000 run function commands:query/tps/places/hundredths

#execute store result score #tpsWhole int run scoreboard players operation #tpsDecimal int = query.tps int

scoreboard players operation #tpsWhole int = #tps int
scoreboard players operation #tpsWhole int /= #100 int
scoreboard players operation #tpsDecimal int = #tps int
scoreboard players operation #tpsDecimal int %= #100 int

execute if score @s query.tps matches 1 run tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},{"score":{"name":"#tps","objective":"int"}}," ticks per second"]
execute if score @s query.tps matches 2000 run tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},{"score":{"name":"#tpsWhole","objective":"int"}},{"text":"."},{"score":{"name":"#tpsDecimal","objective":"int"}}," ticks per second"]
execute if score @s query.tps matches 2001.. run tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},"Invalid syntax"]

scoreboard players reset @s query.tps
worldborder set 60000000
tag @s remove tps