#commands
tag @s remove sethome
tag @s remove delhome
tag @s remove listhomes

execute unless entity @s[scores={sethome=0,delhome=0,home=0}] run function commands:player/homes/select
execute unless score @s sethome <= @s homes.max unless score @s delhome <= @s homes.max run function commands:player/homes/invalid
execute if score @s sethome matches 1.. run function commands:player/homes/sethome
execute if score @s delhome matches 1.. run function commands:player/homes/delhome
execute if entity @s[scores={listhomes=1..,homes.set=1..}] run function commands:player/homes/listhomes/main
tellraw @s[scores={listhomes=1..,homes.set=0}] {"text":"You do not have any homes.","color":"gray"}

scoreboard players reset @s sethome
scoreboard players reset @s delhome
scoreboard players reset @s listhomes
scoreboard players enable @s[scores={homes.max=1..}] sethome
scoreboard players enable @s[scores={homes.set=1..}] delhome
scoreboard players enable @s[scores={homes.set=1..}] listhomes