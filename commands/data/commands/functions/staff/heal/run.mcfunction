effect clear @s minecraft:blindness
effect clear @s minecraft:hunger
effect clear @s minecraft:instant_damage
#effect clear @s minecraft:levitation
effect clear @s minecraft:mining_fatigue
effect clear @s minecraft:nausea
effect clear @s minecraft:poison
effect clear @s minecraft:slowness
effect clear @s minecraft:unluck
effect clear @s minecraft:weakness
effect clear @s minecraft:wither

effect clear @s minecraft:saturation
effect clear @s minecraft:instant_health
effect give @s minecraft:saturation 1 20 true
effect give @s minecraft:instant_health 1 4 true

execute anchored eyes if block ^ ^ ^ minecraft:water unless block ^ ^ ^ minecraft:bubble_column if score @s player.breath matches ..300 run setblock ^ ^ ^ minecraft:bubble_column[]
execute anchored eyes if block ^ ^ ^ minecraft:bubble_column[] if score @s player.breath matches 300 run setblock ^ ^ ^ minecraft:water
tag @s[scores={player.breath=300}] add healed

tellraw @s[tag=healed] {"text":"You have been healed.","color":"gray"}
scoreboard players reset @s[tag=healed] admin.heal
tag @s remove healed