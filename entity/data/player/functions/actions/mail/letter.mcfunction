summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:writable_book",Count:1b,tag:{letter:true,CustomModelData:1,display:{Name:'{"text":"Letter","italic":false}'}}}}
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book",Count:1b,tag:{letter:true}}},sort=nearest,limit=1] store result entity @s Item.tag.recipient int 1 run scoreboard players get #recipient int

#give @s minecraft:writable_book{CustomModelData:1,display:{Name:'{"text":"Letter","italic":false}'}}