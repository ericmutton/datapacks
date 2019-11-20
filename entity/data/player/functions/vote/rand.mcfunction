#12 sided die
execute unless entity @e[tag=dice] run summon area_effect_cloud ~ ~ ~ {Tags:["dice"]}
execute store result score @e[tag=dice] int run data get entity @e[tag=dice,limit=1] UUIDLeast 0.00000000023283064365386962890625
scoreboard players operation @e[tag=dice,limit=1] int %= #12 int
execute if score @e[tag=dice,limit=1] int matches ..-1 run scoreboard players operation @e[tag=dice,limit=1] int *= #-1 int
scoreboard players add @e[tag=dice,limit=1] int 1
scoreboard players operation @s int = @e[tag=dice,limit=1] int