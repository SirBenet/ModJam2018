# Make sure that we're in lobby State
execute unless score State Global matches 0 run tellraw @s {"text":"A game is already running.","color":"red"}
execute if score State Global matches 0 run tellraw @a [{"selector":"@s","color":"aqua"},{"text":" has started Bolt!","color":"aqua"}]
execute if score State Global matches 0 run function game_bolt/start