program fortrantut2
    implicit none
    real, parameter :: PI=3.141592
    real :: r1=0.0,r2=0.0
    !Existen los dobule precision y los integers
    logical :: si=.true., no=.false.
    complex :: c=(1.0,1.0)
    print *,"Número real más grande: ",huge(r1)
    print *,"Número real más pequeño: ",tiny(r1)
    print "(a5,i1)","Real",kind(r1)
end program fortrantut2
!Data types y demás