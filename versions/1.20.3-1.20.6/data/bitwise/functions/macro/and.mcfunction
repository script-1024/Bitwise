#? bitwise:macro/and
#* @usage
#   execute store result score ... run function bitwise:macro/and { a: <value>, b: <value> }
#* ---
# RESULT = 0; N = 1
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
function bitwise:private/and
scoreboard players reset #a local
scoreboard players reset #b local
scoreboard players reset #n local
return run scoreboard players get #result local