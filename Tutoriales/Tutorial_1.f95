program fortrantut
    implicit none
    character*20 :: name!Creamos una variable string de 20 elementos llamada name
    character (len=20) :: f_name, l_name
    print *,"What's your name? "
    read *, f_name, l_name! Guardamos lo que leemos en la variable name
    print *,"Hello, ", trim(f_name)," ", trim(l_name) !la función trim borra whitespaces en exceso
end program fortrantut
!El implicit none nos hace declarar todas nuestras variables