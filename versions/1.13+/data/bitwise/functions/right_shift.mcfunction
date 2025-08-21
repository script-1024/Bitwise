#? bitwise:right_shift
#* @usage
#   scoreboard players set #a param <value>
#   scoreboard players set #b param <value>
#   function bitwise:right_shift
#   execute store result ... run scoreboard players get #result local
#* ---
# RESULT = A; N = 2
# while (B > 0)
#   if (B % 2 == 1)
#       RESULT /= N
#   N *= N; B /= 2
# end

scoreboard players operation #result local = #a param
scoreboard players set #n local 2
scoreboard players operation #b local = #b param
execute if score #b local matches 1.. run function bitwise:private/rsh
scoreboard players reset #t local
scoreboard players reset #b local
scoreboard players reset #n local