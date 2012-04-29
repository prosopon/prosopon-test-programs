let while <
    case 0 \cust: send cust (it) ;
    case \it \cust:
        send cust (it)
        send it ('-' 1 <
            case \val: send while (val cust) ;
        >)
    ;
>


send while (5000 <
    case \val: send stdout (val) ;
>)