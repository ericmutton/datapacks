## TEAMS ##
team remove founder
team remove developer
team remove administrator
team remove moderator
team remove builder
team remove donor
team remove player

## OBJECTIVES ##

#CONSTANTS#
scoreboard players reset #-1 int
scoreboard players reset #1 int
scoreboard players reset #2 int
scoreboard players reset #6 int
scoreboard players reset #8 int
scoreboard players reset #10 int
scoreboard players reset #12 int
scoreboard players reset #20 int
scoreboard players reset #24 int
scoreboard players reset #100 int
scoreboard players reset #1000 int
scoreboard players reset #10000 int
scoreboard players reset #24000 int
scoreboard players reset #100000 int
scoreboard objectives remove int

#PLAYER#
#join
scoreboard objectives remove player.count
scoreboard objectives remove player.id
scoreboard objectives remove player.hasLeft
scoreboard objectives remove player.isDead
#position
scoreboard objectives remove dimension
scoreboard objectives remove player.PosX
scoreboard objectives remove player.PosY
scoreboard objectives remove player.PosZ
#homes
scoreboard objectives remove homes.dummy
scoreboard objectives remove anchor.PosX
scoreboard objectives remove anchor.PosY
scoreboard objectives remove anchor.PosZ
scoreboard objectives remove anchor.RotX
scoreboard objectives remove anchor.RotY
scoreboard objectives remove anchor.num
scoreboard objectives remove anchor.id
scoreboard objectives remove homes.set
#statistics
scoreboard objectives remove player.breath
scoreboard objectives remove dummy.hunger
scoreboard objectives remove player.hunger
scoreboard objectives remove player.health
scoreboard objectives remove player.deaths
scoreboard objectives remove player.pve
scoreboard objectives remove player.pvp
#experience
scoreboard objectives remove player.levels
scoreboard objectives remove player.points
#combat
scoreboard objectives remove combat.delay
scoreboard objectives remove combat.defend
scoreboard objectives remove combat.offend
#motion
scoreboard objectives remove player.water
scoreboard objectives remove player.walk
scoreboard objectives remove player.sprint
scoreboard objectives remove player.elytra
scoreboard objectives remove player.climb
scoreboard objectives remove player.fall
scoreboard objectives remove player.swim
scoreboard objectives remove player.boat
scoreboard objectives remove player.fly
scoreboard objectives remove player.pig
scoreboard objectives remove player.horse
scoreboard objectives remove player.sneak
scoreboard objectives remove player.sleep
scoreboard objectives remove player.fish
scoreboard objectives remove player.jump
scoreboard objectives remove player.drop
#afk
scoreboard objectives remove afk.timeout
#time
scoreboard objectives remove time.since_rest
#vote
scoreboard objectives remove vote.tokens
#mail
scoreboard objectives remove mail.unread

## TRIGGERS ##
scoreboard objectives remove commands.run
scoreboard objectives remove commands.delay
#ADMINISTRATIVE#
scoreboard objectives remove server.tps
scoreboard objectives remove server.time
scoreboard objectives remove server.weather
scoreboard objectives remove server.discord
scoreboard objectives remove admin.heal
scoreboard objectives remove admin.vanish
scoreboard objectives remove admin.coords
scoreboard objectives remove admin.clear
#configuration
scoreboard objectives remove homes.max
scoreboard objectives remove warp.delay
scoreboard objectives remove time.format
#gamerules
scoreboard objectives remove gamerule.void
scoreboard objectives remove gamerule.sleep
scoreboard objectives remove gamerule.creeper
scoreboard objectives remove gamerule.enders
scoreboard objectives remove gamerule.pearls
scoreboard objectives remove gamerule.rockets
scoreboard objectives remove gamerule.actions
scoreboard objectives remove gamerule.heads
scoreboard objectives remove gamerule.boat
#NORMATIVE#
scoreboard objectives remove player.sound
scoreboard objectives remove afk
scoreboard objectives remove info
scoreboard objectives remove help
scoreboard objectives remove vote
#warps
scoreboard objectives remove spawn
scoreboard objectives remove spawnpoint
#homes
scoreboard objectives remove home
scoreboard objectives remove sethome
scoreboard objectives remove delhome
scoreboard objectives remove listhomes
#mail
scoreboard objectives remove mail

## DEFAULTS ##

#world
execute positioned 64 0 64 if blocks ~ 1 ~ ~ 1 ~1 ~ 0 ~ all run function server:tagged/world
#gamerules
scoreboard players reset $boat gamerules
scoreboard players reset $void gamerules
scoreboard players reset $sleep gamerules
scoreboard players reset $heads gamerules
scoreboard players reset $actions gamerules
scoreboard players reset $creeper gamerules
scoreboard players reset $enderman gamerules
scoreboard players reset $firework gamerules
scoreboard players reset $enderpearl gamerules
scoreboard objectives remove gamerules
#warps
scoreboard players reset #default warp.delay
scoreboard players reset #default homes.max
scoreboard players reset #default homes.set

## LOAD ##
scoreboard objectives remove team.exists
execute as @a[tag=staff] if score #message.reload gamerules matches 1 run tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},"Reset server datapack"]
scoreboard players reset #message.reload gamerules