

scoreboard objectives add Tnt dummy


execute as @e[type=minecraft:tnt,nbt={Fuse:1s}] at @s run summon creeper ~ ~ ~ {Fuse:0s,ignited:1,ActiveEffects:[{Id:14,Amplifier:1,Duration:100}],CustomName:"Tnt"}
kill @e[type=minecraft:tnt,nbt={Fuse:1s}]