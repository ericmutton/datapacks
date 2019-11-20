execute store result score $moonphase server.time run time query day
scoreboard players operation $moonphase server.time %= #8 int
execute if score $moonphase server.time matches 7 run data modify storage server status.moonphase set value "waxing gibbous"
execute if score $moonphase server.time matches 6 run data modify storage server status.moonphase set value "first quarter"
execute if score $moonphase server.time matches 5 run data modify storage server status.moonphase set value "waxing crescent"
execute if score $moonphase server.time matches 4 run data modify storage server status.moonphase set value "new moon"
execute if score $moonphase server.time matches 3 run data modify storage server status.moonphase set value "waning crescent"
execute if score $moonphase server.time matches 2 run data modify storage server status.moonphase set value "last quarter"
execute if score $moonphase server.time matches 1 run data modify storage server status.moonphase set value "waning gibbous"
execute if score $moonphase server.time matches 0 run data modify storage server status.moonphase set value "full moon"