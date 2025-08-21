#? bitwise:macro/and
#* @usage
#   execute store result score ... run function bitwise:macro/and { a: <value>, b: <value> }
#* ---
# RESULT = 0; N = 1
# A = (unsigned)A, B = (unsigned)B
# if (A == B)
#   return A
# while (A != 0 and B != 0)
#   if (A % 2 and B % 2)
#       RESULT += N
#   N *= 2; A /= 2; B /= 2
# return RESULT

data remove storage args "bitwise:macro/and"
scoreboard players set #result local 0
scoreboard players set #n local 1
$scoreboard players set #a local $(a)
$scoreboard players set #b local $(b)
execute if score #a local = #b local run return run function bitwise:private/cleanup_and_return_a
function bitwise:private/to_unsigned
function bitwise:private/and
execute if score #unsigned local matches 2 run scoreboard players operation #result local += #INT_MIN const
scoreboard players reset #unsigned local
scoreboard players reset #t0 local
scoreboard players reset #t1 local
scoreboard players reset #a local
scoreboard players reset #b local
scoreboard players reset #n local
return run scoreboard players get #result local