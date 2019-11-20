execute if score @s help matches 1 run tellraw @s ["",{"text":"[Help]: ","color":"yellow","bold":true},{"text":"/trigger mail set <contact #>","clickEvent":{"action":"suggest_command","value":"/trigger mail set "}},{"text":"\nNext page","clickEvent":{"action":"run_command","value":"/trigger help set 2"}}]
execute if score @s help matches 2 run tellraw @s ["",{"text":"[Help]: ","color":"yellow","bold":true},{"text":"/trigger home set <home #>","clickEvent":{"action":"suggest_command","value":"/trigger home set "}}]
scoreboard players reset @s help
scoreboard players enable @s help