execute if score #hour query.time matches ..12 run data modify storage minecraft:server time.meridiem set value " AM"
execute if score #hour query.time matches 13.. run data modify storage minecraft:server time.meridiem set value " PM"
execute unless score #hour query.time matches ..12 run scoreboard players operation #hour query.time -= #12 int