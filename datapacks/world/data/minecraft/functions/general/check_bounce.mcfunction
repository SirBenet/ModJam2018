# Remove levitation if I bounced last tick
effect clear @s[tag=RemoveLevitation] levitation
tag @s remove RemoveLevitation

# If lobby, respawn balloon
execute if score State Global matches 0 positioned ~ ~-2 ~ as @e[type=armor_stand,tag=BounceBalloon,distance=..1.2,sort=nearest,limit=1] run function lobby/respawn_balloon

# Check if I'm on a bounce balloon
execute positioned ~ ~-2 ~ if entity @e[type=armor_stand,tag=BounceBalloon,distance=..1.2] run function general/bounce_player
execute positioned ~ ~-2 ~ as @e[type=armor_stand,tag=BounceBalloon,distance=..1.2,sort=nearest,limit=1] at @s run function general/bounce_stand

