# homes:cmd_gohome/trigger_gohome.mcfunction
execute if score @s homes.cooldown matches 1.. run tellraw @s [{"text":"Cooldown active! Wait ","color":"red"},{"score":{"name":"@s","objective":"homes.cooldown"}},{"text":" seconds.","color":"red"}]
execute if score @s homes.cooldown matches 1.. run scoreboard players set @s home 0
execute as @s run tellraw @s [{"text":"[Datapack] ","color":"green"},{"text":"Teleport Delay: ","color":"yellow"},{"score":{"name":"#delay","objective":"homes.config"}}]
execute unless score @s homes.cooldown matches 1.. run function homes:cmd_gohome/init_to_go_first_home
scoreboard players set @s home 0