schedule function homes:helper/decrement_cooldowns 1s
execute as @a[scores={homes.cooldown=1..}] run function homes:helper/decrement_cooldown