module char_utils
    implicit none
contains
    function isdigit(n) result(res)
        logical :: res
        character(len=1), intent(in) :: n
        integer :: ich
        ich = ichar(n)
    
        res = ((ich >= ichar('0') .and. ich <= ichar('9')))
    end function isdigit
        
    function isletter(n) result(res)
        logical :: res
        character(len=1), intent(in) :: n
        integer :: ich
        ich = ichar(n)
        res = ((ich >= ichar('A') .and. ich <= ichar('Z')) .or. &
                (ich >= ichar('a') .and. ich <= ichar('z')))
    end function isletter
end module char_utils
