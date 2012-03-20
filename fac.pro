let Factorial{}<            
    case 0 cust:
        send cust (1)
    ;
    case val cust:
        send val ('-' 1 FactorialAdditionCustomer{val cust})
    ;
>
let FactorialAdditionCustomer{val cust}<
    case result:
        send Factorial{} (result FactorialContinuation{val cust})
    ;
>
let FactorialContinuation{val cust}<
    case arg:
        send val ('*' arg cust)
    ;
>
 
 
send Factorial{} (2 stdout)