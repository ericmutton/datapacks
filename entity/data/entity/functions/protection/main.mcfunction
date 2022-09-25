#keep entities
execute as @e[tag=!protected] run function entity:protection/entities 
tag @s add protected

#region proximity
tag @s remove inRegion

#public
execute in the_end run function entity:protection/end/main
execute in overworld run function entity:protection/overworld/main
execute in the_nether run function entity:protection/nether/main

gamemode adventure @s[tag=inRegion,gamemode=survival,team=!founder]
gamemode survival @s[tag=!inRegion,gamemode=adventure,team=!founder]