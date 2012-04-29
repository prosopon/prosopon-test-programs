let FactorialContinuation{val cust}<
    case \arg: send val ('*' arg cust) ;
>

let Factorial <            
    case 0    \cust: send cust (1) ;
    case \val \cust:
        send val ('-' 1 <
            case \result:
                send Factorial (result FactorialContinuation{val cust})
            ;
        >)
    ;
>

send Factorial (9 stdout)
