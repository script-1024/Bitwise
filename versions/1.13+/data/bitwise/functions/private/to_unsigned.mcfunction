scoreboard players set #unsigned local 0
execute if score #a param matches ..-1 run scoreboard players add #unsigned local 1
execute if score #b param matches ..-1 run scoreboard players add #unsigned local 1
execute if score #a param matches ..-1 run scoreboard players operation #a local += #INT_MIN const
execute if score #b param matches ..-1 run scoreboard players operation #b local += #INT_MIN const