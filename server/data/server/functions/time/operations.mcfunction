data remove storage minecraft:server time
scoreboard players operation #day query.time = $day query.time
scoreboard players add #day query.time 1
scoreboard players operation #current int = #day query.time
function server:ordinals

scoreboard players operation $epoch.day query.time = $gametime query.time
scoreboard players operation $epoch.day query.time /= #24000 int
execute if score $epoch.day query.time matches 30.. run scoreboard players add $epoch.month query.time 1
execute if score $epoch.month query.time matches 12.. run scoreboard players add $epoch.year query.time 1

function server:time/format/clock
function server:time/format/units/day
function server:time/format/units/month
function server:time/format/units/year
function server:time/format/moon