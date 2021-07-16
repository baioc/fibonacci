let fibonacci n =
    let rec fastFib = function
        | 0 -> (0I, 1I)
        | n ->
            let fk, fk1 = fastFib (n / 2)
            let fn = fk * (2I*fk1 - fk)
            let fn1 = (pown fk1 2) + (pown fk 2)
            if n % 2 = 0
            then fn, fn1
            else fn1, fn + fn1

    let fn, _ = fastFib n in fn

fsi.CommandLineArgs.[1]
|> int
|> fibonacci
|> printfn "%A"
