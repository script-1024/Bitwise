scoreboard players operation #t0 local = #a local
scoreboard players operation #t1 local = #b local
scoreboard players operation #t0 local %= #2 const
scoreboard players operation #t1 local %= #2 const
execute if score #t0 local matches 1 if score #t1 local matches 1 run scoreboard players operation #result local += #n local
scoreboard players operation #n local *= #2 const
scoreboard players operation #a local /= #2 const
scoreboard players operation #b local /= #2 const
execute unless score #a local matches 0 unless score #b local matches 0 run function bitwise:private/and