#? bitwise:or
#* @usage
#   scoreboard players set #a param <value>
#   scoreboard players set #b param <value>
#   function bitwise:or
#   execute store result ... run scoreboard players get #result local
#* ---
# RESULT = 0; N = 1
# if (A == B) RESULT = A
# if (A == 0) RESULT = B
# if (B == 0) RESULT = A
# A = (unsigned)A, B = (unsigned)B
# while (A != 0 and B != 0 and A != B)
#   if (A % 2 or B % 2)
#       RESULT += N
#   N *= 2; A /= 2; B /= 2
# end

scoreboard players set #result local 0
scoreboard players set #n local 1
scoreboard players operation #a local = #a param
scoreboard players operation #b local = #b param
execute if score #a param = #b param run scoreboard players operation #result local = #a local
execute if score #b param matches 0 run scoreboard players operation #result local = #a local
execute if score #a param matches 0 run scoreboard players operation #result local = #b local
function bitwise:private/to_unsigned
execute unless score #a param matches 0 unless score #b param matches 0 unless score #a param = #b param run function bitwise:private/or
execute if score #unsigned local matches 1..2 run scoreboard players operation #result local += #INT_MIN const
scoreboard players reset #unsigned local
scoreboard players reset #t0 local
scoreboard players reset #t1 local
scoreboard players reset #a local
scoreboard players reset #b local
scoreboard players reset #n local