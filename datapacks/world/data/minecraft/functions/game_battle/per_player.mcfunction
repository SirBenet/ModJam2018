# Make player not on horse right click horse
execute if entity @a[nbt=!{RootVehicle:{}}] run function game_battle/not_on_horse

# Otherwise, allow to control horse
execute if entity @a[nbt={RootVehicle:{}}] run function game_battle/control