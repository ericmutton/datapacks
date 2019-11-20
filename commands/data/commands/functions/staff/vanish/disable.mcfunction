tag @s remove inVanish
scoreboard players reset @s admin.vanish
effect clear @s[nbt={ActiveEffects:[{Id:14b,ShowParticles:0b}]}] minecraft:invisibility
tellraw @s {"text":"You are no longer in vanish.","color":"gray"}