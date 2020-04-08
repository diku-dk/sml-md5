
fun test s b =
    if b then print ("OK : " ^ s ^ "\n")
    else print ("ERR: " ^ s ^ "\n")

fun testf s f =
    (if f() then print ("OK : " ^ s ^ "\n")
     else print ("ERR: " ^ s ^ "\n"))
    handle Fail e => print ("EXN: " ^ s ^ " raised Fail \"" ^ e ^ "\"\n")
         | Overflow => print ("EXN: " ^ s ^ " raised Overflow\n")

val s = "Hi there"
val s_md5 = "d9385462d3deff78c352ebb3f941ce12"
val empty_md5 = "d41d8cd98f00b204e9800998ecf8427e"

val () = test "fromString" (MD5.fromString s = s_md5)
val () = test "fromString.empty" (MD5.fromString "" = empty_md5)

val st = MD5.init
val st = MD5.update (st, Byte.stringToBytes "Hi ")
val st = MD5.update (st, Byte.stringToBytes "there")
val res = MD5.toHexString(MD5.final st)
val () = test "init-update-final-toHexString" (s_md5 = res)

val () = test "fromFile" (MD5.fromFile "test_file.txt" = MD5.fromString "Hi\n")
