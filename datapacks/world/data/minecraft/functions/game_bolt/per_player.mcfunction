# Make player not on horse right click pig
execute if entity @a[nbt=!{RootVehicle:{}}] run function game_bolt/not_on_pig

# Otherwise, allow to control pig
execute if entity @a[nbt={RootVehicle:{}}] run function game_bolt/control