tag @s remove inMotion
execute unless entity @s[scores={player.water=0,player.walk=0,player.sprint=0,player.elytra=0,player.climb=0,player.fall=0,player.swim=0,player.boat=0,player.fly=0,player.pig=0,player.horse=0,player.sneak=0,player.sleep=0,player.fish=0,player.jump=0,player.drop=0}] run tag @s add inMotion
scoreboard players set @s player.water 0
scoreboard players set @s player.walk 0
scoreboard players set @s player.sprint 0
scoreboard players set @s player.elytra 0
scoreboard players set @s player.climb 0
scoreboard players set @s player.fall 0
scoreboard players set @s player.swim 0
scoreboard players set @s player.boat 0
scoreboard players set @s player.fly 0
scoreboard players set @s player.pig 0
scoreboard players set @s player.horse 0
scoreboard players set @s player.sneak 0
scoreboard players set @s player.sleep 0
scoreboard players set @s player.fish 0
scoreboard players set @s player.jump 0
scoreboard players set @s player.drop 0