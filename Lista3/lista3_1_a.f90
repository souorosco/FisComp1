program lista3_1a
    implicit none
    
    real*8 f, x
    integer i
    character*64 fname
    external f

    fname='data1.bat'
    open(15, file=fname,status='unknown')

    do i = 1, 200
        x = 0.5 + (i - 1) * (10.0 - 0.5) / 199.0
        write(15,'(f15.8,f15.8)') x, f(x)
    end do

end program lista3_1a

real*8 function f(x)
    implicit none
    real*8 x
    f=sin(x)/x
    return
end