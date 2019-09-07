let rec last_two list = match list with
  | [] | [_] -> None
  | [penultimate; last] -> Some (penultimate, last)
  | head :: tail -> last_two tail

let () = assert (last_two ["a"; "b"; "c"; "d"] = Some ("c", "d"))
let () = assert (last_two ["a"] = None);
