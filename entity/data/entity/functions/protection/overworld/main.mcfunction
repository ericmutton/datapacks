#spawn castle
tag @s[x=-146,y=70,z=61,distance=..50] add inRegion
kill @e[x=-146,y=70,z=61,distance=..50,tag=!protected]
#stronghold
tag @s[x=-303,y=40,z=1654,distance=..20] add inRegion
kill @e[x=-303,y=40,z=1654,distance=..20,tag=!protected]


execute if data block -138 66 51 {BurnTime:0s} run item replace block -138 66 51 container.1 with minecraft:coal{protected:true}
clear @s minecraft:coal{protected:true}

execute if block -151 69 65 minecraft:cauldron run setblock -151 69 65 minecraft:cauldron[level=3] replace
execute if block -151 69 65 minecraft:cauldron run setblock -142 66 61 minecraft:anvil[facing=north] keep
execute if block -151 69 65 minecraft:cauldron run setblock -142 65 61 minecraft:anvil[facing=north] keep
execute if block -151 69 65 minecraft:cauldron run setblock -142 65 60 minecraft:anvil[facing=north] keep
execute if block -151 69 65 minecraft:cauldron run setblock -143 65 59 minecraft:anvil[facing=north] keep
execute if block -151 69 65 minecraft:cauldron run setblock -144 65 58 minecraft:anvil[facing=west] keep
execute if block -151 69 65 minecraft:cauldron run setblock -145 65 57 minecraft:anvil[facing=west] keep
execute if block -151 69 65 minecraft:cauldron run setblock -146 65 57 minecraft:anvil[facing=west] keep
execute if block -151 69 65 minecraft:cauldron run setblock -146 66 57 minecraft:anvil[facing=west] keep