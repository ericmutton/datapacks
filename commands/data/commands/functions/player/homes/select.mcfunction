function entity:position

scoreboard players operation #current player.id = @s player.id
scoreboard players operation #current sethome = @s sethome
scoreboard players operation #current delhome = @s delhome
scoreboard players operation #current home = @s home

scoreboard players set #current homes.dummy 1
scoreboard players operation #current homes.set = @s homes.set
scoreboard players add #current homes.set 1