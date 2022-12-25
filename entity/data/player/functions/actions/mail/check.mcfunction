scoreboard players operation #recipient int = @s mail
execute if data entity @s SelectedItem.tag.recipient run function player:actions/mail/seal
execute unless data entity @s SelectedItem.tag.recipient run function player:actions/mail/letter
