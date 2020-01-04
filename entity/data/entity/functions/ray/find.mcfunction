execute if block ~ ~ ~ #minecraft:logs run say found log
scoreboard players add #length int 1
execute if score #length int matches ..40 unless block ~ ~ ~ #minecraft:logs positioned ^ ^ ^0.1 run function entity:ray/find