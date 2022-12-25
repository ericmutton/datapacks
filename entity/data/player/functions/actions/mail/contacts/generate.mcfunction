scoreboard players add #contacts int 1
data modify block 64 0 65 Text1 set value '[{"text":"Contact #"},{"score":{"name":"#contacts","objective":"int"}},{"text":"\\nName: "},{"nbt":"contacts[0][0]","storage":"minecraft:players"}]'
data modify block 65 0 65 Book.tag.pages append from block 64 0 65 Text1
data remove storage minecraft:players contacts[0]
execute if score #contacts int < $players int run function player:actions/mail/contacts/generate