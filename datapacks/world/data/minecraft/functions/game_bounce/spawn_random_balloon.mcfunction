# Get random pos from 1007 2 1007 to 1040 2 1040
summon area_effect_cloud 1007 2 1007 {Tags:["BalloonSpawnPosition"],Particle:"block air"}
function general/random_number
scoreboard players operation RandomX Workspace = Seed Random
scoreboard players operation RandomX Workspace %= 33 Constants
execute if score RandomX Workspace matches ..0 run scoreboard players operation RandomX Workspace *= -1 Constants
scoreboard players add RandomX Workspace 1007
execute store result entity @e[type=area_effect_cloud,tag=BalloonSpawnPosition,limit=1,sort=nearest] Pos[0] double 1 run scoreboard players get RandomZ Workspace

function general/random_number
scoreboard players operation RandomZ Workspace = Seed Random
scoreboard players operation RandomZ Workspace %= 33 Constants
execute if score RandomZ Workspace matches ..0 run scoreboard players operation RandomZ Workspace *= -1 Constants
scoreboard players add RandomZ Workspace 1007
execute store result entity @e[type=area_effect_cloud,tag=BalloonSpawnPosition,limit=1,sort=nearest] Pos[2] double 1 run scoreboard players get RandomZ Workspace

# Spawn in balloon 
execute positioned as @e[type=area_effect_cloud,tag=BalloonSpawnPosition] run function game_bounce/summon_bounce_balloon

# Reset timer, increase 
scoreboard players operation BalloonSpawnTimer Global = BalloonSpawnTimerMax Global
scoreboard players add BalloonSpawnTimerMax Global 1