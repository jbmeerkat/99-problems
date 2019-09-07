let rec at position list = match position, list with
  | _, [] -> None
  | 1, head :: _ -> Some head
  | _, head :: tail -> at (position - 1) tail

let () = assert (at 3 [ "a" ; "b"; "c"; "d"; "e" ] = Some "c")
let () = assert (at 3 [ "a" ] = None)
