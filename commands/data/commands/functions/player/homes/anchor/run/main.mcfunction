scoreboard players operation #current int = #current home
function server:ordinals
execute if score @a[tag=warp,tag=home,limit=1] warp.delay >= #current warp.delay if score @s dimension = #current dimension if score @s anchor.num = #current home run function commands:player/homes/anchor/run/success
execute unless score @s dimension = #current dimension if score @s anchor.num = #current home run function commands:player/homes/anchor/run/fail