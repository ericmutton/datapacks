tag @s remove home
tag @s remove spawn
tag @s remove spawnpoint
tag @s[scores={home=1..}] add home
tag @s[scores={spawn=1..}] add spawn
tag @s[scores={spawnpoint=1..}] add spawnpoint
execute unless entity @s[scores={home=0,spawn=0,spawnpoint=0}] run function commands:player/warps/run
scoreboard players enable @s spawn
scoreboard players enable @s spawnpoint
scoreboard players enable @s[scores={homes.set=1..}] home

scoreboard players reset @s[tag=!warp] warp.delay