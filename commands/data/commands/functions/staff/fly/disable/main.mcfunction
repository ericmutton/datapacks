tag @s remove inFlight
scoreboard players reset @s fly
#effect clear @s[nbt={ActiveEffects:[{Id:14b,ShowParticles:0b}]}] minecraft:invisibility
tellraw @s {"text":"You are no longer in flight.","color":"gray"}