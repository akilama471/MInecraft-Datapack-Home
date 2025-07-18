schedule function homes:tick 1t

scoreboard players enable @a sethome
execute as @a[scores={sethome=1..}] at @s run function homes:cmd_sethome/trigger_sethome

scoreboard players enable @a delhome
execute as @a[scores={delhome=1..}] at @s  run function homes:cmd_delhome/trigger_delhome

scoreboard players enable @a homes
execute as @a[scores={homes=1..}] at @s  run function homes:cmd_listhomes/trigger_homes

scoreboard players enable @a home
execute as @a[scores={home=1..}] at @s  run function homes:cmd_gohome/trigger_gohome

scoreboard players enable @a tpr
execute as @a[scores={tpr=1..}] at @s run function homes:cmd_tpr/trigger_tpr

scoreboard players enable @a fly
execute as @a[scores={fly=1..}] run function homes:cmd_fly/trigger_fly

scoreboard players enable @a namehome
execute as @a[scores={namehome=1..}] run function homes:cmd_namehome/trigger_namehome
execute as @a[scores={homes.target=1..}] run function homes:cmd_gohome/init_to_go_n_home

function homes:timer