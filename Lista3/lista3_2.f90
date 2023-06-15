program lista3_2
    implicit none
    
    real*8 ax, ay, az
    real*8 bx, by, bz
    real*8 cx, cy, cz

    print*, 'Vetor A'
    read*, ax, ay, az

    print*, 'Vetor B'
    read*, bx, by, bz
    
    ! Chamada das subrotinas para realizar as operações com vetores
    call sumvec(ax, ay, az, bx, by, bz, cx, cy, cz)
    print 15, 'Soma:', cx, cy, cz
    
    call subvec(ax, ay, az, bx, by, bz, cx, cy, cz)
    print 15, 'Subtracao:', cx, cy, cz
    
    call modvec(ax, ay, az, cx)
    print 15, 'Modulo A:', cx
    
    call modvec(bx, by, bz, cx)
    print 15, 'Modulo B:', cx
    
    call crossprod(ax, ay, az, bx, by, bz, cx, cy, cz)
    print 15, 'Produto Vetorial:', cx, cy, cz
    
    call dotprod(ax, ay, az, bx, by, bz, cx)
    print 15, 'Produto Escalar:', cx
    
    15 format(A17, 3f12.6)

end program lista3_2

! Subrotina para realizar a soma de vetores
subroutine sumvec(ax, ay, az, bx, by, bz, cx, cy, cz)
    implicit none
    real*8 ax, ay, az
    real*8 bx, by, bz
    real*8 cx, cy, cz

    cx = ax + bx
    cy = ay + by
    cz = az + bz

    return
end subroutine

! Subrotina para realizar a subtração de vetores
subroutine subvec(ax, ay, az, bx, by, bz, cx, cy, cz)
    implicit none
    real*8 ax, ay, az
    real*8 bx, by, bz
    real*8 cx, cy, cz

    cx = ax - bx
    cy = ay - by
    cz = az - bz

    return
end subroutine

! Subrotina para calcular o módulo de um vetor
subroutine modvec(ax, ay, az, cx)
    implicit none
    real*8 ax, ay, az
    real*8 cx

    cx = sqrt(ax**2 + ay**2 + az**2)

    return
end subroutine

! Subrotina para calcular o produto vetorial entre dois vetores
subroutine crossprod(ax, ay, az, bx, by, bz, cx, cy, cz)
    implicit none
    real*8 ax, ay, az
    real*8 bx, by, bz
    real*8 cx, cy, cz

    cx = ay * bz - az * by
    cy = az * bx - ax * bz
    cz = ax * by - ay * bx

    return
end subroutine

! Subrotina para calcular o produto escalar entre dois vetores
subroutine dotprod(ax, ay, az, bx, by, bz, cx)
    implicit none
    real*8 ax, ay, az
    real*8 bx, by, bz
    real*8 cx

    cx = ax * bx + ay * by + az * bz

    return
end subroutine