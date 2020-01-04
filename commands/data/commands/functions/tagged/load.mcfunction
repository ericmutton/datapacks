## TRIGGERS ##

#ADMINISTRATIVE#
scoreboard objectives add admin.heal trigger "Heal"
scoreboard objectives add admin.vanish trigger "Vanish"
scoreboard objectives add query.coords trigger "Coordinates"
scoreboard objectives add admin.clear trigger "Clear Chat"
#configuration
scoreboard objectives add homes.max trigger "Maximum Homes"
scoreboard objectives add warp.delay trigger "Warp Delay"
#NORMATIVE#
scoreboard objectives add player.sound trigger "Custom Sounds"
scoreboard objectives add afk trigger "Away From Keyboard"
scoreboard objectives add vote trigger "Player Votes"
#warps
scoreboard objectives add spawn trigger "Warp Spawn"
scoreboard objectives add server.spawn trigger "Set Spawn"
scoreboard objectives add spawnpoint trigger "Warp Spawnpoint"
#homes
scoreboard objectives add home trigger "Warp Home"
scoreboard objectives add sethome trigger "Set Home"
scoreboard objectives add delhome trigger "Delete Home"
scoreboard objectives add listhomes trigger "List Homes"
#mail
scoreboard objectives add mail trigger "Letter Query"

## DEFAULTS ##
scoreboard players set #afk.timeout int 6000