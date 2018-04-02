tp ^ ^ ^0.2
particle smoke ~ ~0.8 ~
execute unless block ~ ~ ~ air run kill @s

# Thorn hit balloon
execute if entity @e[type=armor_stand,tag=BattleBalloonStand,distance=..0.6,tag=!Dead] unless score @e[type=armor_stand,tag=BattleBalloonStand,distance=..0.7,sort=nearest,limit=1] ID = @s ID run function game_battle/thorn_hit