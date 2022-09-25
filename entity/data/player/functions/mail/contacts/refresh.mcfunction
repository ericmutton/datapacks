scoreboard players set #contacts int 0
setblock 65 0 65 minecraft:lectern{Book:{id:"minecraft:written_book",Count:1b,tag:{generation:3,author:"",title:"Address Book",pages:[{"text":"Click here for help.","color":"gray","clickEvent":{"action":"run_command","value":{"text":"/trigger help set 1","bold":true}}}]}}}
data modify storage minecraft:players contacts set from storage minecraft:players list
function player:mail/contacts/generate
tellraw @s ["",{"text":"[Debug]: ","color":"yellow","bold":true},"Reloaded ",{"score":{"name":"$players","objective":"int"}}," server contacts"]