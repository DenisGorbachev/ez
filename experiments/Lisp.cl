(*
    Lisp removes the connection between names & values.

    * It is not obvious that ((input Number)) is a list of inputs
    * It is not obvious that input type is Number
    * It is not obvious that lte means "less than equal"
*)

define
    factorial
    ((input Number))
    Number
    (
        if (lte input 2)
        -- Unfinished
    )

(* Is is possible to make an easier-to-understand Lisp by adding variable names *)

set
    name = factorial
    inputs =
        (
            name = input
            type = Number
        )
    outputs =
        (
            name = output
            type = Number
        )
    operations =
        set
            name = output
            value = if
                cond = lte input 0
                then = 1
                else = mul input (
                    factorial
                        input = input - 1
                )

check
    actual = factorial 10
    expected = 3628800
