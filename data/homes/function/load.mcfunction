scoreboard objectives add sethome trigger "Set Home"
scoreboard objectives add homes trigger "List Homes"
scoreboard objectives add home trigger "Go Home"
scoreboard objectives add namehome trigger "Name Home"
scoreboard objectives add delhome trigger "Delete Home"
scoreboard objectives add tpr trigger "Random Teleport"

scoreboard objectives add homes.target dummy "Homes Config"
scoreboard objectives add homes.delay dummy
scoreboard objectives add homes.cooldown dummy
scoreboard objectives add homes.dummy dummy
scoreboard objectives add homes.config dummy "Homes Config"
scoreboard objectives add homes.x dummy
scoreboard objectives add homes.y dummy
scoreboard objectives add homes.z dummy
scoreboard objectives add homes.limit dummy "Max Home Limit"
scoreboard objectives add homes.back_x dummy
scoreboard objectives add homes.back_y dummy
scoreboard objectives add homes.back_z dummy
scoreboard objectives add homes.back_dim dummy
scoreboard objectives add tpr.x dummy
scoreboard objectives add tpr.y dummy
scoreboard objectives add tpr.z dummy
scoreboard objectives add tpr.found dummy
scoreboard objectives add tpr.attempts dummy

execute unless score #limit homes.config matches 0.. run scoreboard players set #limit homes.config 1
execute unless score #delay homes.config matches 0.. run scoreboard players set #delay homes.config 0
execute unless score #cooldown homes.config matches 0.. run scoreboard players set #cooldown homes.config 0

tellraw @a [{"text":"[Datapack]"},{"text":" Home v1 has been enabled","color":"green"}]