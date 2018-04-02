# Get person shot
scoreboard players operation @a ID -= @s ID
scoreboard players remove @a[scores={ID=0},limit=1,sort=nearest] Points 1
scoreboard players set @a[scores={ID=0},limit=1,sort=nearest] RespawnTimer 20
tag @a[scores={ID=0},limit=1,sort=nearest] add Shootee
scoreboard players operation @a ID += @s ID

tag @s add Dead

# Effects
replaceitem entity @s armor.head air
particle smoke ~ ~ ~ 0.3 0.3 0.3 0.2 20
particle cloud ~ ~ ~ 0.1 0.1 0.1 0.2 10
playsound minecraft:item.trident.hit master @a