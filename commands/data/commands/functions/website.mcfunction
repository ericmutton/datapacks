execute as @a run tellraw @s [{"text":"Join the discord guild, ","color":"yellow","clickEvent":{"action":"open_url","value":"https://discord.gg/QJz5JnG"}},{"selector":"@s","color":"gold"},"!"]
scoreboard players set #website server.time 0
scoreboard players reset @s server.website
scoreboard players enable @s server.website