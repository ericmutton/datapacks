scoreboard players operation #recipient int = @s mail
execute if data entity @s SelectedItem.tag.recipient run function player:mail/seal
execute unless data entity @s SelectedItem.tag.recipient run function player:mail/letter
