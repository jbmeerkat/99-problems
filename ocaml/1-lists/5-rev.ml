let rev list =
  let rec iter reversed = function
    | [] -> reversed
    | head :: tail -> iter (head :: reversed) tail
  in iter [] list

let () = assert (rev ["a" ; "b" ; "c"] = ["c"; "b"; "a"])
