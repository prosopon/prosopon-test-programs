let IfTrue{}<            
    case true \cust \msg:
        send cust msg
    ;
>

send IfTrue{} (true stdout ("True"))
send IfTrue{} (false stdout ("False"))