! Free Format
program main

write(*,*) "Hello" ! 这也是注解

write(*,*) &       ! 行末 &, 代表下一行和这一行连接
"2**3=", 2**3

wr&
&ite(*,*) "Hello"  ! 行首 &, 代表这一行和上一行连接

end
