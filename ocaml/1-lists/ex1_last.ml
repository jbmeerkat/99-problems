let rec last xs = match xs with
  | [] -> None
  | h :: [] -> Some h
  | _ :: t -> last t

let test =
  assert (last [] = None);;
  assert (last ["foo"; "bar"; "baz"] = Some "baz")

let _ = test
