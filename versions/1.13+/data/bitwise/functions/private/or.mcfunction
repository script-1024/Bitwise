scoreboard players operation #t0 local = #a local
scoreboard players operation #t1 local = #b local
scoreboard players operation #t0 local %= #2 const
scoreboard players operation #t1 local %= #2 const
scoreboard players operation #t0 local += #t1 local
execute unless score #t0 local matches 0 run scoreboard players operation #result local += #n local
scoreboard players operation #n local *= #2 const
scoreboard players operation #a local /= #2 const
scoreboard players operation #b local /= #2 const
scoreboard players operation #t0 local = #a local
scoreboard players operation #t0 local += #b local
execute unless score #t0 local matches 0 run function bitwise:private/or