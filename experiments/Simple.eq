(* EQ is a declarative language that built on "=" operator *)

(* Program that outputs the user name *)

Program operations =
    Name = Arguments First
    Output = "Hello {{Name}}!"

(* Program that calculates the factorial *)

Factorial type = method
Factorial inputs =
    Input type = Number
Factorial outputs =
    Output type = Number
Factorial tests =
    Test where
        Actual = Factorial where
            Input = 1
        Expected = 1
    Test where
        Actual = Factorial where
            Input = 10
        Expected = 3628800
Factorial has operations
    if
        Input <= 1
    then
        Output = 1
    else
        Output = Input * Next
        Next = Factorial where
            Input = Input - 1


(* Program that calculates the roots of quadratic equation *)

Roots is method
Roots has inputs
    A is Number
    B is Number
    C is Number
Roots has outputs
    X1 is Number
    X2 is Number
Roots has operations
    D = SquareRoot of B * B - 4 * A * C
    X1 = (-B + D) / (2 * A)
    X2 = (-B - D) / (2 * A)


(*

-- This is the same program in Agda - a popular dependently typed language.
-- Which version is easier to understand for a first-time reader?

roots: Number -> Number -> Number -> (Number, Number)
roots a b c =
    d = sqrt(b * b - 4 * a * c)
    x1 = (-b + d) / (2 * a)
    x2 = (-b - d) / (2 * a)
    (x1, x2)

*)
