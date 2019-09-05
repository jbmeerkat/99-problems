let rec length = function
  | [] -> 0
  | _ :: tail -> 1 + length tail

let () = assert (length ["a"; "b"; "c"] = 3)
let () = assert (length [] = 0)
