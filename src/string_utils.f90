module string_utils
    implicit none
    private
    public :: string
    type :: string
        character(len=:), allocatable :: data
    contains
        procedure :: append => string_append
        procedure :: c_str => string_c_str
    end type string

    interface string
        module procedure string_constructor

    end interface

contains
    function string_constructor(initial) result(s)
        character(len=*), intent(in), optional :: initial 
        type(string) :: s
        if(present(initial)) then
            s%data = initial
        else
            s%data = ""
        end if
    end function string_constructor

    function string_c_str(this) result(str)
        class(string), intent(in) :: this
        character(len=:), allocatable :: str
        if(allocated(this%data)) then
            str = this%data
        else
            str = ""
        end if
    end function string_c_str

    subroutine string_append(this, str)
        class(string), intent(inout) :: this
        character(len=*), intent(in) :: str
        if(allocated(this%data)) then
            this%data = this%data // str
        else
            this%data = str
        end if

    end subroutine string_append
    
end module string_utils

