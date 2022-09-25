execute if score @s[tag=!coordinates] query.coords matches 1.. run function commands:query/coordinates/enable/main
execute if score @s[tag=coordinates] query.coords matches 1.. run function commands:query/coordinates/disable
execute if entity @s[tag=coordinates] run function commands:query/coordinates/enable/run
scoreboard players enable @s query.coords