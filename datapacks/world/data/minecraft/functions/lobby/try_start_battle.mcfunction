# Make sure there are enough players, and that we're in lobby State
execute store result score NumPlayers Workspace if entity @a
execute unless score State Global matches 0 run tellraw @s {"text":"A game is already running.","color":"red"}
execute if score State Global matches 0 if score NumPlayers Workspace matches ..1 run tellraw @s {"text":"Need at least 2 players to start Battle","color":"red"}
execute if score State Global matches 0 if score NumPlayers Workspace matches 2.. run tellraw @a [{"selector":"@s","color":"aqua"},{"text":" has started Battle!","color":"aqua"}]