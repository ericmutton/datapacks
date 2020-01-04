#website
execute if score @s query.website matches 0 if score website query.time matches 288000.. run function commands:query/website/run
scoreboard players add website query.time 1 