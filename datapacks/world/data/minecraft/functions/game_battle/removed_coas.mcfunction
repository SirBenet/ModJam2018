# Called when CoaS not in offhand
clear @s minecraft:carrot_on_a_stick
replaceitem entity @s weapon.offhand carrot_on_a_stick
kill @e[type=item,distance=..10,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]