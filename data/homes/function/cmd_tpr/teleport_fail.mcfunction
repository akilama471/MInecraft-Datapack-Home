# teleport_fail.mcfunction - Handle teleportation failure
# Get back original coordinates
execute store result storage minecraft:tpr_temp x double 1 run scoreboard players get @s tpr.x
execute store result storage minecraft:tpr_temp y double 1 run scoreboard players get @s tpr.y
execute store result storage minecraft:tpr_temp z double 1 run scoreboard players get @s tpr.z

# Teleport back to original position
execute at @s run tp @s ~ ~ ~

# Failure message
tellraw @s {"text":"[Teleport] Failed to find a safe location. Please try again.","color":"red"}
playsound minecraft:block.note_block.bass player @s ~ ~ ~ 1 0.5