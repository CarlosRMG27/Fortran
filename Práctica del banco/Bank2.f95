program Banking
    implicit none
    integer :: i,N
    real :: P, x, S
    real :: R(10,2)
    !real,dimension(10,2) :: R 
    !allocate(R(N,2))

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
    R(i,1)=i
    R(i,2)=S
    print *,S
end do

print *,R

open(20,file='response.csv')

do i=1,N
    write(20,*) R(i,1),',',R(i,2)
end do

close(20)
print *, 'Data have been saved'
!deallocate(R)

end program Banking