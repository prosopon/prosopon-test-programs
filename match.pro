let Match <            
    case \cust ?*: send cust (1) ;
    case \cust \val1 \val2: send cust (2) ;
>


send Match (stdout 9 10)
