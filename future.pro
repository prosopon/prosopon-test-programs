let FutureNode{msg next}<
    case \val: send val msg ;
>

let WaitingFuture{front back}<
    case "write" \val:
        send val frå˙ont
        become self val
        send back ("write" val)
    ;
    case ?*:
        become self WaitingFuture{front WaitingFuture{msg back}}
    ;
>

let Future{}<
    case "write" \val:  become self val ;
    case ?*:
        let end null
        become self WaitingFuture{ null}
    ;
>


let a Future{}
send a (1)
send a (2)
send a (3)
send a ("write" stdout)