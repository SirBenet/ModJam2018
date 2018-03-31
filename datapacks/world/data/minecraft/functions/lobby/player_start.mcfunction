# Called for respawning, relogging, new player, and on lobby start
gamemode adventure @a[gamemode=!creative]
tp @s 0 62 0
clear @s
effect give @s resistance 1000000 4 true
effect give @s saturation 1000000 0 true
scoreboard players enable @s TransportBalloon
give @p written_book{pages:["[\"\",{\"text\":\"#########################################################\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger TransportBalloon set 1\"}},{\"text\":\"\\n\\n\\n\\n#########################################################\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger TransportBalloon set 2\"}},{\"text\":\"\\n\\n\\n\\n#########################################################\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger TransportBalloon set 3\"}}]"],title:"Transport Balloon",author:"SirBenet"}