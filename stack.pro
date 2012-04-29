let null<>

let Stack{val next}<            
    case "pop" \cust:
        send cust (val)
        become self next
    ;
    case "push" \push_val \cust:
        become self Stack{push_val Stack{val next}}
		send cust (push_val)
    ;
>

let stk Stack{0 null}

send stk ("push" 1 <
	case \val:
		send stk ("pop" <
			case \val:
				send stdout (val)
				send stk ("pop" stdout)
			;
		>)
	;
>)

    