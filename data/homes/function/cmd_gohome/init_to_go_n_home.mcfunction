# homes:cmd_gohome/init_to_go_n_home.mcfunction
execute if score @s homes.delay matches 0 run function homes:cmd_gohome/try_to_go_n_home
execute unless score @s homes.delay matches 0 run scoreboard players remove @s homes.delay 1