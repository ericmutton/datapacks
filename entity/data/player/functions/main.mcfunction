tag @s remove player
tag @s remove staff
execute unless entity @s[team=!player,team=!builder,team=!moderator] run tag @s add player
execute unless entity @s[team=!founder,team=!developer,team=!administrator] run tag @s add staff
execute unless entity @s[tag=!player,tag=!staff] run function commands:main
execute if score #player team.exists matches 1 if entity @s[team=] run function player:actions/join/first
function #player:tick



#function player:actions/mail/main