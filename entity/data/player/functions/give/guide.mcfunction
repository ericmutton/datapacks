data modify block 64 0 65 Text1 set value '{"nbt":"metadata.founder","storage":"server"}'
data modify entity @s Item.tag.author append from block 64 0 65 Text1
data modify block 64 0 65 Text1 set value '["Welcome to ",{"nbt":"metadata.title","storage":"server","color":"gold"},"!"]'
data modify entity @s Item.tag.display.Lore prepend from block 64 0 65 Text1
data modify entity @s Item.tag.pages append value '{"nbt":"metadata.website","storage":"server","color":"gold"}'
#{"text":"Website","color":"dark_gray","clickEvent":{"action":"open_url","value":'{"nbt":"metadata.website","storage":"server"}'}}