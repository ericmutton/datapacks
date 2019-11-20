tag @s remove afk
scoreboard players reset @s afk
tellraw @a [{"text":"","color":"gray"},{"text":"* ","color":"reset"},{"selector":"@s"}," is no longer AFK."]
effect clear @s[nbt={ActiveEffects:[{Id:13b,ShowParticles:0b}]}] minecraft:water_breathing