# Disable flight abilities
gamemode survival @s[gamemode=creative]

# Reset flying player to the ground if they're in the air
execute at @s if block ~ ~-1 ~ #minecraft:air run effect give @s minecraft:slow_falling 5 0 true

# Remove the flying tag
tag @s remove flying

# Reset the timer
scoreboard players reset @s fly_timer

# Notify the player
title @s title {"text":"Flight Deactivated","color":"red"}
title @s subtitle {"text":"Flight time expired","color":"yellow"}
playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5