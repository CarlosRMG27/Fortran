program Banking
    implicit none
    integer :: i,N
    real, Dimension(:), Allocatable :: A
    real, Dimension(:), Allocatable :: R
    real :: P, x, S
    print *, "Enter years"
    read(*,*) N
    Allocate(A(1:N))
    Allocate(R(1:N))
    !Creamos los vectores de año y respuesta de la misma longitud variable

    
    

    print *, "Enter interest rate"
    read *, P
    print *, "Enter amount"
    read *, x

    S=x*(1+P)

    !Aqui ponemos el loop
    !
do i=1,N
    S=(1+P)*(S+x)
    A(i)=i
    R(i)=S
    print *,S
end do

!print *,R

open(20,file='response.csv')

do i=1,N
    write(20,*) A(i),',',R(i)
end do

close(20)
print *, 'Data have been saved'
!deallocate(R)

end program Banking