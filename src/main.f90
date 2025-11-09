program main
    use string_utils

    type(string) :: s
    s = string("Hello, world")
    call s%append("Haiii")
    print *, s%c_str()
end program main
