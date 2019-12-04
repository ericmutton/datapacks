## OBJECTIVES ##

#CONSTANTS#
scoreboard objectives add int dummy
scoreboard players set #-1 int -1
scoreboard players set #1 int 1
scoreboard players set #2 int 2
scoreboard players set #6 int 6
scoreboard players set #8 int 8
scoreboard players set #10 int 10
scoreboard players set #12 int 12
scoreboard players set #20 int 20
scoreboard players set #24 int 24
scoreboard players set #100 int 100
scoreboard players set #1000 int 1000
scoreboard players set #10000 int 10000
scoreboard players set #24000 int 24000
scoreboard players set #100000 int 100000

## TRIGGERS ##

scoreboard objectives add commands.run dummy "Commands Ran"
scoreboard objectives add commands.delay dummy "Command Delay"
#ADMINISTRATIVE#
scoreboard objectives add server.tps trigger "Server Ticks Per Second"
scoreboard objectives add server.time trigger "Server Time"
scoreboard objectives add server.weather trigger "Server Weather"
scoreboard objectives add server.discord trigger "Server Discord"
#configuration
scoreboard objectives add time.format trigger "Time Format"
#gamerules
scoreboard objectives add gamerule.cmds trigger "Commands"
scoreboard objectives add gamerule.void trigger "Void Damage"
scoreboard objectives add gamerule.sleep trigger "Sleep Skip"
scoreboard objectives add gamerule.creeper trigger "Creeper Damage"
scoreboard objectives add gamerule.enders trigger "Enderman Griefing"
scoreboard objectives add gamerule.pearls trigger "Enderpearl Usage"
scoreboard objectives add gamerule.rockets trigger "Firework Damage"
scoreboard objectives add gamerule.actions trigger "Player Actions"
scoreboard objectives add gamerule.heads trigger "Player Heads"
scoreboard objectives add gamerule.boat trigger "Boat Handouts"

## DEFAULTS ##

data modify storage server metadata.title set value "Purely Vanilla"
data modify storage server metadata.website set value "https://discord.gg/QJz5JnG"
data modify storage server metadata.founder set value "Cyndre76"

#world
execute positioned 64 0 64 if blocks ~ 1 ~ ~ 1 ~1 ~ 0 ~ all run function server:tagged/world
#gamerules
scoreboard objectives add gamerules dummy "Gamerules"
execute unless score $boat gamerules matches 0.. run scoreboard players set $boat gamerules 0
execute unless score $void gamerules matches 0.. run scoreboard players set $void gamerules 1
execute unless score $sleep gamerules matches 0.. run scoreboard players set $sleep gamerules 0
execute unless score $heads gamerules matches 0.. run scoreboard players set $heads gamerules 0
execute unless score $actions gamerules matches 0.. run scoreboard players set $actions gamerules 0
execute unless score $creeper gamerules matches 0.. run scoreboard players set $creeper gamerules 1
execute unless score $commands gamerules matches 0.. run scoreboard players set $commands gamerules 1
execute unless score $enderman gamerules matches 0.. run scoreboard players set $enderman gamerules 1
execute unless score $firework gamerules matches 0.. run scoreboard players set $firework gamerules 1
execute unless score $enderpearl gamerules matches 0.. run scoreboard players set $enderpearl gamerules 1

## LOAD ##
execute as @a[tag=staff] if score #message.reload gamerules matches 1 run tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},"Reloaded server datapack"]
scoreboard players set #message.reload gamerules 1