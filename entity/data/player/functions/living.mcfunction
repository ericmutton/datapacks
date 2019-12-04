#properties
execute if score @s player.hasLeft matches 1.. run function player:join/welcome
scoreboard players set @s player.hasLeft 0
scoreboard players set @s player.hasDied 0
#experience
execute store result score @s player.levels run experience query @s levels
execute store result score @s player.points run experience query @s points
#warps
execute unless score @s homes.max matches 0.. run scoreboard players set @s homes.max 0
execute unless score @s homes.set matches 0.. run scoreboard players set @s homes.set 0