execute if score @s[tag=!afk] afk.timeout < #afk.timeout int run scoreboard players add @s afk.timeout 1

execute unless entity @s[tag=!inMotion,tag=!inVoid,tag=!inCombat] run scoreboard players set @s afk.timeout 0
execute if score @s[tag=afk,scores={afk=0}] afk.timeout matches 0 run function commands:player/afk/disable
execute if score @s[tag=afk] afk matches 1.. run function commands:player/afk/disable

execute if entity @s[tag=!inMotion,tag=!inVoid,tag=!inCombat] if score @s[tag=!afk] afk matches 1.. run function commands:player/afk/enable
execute if score @s[tag=!afk,scores={afk=0}] afk.timeout >= #afk.timeout int run function commands:player/afk/enable


execute if entity @s[tag=afk,tag=!spectator] anchored eyes if block ^ ^ ^ minecraft:water unless data entity @s {ActiveEffects:[{Id:13b,ShowParticles:1b}]} run effect give @s minecraft:water_breathing 32768 0 true
scoreboard players enable @s afk