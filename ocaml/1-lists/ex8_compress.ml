open Ex5_rev

let compress list =
  let rec iter acc = function
    | [] -> acc
    | h :: h' :: t when h = h' -> iter acc (h :: t)
    | h :: t -> iter (h :: acc) t in
  rev(iter [] list)

let () =
  let list = ["a";"a";"a";"a";"b";"c";"c";"a";"a";"d";"e";"e";"e";"e"] in
  let result = compress list in
  assert (result = ["a"; "b"; "c"; "a"; "d"; "e"])
