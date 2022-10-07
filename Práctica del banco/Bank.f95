program Banking
    implicit none
    integer :: i,N
    real :: P, x, S
    !open(unit=, file=,) ese comando nos sirve para luego escribir un archivo
    ! close(unit=, file=,)
    !P=.05
    !x=100
    !N=10
    print *, "Enter interest rate"
    read *, P
    print *, "Enter amount"
    read *, x
    print *, "Enter years"
    read *, N


    S=x*(1+P)

    !Aqui ponemos el loop
    !
do i=1,N
    S=(1+P)*(S+x)
    print *,S
end do

end program Banking