#properties
scoreboard players reset @s player.hasLeft
scoreboard players reset @s player.isDead
#experience
execute store result score @s player.levels run experience query @s levels
execute store result score @s player.points run experience query @s points
#warps
execute unless score @s homes.max matches 0.. run scoreboard players set @s homes.max 0
execute unless score @s homes.set matches 0.. run scoreboard players set @s homes.set 0