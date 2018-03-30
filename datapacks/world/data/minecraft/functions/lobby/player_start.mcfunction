# Called for respawning, relogging, new player, and on lobby start
tp @s 0 62 0
clear @s
effect give @s resistance 1000000 4 true
effect give @s saturation 1000000 0 true
give @p written_book{pages:["[\"\",{\"text\":\"#########################################################\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/say test\"}},{\"text\":\"\\n\\n\\n\\n#########################################################\\n\\n\\n\\n#########################################################\"}]"],title:"Transport Balloon",author:"SirBenet"}