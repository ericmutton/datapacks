execute if score #hour server.time matches ..12 run data modify storage server time.meridiem set value " AM"
execute if score #hour server.time matches 13.. run data modify storage server time.meridiem set value " PM"
execute unless score #hour server.time matches ..12 run scoreboard players operation #hour server.time -= #12 int