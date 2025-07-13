# Decrease timer for all players who are flying
scoreboard players remove @a[tag=flying] fly_timer 1

# Display remaining time as actionbar
execute as @a[tag=flying] run title @s actionbar [{"text":"Flight time remaining: ","color":"gold"},{"score":{"name":"@s","objective":"fly_timer"},"color":"yellow"},{"text":" ticks","color":"gold"}]

# Play sound at certain intervals as warning
execute as @a[tag=flying,scores={fly_timer=1200}] at @s run playsound minecraft:block.note_block.harp player @s ~ ~ ~ 1 1
execute as @a[tag=flying,scores={fly_timer=600}] at @s run playsound minecraft:block.note_block.harp player @s ~ ~ ~ 1 1
execute as @a[tag=flying,scores={fly_timer=200}] at @s run playsound minecraft:block.note_block.harp player @s ~ ~ ~ 1 1
execute as @a[tag=flying,scores={fly_timer=50}] at @s run playsound minecraft:block.note_block.harp player @s ~ ~ ~ 1 1
execute as @a[tag=flying,scores={fly_timer=10}] at @s run playsound minecraft:block.note_block.harp player @s ~ ~ ~ 1 1

# Handle timer expiration
execute as @a[tag=flying,scores={fly_timer=..0}] run function homes:cmd_fly/disable_fly