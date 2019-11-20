scoreboard players enable @s fly

execute if score @s[tag=!inFlight] fly matches 1.. run function commands:staff/fly/enable/main
execute if score @s[tag=inFlight] fly matches 1.. run function commands:staff/fly/disable/main

execute if entity @s[tag=inFlight] run function commands:staff/fly/enable/run