let a <
    case \msg \dest:
        send msg ("get" dest)
    ;
>

send a (() <
    case \val:
        send stdout (val)
    ;
>)