execute if entity @s[gamemode=!spectator] run function general/check_bounce
scoreboard players add @s[gamemode=!spectator] Points 1
gamemode spectator @s[y=0,dy=-50,gamemode=!spectator]