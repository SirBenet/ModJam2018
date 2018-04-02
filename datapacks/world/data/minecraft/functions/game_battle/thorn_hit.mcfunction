# Get shooter
scoreboard players operation @a ID -= @s ID
execute as @a[scores={ID=0},limit=1,sort=nearest] at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 2 0.8
scoreboard players add @a[scores={ID=0},limit=1,sort=nearest] Points 2
tag @a[scores={ID=0},limit=1,sort=nearest] add Shooter
scoreboard players operation @a ID += @s ID

# Get person shot
execute as @e[type=armor_stand,tag=BattleBalloonStand,distance=..0.7,sort=nearest,limit=1] at @s run function game_battle/shot

tellraw @a [{"selector":"@a[tag=Shootee,limit=1]"}," was popped by ", {"selector":"@a[tag=Shooter,limit=1]"}]
tag @a remove Shooter
tag @a remove Shootee

kill @s