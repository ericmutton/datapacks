execute unless score @s player.hunger matches 0.. run scoreboard players set @s player.hunger 0
execute unless score @s dummy.hunger matches 0.. run scoreboard players set @s player.dummy 0
execute unless score @s player.hunger = @s dummy.hunger run playsound minecraft:entity.generic.eat master @s
scoreboard players operation @s dummy.hunger = @s player.hunger