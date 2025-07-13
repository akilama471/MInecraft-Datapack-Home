# Give player the ability to fly
gamemode adventure @s[gamemode=survival]
execute as @s run gamemode adventure @s[gamemode=survival]
execute as @s run effect give @s minecraft:levitation 1 0 true

# Set the ability to fly using game rules instead of ability command
execute as @s run effect clear @s minecraft:levitation
execute as @s run attribute @s minecraft:generic.flying_speed base set 0.05

# Set the timer (2 minutes = 2400 ticks)
scoreboard players set @s fly_timer 2400

# Tag the player for tracking
tag @s add flying

# Reset the trigger score
scoreboard players set @s fly 0

# Notify the player
title @s title {"text":"Flight Activated!","color":"gold"}
title @s subtitle {"text":"You can fly for 2 minutes","color":"yellow"}
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.5