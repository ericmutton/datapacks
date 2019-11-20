execute unless score #current int matches 11..13 run scoreboard players operation #current int %= #10 int
execute if score #current int matches 1 run data modify storage server text.ordinal set value "st"
execute if score #current int matches 2 run data modify storage server text.ordinal set value "nd"
execute if score #current int matches 3 run data modify storage server text.ordinal set value "rd"
execute if score #current int matches 4.. run data modify storage server text.ordinal set value "th"