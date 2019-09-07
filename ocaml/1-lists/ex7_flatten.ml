open Ex5_rev

type 'a node =
  | One of 'a
  | Many of 'a node list

let flatten list =
  let rec iter acc = function
    | [] -> acc
    | One h :: t -> iter (h :: acc) t
    | Many h :: t -> iter (iter acc h) t
    in rev(iter [] list)

let () = assert (flatten [One "a"; Many [One "b"; Many [One "c"; One "d"]; One "e"]] = ["a"; "b"; "c"; "d"; "e"])
