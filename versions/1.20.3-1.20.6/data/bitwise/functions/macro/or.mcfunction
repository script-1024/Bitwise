#? bitwise:macro/or
#* @usage
#   execute store result score ... run function bitwise:macro/or { a: <value>, b: <value> }
#* ---
# RESULT = 0; N = 1
# if (A == B || B == 0)
#   return A
# if (A == 0)
#   return B
# A = (unsigned)A, B = (unsigned)B
# while (A != 0 and B != 0 and A != B)
#   if (A % 2 or B % 2)
#       RESULT += N
#   N *= 2; A /= 2; B /= 2
# return RESULT

data remove storage args "bitwise:macro/or"
scoreboard players set #result local 0
scoreboard players set #n local 1
$scoreboard players set #a local $(a)
$scoreboard players set #b local $(b)
execute if score #a local = #b local run return run function bitwise:private/cleanup_and_return_a
execute if score #b local matches 0 run return run function bitwise:private/cleanup_and_return_a
execute if score #a local matches 0 run return run function bitwise:private/cleanup_and_return_b
function bitwise:private/to_unsigned
execute unless score #a local matches 0 unless score #b local matches 0 unless score #a local = #b local run function bitwise:private/or
execute if score #unsigned local matches 1..2 run scoreboard players operation #result local += #INT_MIN const
scoreboard players reset #unsigned local
scoreboard players reset #t0 local
scoreboard players reset #t1 local
scoreboard players reset #a local
scoreboard players reset #b local
scoreboard players reset #n local
return run scoreboard players get #result local