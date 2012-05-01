let Cons{first rest}<
    case "car" \cust:
        send cust (first)
    ;
    case "cdr" \cust:
        send cust (rest)
    ;
>


let First <
    case \list \cust: send list ("car" cust) ;
>

let Last <
    case \list \cust:
        send list ("cdr" <
            case null: send list ("car" cust) ;
            case \val:
                send Last (val <
                    case \val: send cust (val) ;
                >)
            ;
        >)
    ;
>


let ForEach <
    case null \cust: ;
    case \list \cust:
        send list ("car" cust)
        send list ("cdr" <
            case \val: send ForEach (val cust) ;
        >)
    ;
>

let Square <
    case \list \cust:
        send ForEach (list <
            case \val: send val ("*" val cust) ;
        >)
    ;
>

let a Cons{1 Cons{2 Cons{3 Cons{4 null}}}}


send Square (a stdout)

//send First (a stdout)
//send Last (a stdout)
