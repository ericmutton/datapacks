execute store result score #current player.count if entity @a[tag=player]
scoreboard players operation #half player.count = #current player.count
execute unless score #current player.count matches ..2 run scoreboard players operation #half player.count /= #2 int
execute store result score $sleeping player.count if entity @a[nbt={SleepTimer:100s}]
execute if score $sleeping player.count > #half player.count if score @s[nbt={SleepTimer:100s}] player.sleep matches 1.. run tellraw @a [{"text":"","color":"yellow"},{"text":"* ","color":"reset"},{"selector":"@s"}," is now sleeping."," (",{"score":{"name":"$sleeping","objective":"player.count"}},"/",{"score":{"name":"#half","objective":"player.count"}},")"]
execute if score $sleeping player.count > #half player.count run function player:actions/sleep/skip
scoreboard players set @s[nbt={SleepTimer:100s}] player.sleep 0