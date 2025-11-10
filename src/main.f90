program main

    use string_utils
    use char_utils
    implicit none
    
    type(string) :: s

    print '(A)', "String Utils"
    ! string_utils
    s = string("Hello, world")
    print '(A,A)', "s = ", s%c_str()
    call s%append(" Hello")
    print '(A,A,A,A)', "s%append("" Hello"") = ", """", s%c_str(), """"
    print '(A)', "-------------------------------------------------------------"
    ! char_utils
    print '(A)', "Char Utils"
    print '(A,A,L1)', "is '!' a digit?  ", " ", isdigit('!')
    print '(A,A,L1)', "is '4' a digit?  ", " ", isdigit('4')
    print '(A,A,L1)', "is 'A' a letter? ", " ", isletter('A')
    print '(A,A,L1)', "is '-' a letter? ", " ", isletter('-')
    end program main
