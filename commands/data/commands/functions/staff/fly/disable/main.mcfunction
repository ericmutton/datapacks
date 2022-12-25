tag @s remove inFlight
scoreboard players reset @s fly
effect clear @s[nbt={ActiveEffects:[{Id:25,ShowParticles:0b}]}] minecraft:levitation
tellraw @s {"text":"You are no longer in flight.","color":"gray"}