# Called on battle start
tp @s ~ ~-140 ~
clear @s
xp add @s -1000000000 levels

scoreboard players set @s RespawnTimer 0

effect give @s night_vision 1000000 0 true
effect give @s invisibility 1000000 0 true

# Create my battle balloon
execute at @s run function game_battle/summon_battle_balloon