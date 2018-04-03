execute if entity @s run function general/check_bounce
scoreboard players add @s[x=1008,z=1008,dx=31,dz=31] Points 1
gamemode spectator @s[y=0,dy=-50]