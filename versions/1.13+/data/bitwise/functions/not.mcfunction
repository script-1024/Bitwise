#? bitwise:not
#* @usage
#   scoreboard players set #a param <value>
#   function bitwise:not
#   execute store result ... run scoreboard players get #result local
#* ---
# RESULT = (-A) - 1
# end

scoreboard players operation #result local = #a param
scoreboard players operation #result local *= #-1 const
scoreboard players remove #result local 1