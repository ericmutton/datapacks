scoreboard players reset @s sethome
scoreboard players reset @s delhome
execute if score @s homes.max matches 2.. run tellraw @s [{"text":"You cannot have more than ","color":"gray"},{"score":{"name":"@s","objective":"homes.max"}}," homes."]
execute if score @s homes.max matches 1 run tellraw @s [{"text":"You cannot have more than ","color":"gray"},{"score":{"name":"@s","objective":"homes.max"}}," home."]
execute if score @s homes.max matches 0 run tellraw @s {"text":"You cannot have any homes.","color":"gray"}