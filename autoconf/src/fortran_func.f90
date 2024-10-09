subroutine calculate_square(input, output)
    implicit none
    integer, intent(in) :: input
    integer, intent(out) :: output

    output = input * input
end subroutine calculate_square
