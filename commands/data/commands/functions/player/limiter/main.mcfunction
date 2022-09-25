tag @s add executor
tag @s[scores={afk=0,tps=0,heal=0,info=0,discord=0,creeper=0,admin.clear=0,coordinates=0,firework=0,enderpearl=0,trident.effects=0,spawn=0,home=0,sethome=0,delhome=0,listhomes=0,time.moon_phase=0}] remove executor
scoreboard players add @s[tag=executor] commands.run 1

scoreboard players add @s[scores={commands.run=1..}] commands.delay 1

tag @s[scores={commands.delay=..60,commands.run=5..}] add ratelimited
scoreboard players set @s[tag=!ratelimited,scores={commands.delay=60}] commands.run 0
scoreboard players set @s[tag=!ratelimited,scores={commands.delay=60}] commands.delay 0

execute if entity @s[tag=ratelimited] run function player:limiter/enable/main
execute if score @s[tag=ratelimited] commands.delay matches 200 run function player:limiter/disable/main