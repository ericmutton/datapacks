scoreboard players set #recipient int -1
execute if score $players int >= @s mail run function player:mail/check
execute unless score #recipient int = @s mail run tellraw @s {"text":"Invalid contact.","color":"gray"}