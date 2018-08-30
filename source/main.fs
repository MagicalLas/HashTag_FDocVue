module helloworld

let functionss x = x + 10
[<EntryPoint>]
let main argv = 
    let result = functionss 1234
    printfn "result is %d." result
    0
