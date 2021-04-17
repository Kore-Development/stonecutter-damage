# Add to time when player is on stonecutter
execute as @a at @s if block ~0.0 ~-0.1 ~0.0 stonecutter run scoreboard players add @s p99.sctime 1

# Damage player
execute as @a[scores={p99.sctime=1}] at @s run effect give @s instant_damage 1 0 true

# Set time to 0 if player is no longer on stonecutter
execute as @a[scores={p99.sctime=1..}] at @s unless block ~0.0 ~-0.1 ~0.0 stonecutter run scoreboard players set @s p99.sctime 0

# Set time to 0 when time is 11
execute as @a[scores={p99.sctime=11..}] at @s run scoreboard players set @s p99.sctime 0