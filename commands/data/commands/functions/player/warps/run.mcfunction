tellraw @s[tag=!home,tag=spawn,scores={spawn=2..}] {"text":"Already pending teleportation request.","color":"red"}
scoreboard players set @s[tag=spawn,scores={spawn=2..}] spawn 1
tellraw @s[tag=home,tag=spawn] {"text":"Already pending teleportation request.","color":"red"}

execute unless score current warp.delay matches ..0 unless entity @s[tag=inCombat,tag=!home,tag=!spawn] run function commands:player/warps/delay
tellraw @s[tag=inCombat,tag=!inMotion] {"text":"You cannot teleport while in combat.","color":"gray"}
execute if entity @s[tag=!warp,tag=home,tag=!inMotion,tag=!inCombat] run function commands:player/warps/homes/run
tag @s[tag=!warp,tag=!inMotion,tag=!inCombat] add warp
execute unless entity @s[tag=!inMotion,tag=!inCombat] run tag @s[tag=warp] remove warp

execute if score @s[tag=warp,tag=spawn] warp.delay >= #current warp.delay run function commands:player/warps/spawn/run
execute if score @s[tag=warp,tag=home] warp.delay >= #current warp.delay run function commands:player/warps/homes/run
execute if score @s[tag=warp,tag=spawnpoint] warp.delay >= #current warp.delay run function commands:player/warps/spawnpoint/run

execute if score @s[tag=warp] warp.delay >= #current warp.delay at @s run playsound minecraft:entity.enderman.teleport master @s[tag=player.sound] ~ ~ ~
execute if score @s[tag=warp] warp.delay >= #current warp.delay run scoreboard players reset @s afk.timeout
execute if score @s[tag=warp,tag=afk] warp.delay >= #current warp.delay run trigger afk

execute if score @s warp.delay >= #current warp.delay run tag @s[tag=warp] remove warp
scoreboard players add @s[tag=warp] warp.delay 1

scoreboard players reset @s[tag=!warp] spawnpoint
scoreboard players reset @s[tag=!warp] spawn
scoreboard players reset @s[tag=!warp] home