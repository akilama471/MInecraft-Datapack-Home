execute if data entity @s SelectedItem.components."minecraft:custom_name" run tag @s add homes.nameTagSet
execute if data storage homes:storage players[-1].homes[-1].name run tag @s add homes.nameSet
execute if entity @s[tag=homes.nameTagSet] run function homes:cmd_namehome/try_to_set_home_name
execute unless entity @s[tag=homes.nameTagSet] run function homes:cmd_namehome/try_to_reset_home_name
tag @s remove homes.nameSet
tag @s remove homes.nameTagSet