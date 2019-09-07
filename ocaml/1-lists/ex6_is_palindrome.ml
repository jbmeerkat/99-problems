open Ex5_rev

let is_palindrome list =
  rev list = list

let () = assert (is_palindrome [ "x" ; "a" ; "m" ; "a" ; "x" ])
let () = assert (not (is_palindrome [ "a" ; "b" ]))
