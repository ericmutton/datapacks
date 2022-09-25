tag @s remove isDead
tag @s[scores={isDead=1..}] add isDead
tag @s remove inVoid
execute positioned ~ -65 ~ if entity @s[tag=spectator,dy=-255] run tag @s add inVoid
tag @s remove spectator
execute unless entity @s[gamemode=!spectator,gamemode=!creative] run tag @s add spectator