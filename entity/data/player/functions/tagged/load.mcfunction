## TEAMS ##
team add founder
team add developer
team add administrator
team add moderator
team add builder
team add donor
team add player
team modify founder color gray
team modify builder color yellow
team modify administrator color gold
team modify developer color dark_purple
team modify moderator color green
team modify donor color aqua

## OBJECTIVES ##
scoreboard objectives add team.exists dummy
#PLAYER#
#join
scoreboard objectives add player.count dummy "Player Count"
scoreboard objectives add player.id dummy "Player IDs"
scoreboard objectives add player.hasLeft minecraft.custom:minecraft.leave_game "Leave status"
scoreboard objectives add player.hasDied deathCount "Death Status"
#position
scoreboard objectives add dimension dummy "Dimension"
scoreboard objectives add player.PosX dummy "X Position"
scoreboard objectives add player.PosY dummy "Y Position"
scoreboard objectives add player.PosZ dummy "Z Position"
#homes
scoreboard objectives add homes.dummy dummy
scoreboard objectives add anchor.PosX dummy "X Position"
scoreboard objectives add anchor.PosY dummy "Y Position"
scoreboard objectives add anchor.PosZ dummy "Z Position"
scoreboard objectives add rotation.x dummy "X Rotation"
scoreboard objectives add rotation.y dummy "Y Rotation"
scoreboard objectives add anchor.num dummy "Home Number"
scoreboard objectives add anchor.id dummy "Home ID"
scoreboard objectives add homes.set dummy "Homes Set"
#statistics
scoreboard objectives add player.breath air "Player Breath"
scoreboard objectives add dummy.hunger dummy
scoreboard objectives add player.hunger food "Player Saturation"
scoreboard objectives add player.health health "Player Health"
scoreboard objectives add player.deaths deathCount "Player Deaths"
scoreboard objectives add player.pve totalKillCount "Entities Killed"
scoreboard objectives add player.pvp playerKillCount "Players Killed"
#experience
scoreboard objectives add player.levels dummy "Experience Levels"
scoreboard objectives add player.points dummy "Experience Points"
#combat
scoreboard objectives add combat.delay dummy "Combat Duration"
scoreboard objectives add combat.defend minecraft.custom:minecraft.damage_taken "Damage Taken"
scoreboard objectives add combat.offend minecraft.custom:minecraft.damage_dealt "Damage Dealt"
#motion
scoreboard objectives add player.water minecraft.custom:minecraft.walk_under_water_one_cm "Distance Walking Underwater"
scoreboard objectives add player.walk minecraft.custom:minecraft.walk_one_cm "Distance Walking"
scoreboard objectives add player.sprint minecraft.custom:minecraft.sprint_one_cm "Distance Sprinting"
scoreboard objectives add player.elytra minecraft.custom:minecraft.aviate_one_cm "Distance Using Elytra"
scoreboard objectives add player.climb minecraft.custom:minecraft.climb_one_cm "Distance Climbing"
scoreboard objectives add player.fall minecraft.custom:minecraft.fall_one_cm "Distance Falling"
scoreboard objectives add player.swim minecraft.custom:minecraft.swim_one_cm "Distance Swimming"
scoreboard objectives add player.boat minecraft.custom:minecraft.boat_one_cm "Distance Boating"
scoreboard objectives add player.fly minecraft.custom:minecraft.fly_one_cm "Distance Flying"
scoreboard objectives add player.pig minecraft.custom:minecraft.pig_one_cm "Distance Pig Riding"
scoreboard objectives add player.horse minecraft.custom:minecraft.horse_one_cm "Distance Horse Riding"
scoreboard objectives add player.sneak minecraft.custom:minecraft.sneak_time "Time Sneaking"
scoreboard objectives add player.sleep minecraft.custom:minecraft.sleep_in_bed "Times Slept"
scoreboard objectives add player.fish minecraft.used:minecraft.fishing_rod "Times Fished"
scoreboard objectives add player.jump minecraft.custom:minecraft.jump "Times Jumped"
scoreboard objectives add player.drop minecraft.custom:minecraft.drop "Items Dropped"
#afk
scoreboard objectives add afk.timeout dummy "AFK Timeout"
#time
scoreboard objectives add time.since_rest minecraft.custom:minecraft.time_since_rest "Time Awake"
#vote
scoreboard objectives add vote.tokens dummy "Vote Tokens"
#mail
scoreboard objectives add mail.unread dummy "Unread Mail"

## DEFAULTS ##

#warps
execute unless score #default warp.delay matches 0.. run scoreboard players set #default warp.delay 5
execute unless score #default homes.max matches 0.. run scoreboard players set #default homes.max 0
execute unless score #default homes.set matches 0.. run scoreboard players set #default homes.set 0