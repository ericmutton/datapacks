execute if score @s[tag=!inVanish] admin.vanish matches 1.. run function commands:staff/vanish/enable
execute if score @s[tag=inVanish] admin.vanish matches 1.. run function commands:staff/vanish/disable
execute if entity @s[tag=inVanish] run function commands:staff/vanish/run
scoreboard players enable @s admin.vanish