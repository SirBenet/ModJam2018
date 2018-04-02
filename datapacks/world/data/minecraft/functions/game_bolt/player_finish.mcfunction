tag @s add Finished
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 2 1.5
particle minecraft:end_rod ~ ~ ~ 2 2 2 0 100
execute if score BoltTimerCentis Global matches 0 run tellraw @a [{"selector":"@s","color":"aqua"}, " finished in ", {"score":{"name":"BoltTimerSeconds","objective":"Global"}}, ".00 seconds"]
execute if score BoltTimerCentis Global matches 5 run tellraw @a [{"selector":"@s","color":"aqua"}, " finished in ", {"score":{"name":"BoltTimerSeconds","objective":"Global"}}, ".05 seconds"]
execute if score BoltTimerCentis Global matches 10.. run tellraw @a [{"selector":"@s","color":"aqua"}, " finished in ", {"score":{"name":"BoltTimerSeconds","objective":"Global"}}, ".", {"score":{"name":"BoltTimerCentis","objective":"Global"}}, " seconds"]
tellraw @s {"text":"The game will end when everyone reaches the finish line","color":"aqua"}