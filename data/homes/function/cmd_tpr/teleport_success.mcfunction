# teleport_success.mcfunction - Handle successful teleportation
# Mark as found to prevent further checks
scoreboard players set @s tpr.found 1

# Teleport to exact position
tp @s ~ ~ ~

# Success message and effects
tellraw @s {"text":"[Teleport] Successfully teleported to a random location!","color":"green"}
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1
particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 0.1 50

# Optional: Set a temporary spawnpoint here
# spawnpoint @s