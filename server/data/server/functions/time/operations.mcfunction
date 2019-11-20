data remove storage server time
scoreboard players operation #day server.time = $day server.time
scoreboard players add #day server.time 1
scoreboard players operation #current int = #day server.time
function server:ordinals

scoreboard players operation $epoch.day server.time = $gametime server.time
scoreboard players operation $epoch.day server.time /= #24000 int
execute if score $epoch.day server.time matches 30.. run scoreboard players add $epoch.month server.time 1
execute if score $epoch.month server.time matches 12.. run scoreboard players add $epoch.year server.time 1

function server:time/format/clock
function server:time/format/units/day
function server:time/format/units/month
function server:time/format/units/year
function server:time/format/moon