execute unless entity @s[tag=tps] run scoreboard players operation oldBorder int = currentBorder int
execute unless entity @s[tag=tps] run summon area_effect_cloud ~ ~ ~ {Tags:["wait"]}
execute unless entity @s[tag=tps] run worldborder add -1000 1
tag @s add tps
execute unless entity @e[tag=wait] run function commands:query/tps/result