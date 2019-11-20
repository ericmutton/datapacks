execute if score @s[tag=!coordinates] admin.coords matches 1.. run function commands:staff/coordinates/enable/main
execute if score @s[tag=coordinates] admin.coords matches 1.. run function commands:staff/coordinates/disable

#execute store success score @s coordinates if score @s admin.coords matches 0

execute if entity @s[tag=coordinates] run function commands:staff/coordinates/enable/run
scoreboard players enable @s admin.coords