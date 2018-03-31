# Effects
playsound entity.item.pickup master @a ~ ~1 ~ 2 0
particle smoke ~ ~1 ~ 0.3 0.3 0.3 0.2 50
particle cloud ~ ~1 ~ 0.1 0.1 0.1 0.2 20

# Remove self
tag @s add BounceBalloonStandDying
kill @e[type=snowball,tag=BounceBalloonSnowball,distance=..3,nbt={Passengers:[{id:"minecraft:armor_stand",Tags:[BounceBalloonStandDying]}]}]
tag @s remove BounceBalloonStandDying
kill @s